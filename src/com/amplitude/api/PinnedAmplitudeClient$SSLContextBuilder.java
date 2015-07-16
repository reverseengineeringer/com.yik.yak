package com.amplitude.api;

import KC;
import Kx;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.security.cert.Certificate;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManagerFactory;

public class PinnedAmplitudeClient$SSLContextBuilder
{
  private final List<String> certificateBase64s = new ArrayList();
  
  public SSLContextBuilder addCertificate(String paramString)
  {
    certificateBase64s.add(paramString);
    return this;
  }
  
  public SSLContext build()
  {
    try
    {
      Object localObject1 = CertificateFactory.getInstance("X.509");
      TrustManagerFactory localTrustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
      KeyStore localKeyStore = KeyStore.getInstance(KeyStore.getDefaultType());
      localKeyStore.load(null, null);
      Iterator localIterator = certificateBase64s.iterator();
      int i = 1;
      while (localIterator.hasNext())
      {
        Object localObject2 = (String)localIterator.next();
        localObject2 = (X509Certificate)((CertificateFactory)localObject1).generateCertificate(new Kx().a(KC.b((String)localObject2)).i());
        localKeyStore.setCertificateEntry(Integer.toString(i), (Certificate)localObject2);
        i += 1;
      }
      localTrustManagerFactory.init(localKeyStore);
      localObject1 = SSLContext.getInstance("TLS");
      ((SSLContext)localObject1).init(null, localTrustManagerFactory.getTrustManagers(), null);
      return (SSLContext)localObject1;
    }
    catch (GeneralSecurityException localGeneralSecurityException)
    {
      localGeneralSecurityException.getMessage();
      return null;
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        localIOException.getMessage();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.amplitude.api.PinnedAmplitudeClient.SSLContextBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */