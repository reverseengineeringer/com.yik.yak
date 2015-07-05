package com.facebook.internal;

import android.content.Context;
import android.net.Uri.Builder;
import java.net.URI;

public class ImageRequest
{
  private static final String HEIGHT_PARAM = "height";
  private static final String MIGRATION_PARAM = "migration_overrides";
  private static final String MIGRATION_VALUE = "{october_2012:true}";
  private static final String PROFILEPIC_URL_FORMAT = "https://graph.facebook.com/%s/picture";
  public static final int UNSPECIFIED_DIMENSION = 0;
  private static final String WIDTH_PARAM = "width";
  private boolean allowCachedRedirects;
  private ImageRequest.Callback callback;
  private Object callerTag;
  private Context context;
  private URI imageUri;
  
  private ImageRequest(ImageRequest.Builder paramBuilder)
  {
    context = ImageRequest.Builder.access$000(paramBuilder);
    imageUri = ImageRequest.Builder.access$100(paramBuilder);
    callback = ImageRequest.Builder.access$200(paramBuilder);
    allowCachedRedirects = ImageRequest.Builder.access$300(paramBuilder);
    if (ImageRequest.Builder.access$400(paramBuilder) == null) {}
    for (paramBuilder = new Object();; paramBuilder = ImageRequest.Builder.access$400(paramBuilder))
    {
      callerTag = paramBuilder;
      return;
    }
  }
  
  public static URI getProfilePictureUrl(String paramString, int paramInt1, int paramInt2)
  {
    Validate.notNullOrEmpty(paramString, "userId");
    paramInt1 = Math.max(paramInt1, 0);
    paramInt2 = Math.max(paramInt2, 0);
    if ((paramInt1 == 0) && (paramInt2 == 0)) {
      throw new IllegalArgumentException("Either width or height must be greater than 0");
    }
    paramString = new Uri.Builder().encodedPath(String.format("https://graph.facebook.com/%s/picture", new Object[] { paramString }));
    if (paramInt2 != 0) {
      paramString.appendQueryParameter("height", String.valueOf(paramInt2));
    }
    if (paramInt1 != 0) {
      paramString.appendQueryParameter("width", String.valueOf(paramInt1));
    }
    paramString.appendQueryParameter("migration_overrides", "{october_2012:true}");
    return new URI(paramString.toString());
  }
  
  public ImageRequest.Callback getCallback()
  {
    return callback;
  }
  
  public Object getCallerTag()
  {
    return callerTag;
  }
  
  public Context getContext()
  {
    return context;
  }
  
  public URI getImageUri()
  {
    return imageUri;
  }
  
  public boolean isCachedRedirectAllowed()
  {
    return allowCachedRedirects;
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.ImageRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */