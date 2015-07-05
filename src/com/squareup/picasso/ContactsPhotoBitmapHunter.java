package com.squareup.picasso;

import android.content.ContentResolver;
import android.content.Context;
import android.content.UriMatcher;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.net.Uri;
import android.os.Build.VERSION;
import android.provider.ContactsContract.Contacts;
import java.io.InputStream;

class ContactsPhotoBitmapHunter
  extends BitmapHunter
{
  private static final int ID_CONTACT = 3;
  private static final int ID_DISPLAY_PHOTO = 4;
  private static final int ID_LOOKUP = 1;
  private static final int ID_THUMBNAIL = 2;
  private static final UriMatcher matcher = new UriMatcher(-1);
  final Context context;
  
  static
  {
    matcher.addURI("com.android.contacts", "contacts/lookup/*/#", 1);
    matcher.addURI("com.android.contacts", "contacts/lookup/*", 1);
    matcher.addURI("com.android.contacts", "contacts/#/photo", 2);
    matcher.addURI("com.android.contacts", "contacts/#", 3);
    matcher.addURI("com.android.contacts", "display_photo/#", 4);
  }
  
  ContactsPhotoBitmapHunter(Context paramContext, Picasso paramPicasso, Dispatcher paramDispatcher, Cache paramCache, Stats paramStats, Action paramAction)
  {
    super(paramPicasso, paramDispatcher, paramCache, paramStats, paramAction);
    context = paramContext;
  }
  
  private Bitmap decodeStream(InputStream paramInputStream, Request paramRequest)
  {
    if (paramInputStream == null) {
      return null;
    }
    BitmapFactory.Options localOptions = createBitmapOptions(paramRequest);
    InputStream localInputStream;
    if (requiresInSampleSize(localOptions)) {
      localInputStream = getInputStream();
    }
    try
    {
      BitmapFactory.decodeStream(localInputStream, null, localOptions);
      Utils.closeQuietly(localInputStream);
      calculateInSampleSize(targetWidth, targetHeight, localOptions);
      return BitmapFactory.decodeStream(paramInputStream, null, localOptions);
    }
    finally
    {
      Utils.closeQuietly(localInputStream);
    }
  }
  
  private InputStream getInputStream()
  {
    ContentResolver localContentResolver = context.getContentResolver();
    Uri localUri2 = getDatauri;
    Uri localUri1 = localUri2;
    switch (matcher.match(localUri2))
    {
    default: 
      throw new IllegalStateException("Invalid uri: " + localUri2);
    case 1: 
      localUri2 = ContactsContract.Contacts.lookupContact(localContentResolver, localUri2);
      localUri1 = localUri2;
      if (localUri2 == null) {
        return null;
      }
    case 3: 
      if (Build.VERSION.SDK_INT < 14) {
        return ContactsContract.Contacts.openContactPhotoInputStream(localContentResolver, localUri1);
      }
      return ContactsPhotoBitmapHunter.ContactPhotoStreamIcs.get(localContentResolver, localUri1);
    }
    return localContentResolver.openInputStream(localUri2);
  }
  
  Bitmap decode(Request paramRequest)
  {
    Object localObject = null;
    try
    {
      InputStream localInputStream = getInputStream();
      localObject = localInputStream;
      paramRequest = decodeStream(localInputStream, paramRequest);
      Utils.closeQuietly(localInputStream);
      return paramRequest;
    }
    finally
    {
      Utils.closeQuietly((InputStream)localObject);
    }
  }
  
  Picasso.LoadedFrom getLoadedFrom()
  {
    return Picasso.LoadedFrom.DISK;
  }
}

/* Location:
 * Qualified Name:     com.squareup.picasso.ContactsPhotoBitmapHunter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */