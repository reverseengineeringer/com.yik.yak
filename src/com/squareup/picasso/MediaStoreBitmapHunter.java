package com.squareup.picasso;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory.Options;
import android.provider.MediaStore.Images.Thumbnails;
import android.provider.MediaStore.Video.Thumbnails;

class MediaStoreBitmapHunter
  extends ContentStreamBitmapHunter
{
  private static final String[] CONTENT_ORIENTATION = { "orientation" };
  
  MediaStoreBitmapHunter(Context paramContext, Picasso paramPicasso, Dispatcher paramDispatcher, Cache paramCache, Stats paramStats, Action paramAction)
  {
    super(paramContext, paramPicasso, paramDispatcher, paramCache, paramStats, paramAction);
  }
  
  /* Error */
  static int getExifOrientation(ContentResolver paramContentResolver, android.net.Uri paramUri)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: getstatic 14	com/squareup/picasso/MediaStoreBitmapHunter:CONTENT_ORIENTATION	[Ljava/lang/String;
    //   5: aconst_null
    //   6: aconst_null
    //   7: aconst_null
    //   8: invokevirtual 29	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   11: astore_0
    //   12: aload_0
    //   13: ifnull +16 -> 29
    //   16: aload_0
    //   17: invokeinterface 35 1 0
    //   22: istore 4
    //   24: iload 4
    //   26: ifne +17 -> 43
    //   29: aload_0
    //   30: ifnull +9 -> 39
    //   33: aload_0
    //   34: invokeinterface 38 1 0
    //   39: iconst_0
    //   40: istore_2
    //   41: iload_2
    //   42: ireturn
    //   43: aload_0
    //   44: iconst_0
    //   45: invokeinterface 42 2 0
    //   50: istore_3
    //   51: iload_3
    //   52: istore_2
    //   53: aload_0
    //   54: ifnull -13 -> 41
    //   57: aload_0
    //   58: invokeinterface 38 1 0
    //   63: iload_3
    //   64: ireturn
    //   65: astore_0
    //   66: aconst_null
    //   67: astore_0
    //   68: aload_0
    //   69: ifnull +9 -> 78
    //   72: aload_0
    //   73: invokeinterface 38 1 0
    //   78: iconst_0
    //   79: ireturn
    //   80: astore_1
    //   81: aconst_null
    //   82: astore_0
    //   83: aload_0
    //   84: ifnull +9 -> 93
    //   87: aload_0
    //   88: invokeinterface 38 1 0
    //   93: aload_1
    //   94: athrow
    //   95: astore_1
    //   96: goto -13 -> 83
    //   99: astore_1
    //   100: goto -32 -> 68
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	103	0	paramContentResolver	ContentResolver
    //   0	103	1	paramUri	android.net.Uri
    //   40	13	2	i	int
    //   50	14	3	j	int
    //   22	3	4	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   0	12	65	java/lang/RuntimeException
    //   0	12	80	finally
    //   16	24	95	finally
    //   43	51	95	finally
    //   16	24	99	java/lang/RuntimeException
    //   43	51	99	java/lang/RuntimeException
  }
  
  static MediaStoreBitmapHunter.PicassoKind getPicassoKind(int paramInt1, int paramInt2)
  {
    if ((paramInt1 <= MICROwidth) && (paramInt2 <= MICROheight)) {
      return MediaStoreBitmapHunter.PicassoKind.MICRO;
    }
    if ((paramInt1 <= MINIwidth) && (paramInt2 <= MINIheight)) {
      return MediaStoreBitmapHunter.PicassoKind.MINI;
    }
    return MediaStoreBitmapHunter.PicassoKind.FULL;
  }
  
  Bitmap decode(Request paramRequest)
  {
    int j = 1;
    Object localObject1 = context.getContentResolver();
    setExifRotation(getExifOrientation((ContentResolver)localObject1, uri));
    Object localObject2 = ((ContentResolver)localObject1).getType(uri);
    int i;
    if ((localObject2 != null) && (((String)localObject2).startsWith("video/"))) {
      i = 1;
    }
    long l;
    BitmapFactory.Options localOptions;
    while (paramRequest.hasSize())
    {
      localObject2 = getPicassoKind(targetWidth, targetHeight);
      if ((i == 0) && (localObject2 == MediaStoreBitmapHunter.PicassoKind.FULL))
      {
        localObject2 = super.decode(paramRequest);
        return (Bitmap)localObject2;
        i = 0;
      }
      else
      {
        l = ContentUris.parseId(uri);
        localOptions = createBitmapOptions(paramRequest);
        inJustDecodeBounds = true;
        calculateInSampleSize(targetWidth, targetHeight, width, height, localOptions);
        if (i == 0) {
          break label193;
        }
        if (localObject2 != MediaStoreBitmapHunter.PicassoKind.FULL) {
          break label184;
        }
        i = j;
      }
    }
    label157:
    label184:
    label193:
    for (localObject1 = MediaStore.Video.Thumbnails.getThumbnail((ContentResolver)localObject1, l, i, localOptions);; localObject1 = MediaStore.Images.Thumbnails.getThumbnail((ContentResolver)localObject1, l, androidKind, localOptions))
    {
      localObject2 = localObject1;
      if (localObject1 != null) {
        break;
      }
      return super.decode(paramRequest);
      i = androidKind;
      break label157;
    }
  }
}

/* Location:
 * Qualified Name:     com.squareup.picasso.MediaStoreBitmapHunter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */