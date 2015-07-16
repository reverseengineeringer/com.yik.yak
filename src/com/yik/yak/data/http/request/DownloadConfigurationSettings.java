package com.yik.yak.data.http.request;

import AD;
import AM;
import Hi;
import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.net.Uri.Builder;
import com.yik.yak.YikYak;
import com.yik.yak.data.models.Environment;
import com.yik.yak.data.models.YakkerLocation;

public class DownloadConfigurationSettings
  extends BaseRequest
{
  private String addParametersToUrl(String paramString)
  {
    AD localAD = AD.a();
    return Uri.parse(paramString).buildUpon().appendQueryParameter("userID", localAD.b()).appendQueryParameter("lat", localAD.g().a()).appendQueryParameter("lng", localAD.g().b()).build().toString();
  }
  
  public MethodType getMethodType()
  {
    return MethodType.GET;
  }
  
  public String getUrl()
  {
    Environment localEnvironment = AM.a().c();
    if ((localEnvironment == null) || (Hi.a(localEnvironment.getConfigurationEndpoint()))) {
      return YikYak.d().getResources().getString(2131230950);
    }
    return addParametersToUrl(localEnvironment.getConfigurationEndpoint());
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.data.http.request.DownloadConfigurationSettings
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */