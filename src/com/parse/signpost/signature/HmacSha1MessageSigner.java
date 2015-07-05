package com.parse.signpost.signature;

import com.parse.signpost.OAuth;
import com.parse.signpost.exception.OAuthMessageSignerException;
import com.parse.signpost.http.HttpParameters;
import com.parse.signpost.http.HttpRequest;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

public class HmacSha1MessageSigner
  extends OAuthMessageSigner
{
  private static final String MAC_NAME = "HmacSHA1";
  
  public String getSignatureMethod()
  {
    return "HMAC-SHA1";
  }
  
  public String sign(HttpRequest paramHttpRequest, HttpParameters paramHttpParameters)
  {
    try
    {
      SecretKeySpec localSecretKeySpec = new SecretKeySpec((OAuth.percentEncode(getConsumerSecret()) + '&' + OAuth.percentEncode(getTokenSecret())).getBytes("UTF-8"), "HmacSHA1");
      Mac localMac = Mac.getInstance("HmacSHA1");
      localMac.init(localSecretKeySpec);
      paramHttpRequest = new SignatureBaseString(paramHttpRequest, paramHttpParameters).generate();
      OAuth.debugOut("SBS", paramHttpRequest);
      paramHttpRequest = base64Encode(localMac.doFinal(paramHttpRequest.getBytes("UTF-8"))).trim();
      return paramHttpRequest;
    }
    catch (GeneralSecurityException paramHttpRequest)
    {
      throw new OAuthMessageSignerException(paramHttpRequest);
    }
    catch (UnsupportedEncodingException paramHttpRequest)
    {
      throw new OAuthMessageSignerException(paramHttpRequest);
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.signpost.signature.HmacSha1MessageSigner
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */