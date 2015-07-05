package com.yik.yak.data.http.request;

import android.content.Context;
import android.content.res.Resources;
import com.yik.yak.YikYak;
import zQ;

public class DownloadConfigurationSettings
  extends BaseRequest
{
  public MethodType getMethodType()
  {
    return MethodType.GET;
  }
  
  public String getUrl()
  {
    if (zQ.b()) {
      return YikYak.d().getResources().getString(2131230927).replace("-android", "-android-test");
    }
    return YikYak.d().getResources().getString(2131230927);
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.data.http.request.DownloadConfigurationSettings
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */