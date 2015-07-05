package com.parse.signpost.signature;

import com.parse.signpost.OAuth;
import com.parse.signpost.exception.OAuthMessageSignerException;
import com.parse.signpost.http.HttpParameters;
import com.parse.signpost.http.HttpRequest;
import java.net.URI;
import java.util.Iterator;
import java.util.Set;

public class SignatureBaseString
{
  private HttpRequest request;
  private HttpParameters requestParameters;
  
  public SignatureBaseString(HttpRequest paramHttpRequest, HttpParameters paramHttpParameters)
  {
    request = paramHttpRequest;
    requestParameters = paramHttpParameters;
  }
  
  public String generate()
  {
    try
    {
      String str1 = normalizeRequestUrl();
      String str2 = normalizeRequestParameters();
      str1 = request.getMethod() + '&' + OAuth.percentEncode(str1) + '&' + OAuth.percentEncode(str2);
      return str1;
    }
    catch (Exception localException)
    {
      throw new OAuthMessageSignerException(localException);
    }
  }
  
  public String normalizeRequestParameters()
  {
    if (requestParameters == null) {
      return "";
    }
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = requestParameters.keySet().iterator();
    int i = 0;
    if (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if (("oauth_signature".equals(str)) || ("realm".equals(str))) {}
      for (;;)
      {
        i += 1;
        break;
        if (i > 0) {
          localStringBuilder.append("&");
        }
        localStringBuilder.append(requestParameters.getAsQueryString(str));
      }
    }
    return localStringBuilder.toString();
  }
  
  public String normalizeRequestUrl()
  {
    Object localObject3 = new URI(request.getRequestUrl());
    String str = ((URI)localObject3).getScheme().toLowerCase();
    Object localObject2 = ((URI)localObject3).getAuthority().toLowerCase();
    if (((str.equals("http")) && (((URI)localObject3).getPort() == 80)) || ((str.equals("https")) && (((URI)localObject3).getPort() == 443))) {}
    for (int i = 1;; i = 0)
    {
      Object localObject1 = localObject2;
      if (i != 0)
      {
        i = ((String)localObject2).lastIndexOf(":");
        localObject1 = localObject2;
        if (i >= 0) {
          localObject1 = ((String)localObject2).substring(0, i);
        }
      }
      localObject3 = ((URI)localObject3).getRawPath();
      if (localObject3 != null)
      {
        localObject2 = localObject3;
        if (((String)localObject3).length() > 0) {}
      }
      else
      {
        localObject2 = "/";
      }
      return str + "://" + (String)localObject1 + (String)localObject2;
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.signpost.signature.SignatureBaseString
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */