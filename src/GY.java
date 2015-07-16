import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Build.VERSION;
import android.text.TextUtils;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.zip.GZIPOutputStream;
import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.RequestLine;
import org.apache.http.StatusLine;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.entity.StringEntity;
import org.apache.http.message.BasicHttpEntityEnclosingRequest;

public class gy
  implements gP
{
  private final String a;
  private final HttpClient b;
  private final Context c;
  private URL d;
  private int e;
  private int f;
  private int g;
  private String h;
  private String i;
  private gA j;
  private gI k;
  private Set<Integer> l = new HashSet();
  private boolean m = false;
  private long n;
  private long o;
  private gM p;
  private volatile boolean q = false;
  
  gy(HttpClient paramHttpClient, Context paramContext, gM paramgM)
  {
    c = paramContext.getApplicationContext();
    p = paramgM;
    a = a("GoogleAnalytics", "4.0", Build.VERSION.RELEASE, gl.a(Locale.getDefault()), Build.MODEL, Build.ID);
    b = paramHttpClient;
  }
  
  private String a(fZ paramfZ, List<String> paramList, gA paramgA)
  {
    if (paramgA == gA.a)
    {
      if ((paramfZ.a() == null) || (paramfZ.a().length() == 0)) {}
      long l1;
      for (paramList = "";; paramList = paramfZ.a())
      {
        l1 = System.currentTimeMillis();
        if (!TextUtils.isEmpty(paramList)) {
          break;
        }
        return "";
      }
      return ga.a(paramfZ, l1);
    }
    paramfZ = "";
    paramgA = paramList.iterator();
    while (paramgA.hasNext())
    {
      String str = (String)paramgA.next();
      if (str.length() != 0)
      {
        paramList = paramfZ;
        if (paramfZ.length() != 0) {
          paramList = paramfZ + "\n";
        }
        paramfZ = paramList + str;
      }
    }
    return paramfZ;
  }
  
  private URL a(fZ paramfZ)
  {
    if (d != null) {
      return d;
    }
    for (paramfZ = paramfZ.d();; paramfZ = "https://ssl.google-analytics.com/collect") {
      try
      {
        if ("http:".equals(paramfZ))
        {
          paramfZ = "http://www.google-analytics.com/collect";
          paramfZ = new URL(paramfZ);
          return paramfZ;
        }
      }
      catch (MalformedURLException paramfZ)
      {
        gc.a("Error trying to parse the hardcoded host url. This really shouldn't happen.");
        return null;
      }
    }
  }
  
  private HttpEntityEnclosingRequest a(String paramString, boolean paramBoolean)
  {
    if (TextUtils.isEmpty(paramString))
    {
      System.out.println("Empty hit, discarding.");
      return null;
    }
    paramString = h + "?" + paramString;
    if ((paramString.length() < e) && (!paramBoolean)) {
      paramString = new BasicHttpEntityEnclosingRequest("GET", paramString);
    }
    for (;;)
    {
      paramString.addHeader("User-Agent", a);
      return paramString;
      if (paramBoolean) {
        paramString = new BasicHttpEntityEnclosingRequest("POST", i);
      } else {
        paramString = new BasicHttpEntityEnclosingRequest("POST", h);
      }
    }
  }
  
  private void a(gd paramgd, HttpHost paramHttpHost, gA paramgA, gI paramgI)
  {
    paramgd.a("_bs", paramgA.toString());
    paramgd.a("_cs", paramgI.toString());
    paramgA = paramgd.a();
    if (TextUtils.isEmpty(paramgA)) {
      return;
    }
    if (paramHttpHost == null) {}
    for (;;)
    {
      try
      {
        paramHttpHost = new URL("https://ssl.google-analytics.com");
        paramHttpHost = new HttpHost(paramHttpHost.getHost(), paramHttpHost.getPort(), paramHttpHost.getProtocol());
        a(paramgA, paramHttpHost, 1, paramgd, gI.a);
        return;
      }
      catch (MalformedURLException paramgd)
      {
        return;
      }
    }
  }
  
  private void a(HttpEntityEnclosingRequest paramHttpEntityEnclosingRequest)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    Object localObject = paramHttpEntityEnclosingRequest.getAllHeaders();
    int i2 = localObject.length;
    int i1 = 0;
    while (i1 < i2)
    {
      localStringBuffer.append(localObject[i1].toString()).append("\n");
      i1 += 1;
    }
    localStringBuffer.append(paramHttpEntityEnclosingRequest.getRequestLine().toString()).append("\n");
    if (paramHttpEntityEnclosingRequest.getEntity() != null) {}
    try
    {
      paramHttpEntityEnclosingRequest = paramHttpEntityEnclosingRequest.getEntity().getContent();
      if (paramHttpEntityEnclosingRequest != null)
      {
        i1 = paramHttpEntityEnclosingRequest.available();
        if (i1 > 0)
        {
          localObject = new byte[i1];
          paramHttpEntityEnclosingRequest.read((byte[])localObject);
          localStringBuffer.append("POST:\n");
          localStringBuffer.append(new String((byte[])localObject)).append("\n");
        }
      }
    }
    catch (IOException paramHttpEntityEnclosingRequest)
    {
      for (;;)
      {
        gc.d("Error Writing hit to log...");
      }
    }
    gc.b(localStringBuffer.toString());
  }
  
  private boolean a(String paramString, HttpHost paramHttpHost, int paramInt, gd paramgd, gI paramgI)
  {
    boolean bool;
    if (paramInt > 1)
    {
      bool = true;
      if ((paramString.getBytes().length <= g) && (paramString.getBytes().length <= f)) {
        break label79;
      }
      gc.d("Request too long (> " + Math.min(f, g) + " bytes)--not sent");
    }
    label79:
    HttpEntityEnclosingRequest localHttpEntityEnclosingRequest;
    do
    {
      return true;
      bool = false;
      break;
      if (q)
      {
        gc.b("Dry run enabled. Hit not actually sent.");
        return true;
      }
      localHttpEntityEnclosingRequest = a(paramString, bool);
    } while (localHttpEntityEnclosingRequest == null);
    int i1;
    if (localHttpEntityEnclosingRequest.getRequestLine().getMethod().equals("GET"))
    {
      i1 = paramString.getBytes().length;
      paramInt = paramString.getBytes().length;
      localHttpEntityEnclosingRequest.addHeader("Host", paramHttpHost.toHostString());
      if (gc.a()) {
        a(localHttpEntityEnclosingRequest);
      }
    }
    for (;;)
    {
      try
      {
        paramString = b.execute(paramHttpHost, localHttpEntityEnclosingRequest);
        paramgd.a("_td", i1);
        paramgd.a("_cd", paramInt);
        paramInt = paramString.getStatusLine().getStatusCode();
        paramHttpHost = paramString.getEntity();
        if (paramHttpHost != null) {
          paramHttpHost.consumeContent();
        }
        if (paramInt == 200) {
          break;
        }
        if ((bool) && (l.contains(Integer.valueOf(paramInt))))
        {
          gc.b("Falling back to single hit per request mode.");
          m = true;
          n = System.currentTimeMillis();
          return false;
          try
          {
            switch (gz.a[paramgI.ordinal()])
            {
            case 1: 
              paramInt = paramString.getBytes().length;
              localHttpEntityEnclosingRequest.setEntity(new StringEntity(paramString));
              i1 = paramString.getBytes().length;
            }
          }
          catch (UnsupportedEncodingException paramString)
          {
            GZIPOutputStream localGZIPOutputStream;
            gc.a("Encoding error, hit will be discarded");
            return true;
          }
          catch (IOException paramString)
          {
            gc.a("Unexpected IOException: " + paramString.getMessage());
            gc.a("Request will be discarded");
            return true;
          }
          paramgI = new ByteArrayOutputStream();
          localGZIPOutputStream = new GZIPOutputStream(paramgI);
          localGZIPOutputStream.write(paramString.getBytes());
          localGZIPOutputStream.close();
          paramgI = paramgI.toByteArray();
          paramInt = paramgI.length + 0;
          localHttpEntityEnclosingRequest.setEntity(new ByteArrayEntity(paramgI));
          localHttpEntityEnclosingRequest.addHeader("Content-Encoding", "gzip");
          continue;
        }
        gc.d("Bad response: " + paramString.getStatusLine().getStatusCode());
        return true;
      }
      catch (ClientProtocolException paramString)
      {
        gc.d("ClientProtocolException sending hit; discarding hit...");
        return true;
      }
      catch (IOException paramString)
      {
        gc.d("Exception sending hit: " + paramString.getClass().getSimpleName());
        gc.d(paramString.getMessage());
        return false;
      }
    }
  }
  
  int a(List<fZ> paramList, int paramInt)
  {
    int i2;
    if (paramList.isEmpty()) {
      i2 = 0;
    }
    int i1;
    long l1;
    do
    {
      return i2;
      i1 = paramInt;
      if (paramInt > paramList.size()) {
        i1 = paramList.size();
      }
      i2 = i1 - 1;
      l1 = 0L;
      paramInt = i1;
      i1 = i2;
      i2 = paramInt;
    } while (i1 <= 0);
    fZ localfZ1 = (fZ)paramList.get(i1 - 1);
    fZ localfZ2 = (fZ)paramList.get(i1);
    long l2 = localfZ1.c();
    long l3 = localfZ2.c();
    if ((l2 != 0L) && (l3 != 0L) && (l3 - l2 > l1))
    {
      l1 = l3 - l2;
      paramInt = i1;
    }
    for (;;)
    {
      i1 -= 1;
      break;
    }
  }
  
  public int a(List<fZ> paramList, gd paramgd, boolean paramBoolean)
  {
    e = p.a();
    f = p.b();
    g = p.c();
    int i1 = p.d();
    h = p.f();
    i = p.g();
    j = p.h();
    k = p.i();
    l.clear();
    l.addAll(p.j());
    o = p.e();
    if ((!m) && (l.isEmpty()))
    {
      m = true;
      n = System.currentTimeMillis();
    }
    if ((m) && (System.currentTimeMillis() - n > 1000L * o)) {
      m = false;
    }
    gA localgA;
    gI localgI;
    int i5;
    int i3;
    long l3;
    Object localObject3;
    Object localObject4;
    long l1;
    int i2;
    label297:
    Object localObject1;
    label334:
    Object localObject2;
    long l2;
    int i4;
    if (m)
    {
      localgA = gA.a;
      localgI = gI.a;
      i5 = 0;
      i3 = Math.min(paramList.size(), i1);
      paramgd.a("_hr", paramList.size());
      l3 = System.currentTimeMillis();
      localObject3 = new ArrayList();
      localObject4 = new ArrayList();
      l1 = 0L;
      if (localgA == gA.a) {
        break label1085;
      }
      Iterator localIterator = paramList.iterator();
      i2 = 0;
      if (!localIterator.hasNext()) {
        break label1079;
      }
      localObject1 = (fZ)localIterator.next();
      if (!TextUtils.isEmpty(((fZ)localObject1).a())) {
        break label508;
      }
      localObject1 = "";
      localObject2 = localObject1;
      if (((String)localObject1).getBytes().length > f) {
        localObject2 = "";
      }
      ((List)localObject3).add(localObject2);
      l2 = l1;
      if (!TextUtils.isEmpty((CharSequence)localObject2))
      {
        i4 = ((String)localObject2).getBytes().length;
        if (i2 != 0) {
          break label520;
        }
        i1 = 0;
        label393:
        l2 = l1 + (i1 + i4);
      }
      ((List)localObject4).add(Long.valueOf(l2));
      if (l2 > g) {
        break label1072;
      }
      i1 = i2 + 1;
      label434:
      if (i1 != i3) {
        break label526;
      }
      i3 = 1;
      l1 = l2;
      i2 = i1;
    }
    for (;;)
    {
      if ((i2 > 1) && (((Long)((List)localObject4).get(i2 - 1)).longValue() > g))
      {
        i2 -= 1;
        continue;
        localgA = j;
        localgI = k;
        break;
        label508:
        localObject1 = ga.a((fZ)localObject1, l3);
        break label334;
        label520:
        i1 = 1;
        break label393;
        label526:
        i2 = i1;
        l1 = l2;
        break label297;
      }
      if (l1 > g) {
        switch (gz.b[localgA.ordinal()])
        {
        default: 
          gc.d("Unexpected batching strategy encountered; sending a single hit.");
          localObject1 = (String)((List)localObject3).get(0);
          ((List)localObject3).clear();
          ((List)localObject3).add(localObject1);
          i1 = 1;
          if (i1 >= ((List)localObject3).size()) {
            break;
          }
        }
      }
      for (localObject1 = ((List)localObject3).subList(0, i1);; localObject1 = localObject3)
      {
        i1 = 0;
        localObject2 = null;
        i4 = 0;
        i2 = i5;
        for (;;)
        {
          if (i4 < i3)
          {
            localObject3 = (fZ)paramList.get(i4);
            localObject4 = a((fZ)localObject3);
            i5 = Math.max(1, ((List)localObject1).size());
            if (localObject4 == null)
            {
              gc.d("No destination: discarding hit.");
              i1 += i5;
              i2 += i5;
              i4 += 1;
              continue;
              i4 = ((List)localObject3).size() / 2;
              i1 = i4;
              if (i2 > i4) {
                break;
              }
              i1 = i2;
              break;
              i1 = a(paramList, i2);
              break;
              i1 = b(paramList, i2);
              break;
              if (l1 < g * 2)
              {
                i1 = ((List)localObject4).size() - 1;
                while ((i1 > 0) && (((Long)((List)localObject4).get(i1)).longValue() > l1 / 2L)) {
                  i1 -= 1;
                }
                break;
              }
              i1 = i2;
              break;
              i1 = i2;
              break;
            }
            localObject2 = new HttpHost(((URL)localObject4).getHost(), ((URL)localObject4).getPort(), ((URL)localObject4).getProtocol());
            if (!a(a((fZ)localObject3, (List)localObject1, localgA), (HttpHost)localObject2, i5, paramgd, localgI))
            {
              paramgd.a("_de", 1);
              paramgd.a("_hd", i1);
              paramgd.a("_hs", i2);
              a(paramgd, (HttpHost)localObject2, localgA, localgI);
              return i2;
            }
            localObject3 = ((List)localObject1).iterator();
            label973:
            if (((Iterator)localObject3).hasNext())
            {
              if (!TextUtils.isEmpty((String)((Iterator)localObject3).next())) {
                break label1062;
              }
              i1 += 1;
            }
          }
        }
        label1062:
        for (;;)
        {
          break label973;
          paramgd.a("_rs", 1);
          i2 += i5;
          break;
          paramgd.a("_hd", i1);
          paramgd.a("_hs", i2);
          if (paramBoolean) {
            a(paramgd, (HttpHost)localObject2, localgA, localgI);
          }
          return i2;
        }
      }
      label1072:
      i1 = i2;
      break label434;
      label1079:
      i3 = 1;
      continue;
      label1085:
      i2 = 0;
    }
  }
  
  String a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6)
  {
    return String.format("%s/%s (Linux; U; Android %s; %s; %s Build/%s)", new Object[] { paramString1, paramString2, paramString3, paramString4, paramString5, paramString6 });
  }
  
  public void a(String paramString)
  {
    try
    {
      d = new URL(paramString);
      return;
    }
    catch (MalformedURLException paramString)
    {
      d = null;
    }
  }
  
  public void a(boolean paramBoolean)
  {
    q = paramBoolean;
  }
  
  public boolean a()
  {
    NetworkInfo localNetworkInfo = ((ConnectivityManager)c.getSystemService("connectivity")).getActiveNetworkInfo();
    if ((localNetworkInfo == null) || (!localNetworkInfo.isConnected()))
    {
      gc.c("...no network connectivity");
      return false;
    }
    return true;
  }
  
  int b(List<fZ> paramList, int paramInt)
  {
    int i1;
    if (paramList.isEmpty())
    {
      i1 = 0;
      return i1;
    }
    int i2 = paramInt - 1;
    for (;;)
    {
      i1 = paramInt;
      if (i2 <= 0) {
        break;
      }
      String str = ((fZ)paramList.get(i2)).a();
      if (!TextUtils.isEmpty(str))
      {
        if (str.contains("sc=start")) {
          return i2;
        }
        if (str.contains("sc=end")) {
          return i2 + 1;
        }
      }
      i2 -= 1;
    }
  }
}

/* Location:
 * Qualified Name:     gy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */