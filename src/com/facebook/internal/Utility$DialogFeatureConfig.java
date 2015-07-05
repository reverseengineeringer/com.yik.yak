package com.facebook.internal;

import android.net.Uri;
import org.json.JSONArray;
import org.json.JSONObject;

public class Utility$DialogFeatureConfig
{
  private String dialogName;
  private Uri fallbackUrl;
  private String featureName;
  private int[] featureVersionSpec;
  
  private Utility$DialogFeatureConfig(String paramString1, String paramString2, Uri paramUri, int[] paramArrayOfInt)
  {
    dialogName = paramString1;
    featureName = paramString2;
    fallbackUrl = paramUri;
    featureVersionSpec = paramArrayOfInt;
  }
  
  private static DialogFeatureConfig parseDialogConfig(JSONObject paramJSONObject)
  {
    Uri localUri = null;
    String str1 = paramJSONObject.optString("name");
    if (Utility.isNullOrEmpty(str1)) {}
    Object localObject;
    do
    {
      do
      {
        return null;
        localObject = str1.split("\\|");
      } while (localObject.length != 2);
      str1 = localObject[0];
      localObject = localObject[1];
    } while ((Utility.isNullOrEmpty(str1)) || (Utility.isNullOrEmpty((String)localObject)));
    String str2 = paramJSONObject.optString("url");
    if (!Utility.isNullOrEmpty(str2)) {
      localUri = Uri.parse(str2);
    }
    return new DialogFeatureConfig(str1, (String)localObject, localUri, parseVersionSpec(paramJSONObject.optJSONArray("versions")));
  }
  
  private static int[] parseVersionSpec(JSONArray paramJSONArray)
  {
    int[] arrayOfInt = null;
    if (paramJSONArray != null)
    {
      int m = paramJSONArray.length();
      arrayOfInt = new int[m];
      int j = 0;
      for (;;)
      {
        if (j < m)
        {
          int k = paramJSONArray.optInt(j, -1);
          int i = k;
          String str;
          if (k == -1)
          {
            str = paramJSONArray.optString(j);
            i = k;
            if (Utility.isNullOrEmpty(str)) {}
          }
          try
          {
            i = Integer.parseInt(str);
            arrayOfInt[j] = i;
            j += 1;
          }
          catch (NumberFormatException localNumberFormatException)
          {
            for (;;)
            {
              Utility.logd("FacebookSDK", localNumberFormatException);
              i = -1;
            }
          }
        }
      }
    }
    return arrayOfInt;
  }
  
  public String getDialogName()
  {
    return dialogName;
  }
  
  public Uri getFallbackUrl()
  {
    return fallbackUrl;
  }
  
  public String getFeatureName()
  {
    return featureName;
  }
  
  public int[] getVersionSpec()
  {
    return featureVersionSpec;
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.Utility.DialogFeatureConfig
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */