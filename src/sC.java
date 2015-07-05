import android.os.Build;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.DisplayMetrics;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.mixpanel.android.mpmetrics.MixpanelAPI;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONException;
import org.json.JSONObject;

class sc
  extends Handler
{
  private sE b = null;
  private final sk c;
  private final long d;
  private final boolean e;
  
  public sc(sb paramsb, Looper paramLooper)
  {
    super(paramLooper);
    c = new sk(rZ.a(a), rZ.b(a));
    e = rZ.b(a).d();
    d = rZ.b(a).b();
    sb.a(paramsb, new tl(rZ.a(a)));
  }
  
  private JSONObject a()
  {
    localJSONObject = new JSONObject();
    localJSONObject.put("mp_lib", "android");
    localJSONObject.put("$lib_version", "4.5.3");
    localJSONObject.put("$os", "Android");
    Object localObject;
    if (Build.VERSION.RELEASE == null)
    {
      localObject = "UNKNOWN";
      localJSONObject.put("$os_version", localObject);
      if (Build.MANUFACTURER != null) {
        break label401;
      }
      localObject = "UNKNOWN";
      label61:
      localJSONObject.put("$manufacturer", localObject);
      if (Build.BRAND != null) {
        break label408;
      }
      localObject = "UNKNOWN";
      label78:
      localJSONObject.put("$brand", localObject);
      if (Build.MODEL != null) {
        break label415;
      }
      localObject = "UNKNOWN";
      label95:
      localJSONObject.put("$model", localObject);
    }
    for (;;)
    {
      try
      {
        int i = GooglePlayServicesUtil.isGooglePlayServicesAvailable(rZ.a(a.a));
        switch (i)
        {
        }
      }
      catch (RuntimeException localRuntimeException)
      {
        localJSONObject.put("$google_play_services", "not configured");
        continue;
      }
      catch (NoClassDefFoundError localNoClassDefFoundError)
      {
        label401:
        label408:
        label415:
        localJSONObject.put("$google_play_services", "not included");
        continue;
        localJSONObject.put("$google_play_services", "missing");
        continue;
        localJSONObject.put("$google_play_services", "out of date");
        continue;
        localJSONObject.put("$google_play_services", "disabled");
        continue;
        localJSONObject.put("$google_play_services", "invalid");
        continue;
      }
      localObject = sb.c(a).d();
      localJSONObject.put("$screen_dpi", densityDpi);
      localJSONObject.put("$screen_height", heightPixels);
      localJSONObject.put("$screen_width", widthPixels);
      localObject = sb.c(a).a();
      if (localObject != null) {
        localJSONObject.put("$app_version", localObject);
      }
      localObject = Boolean.valueOf(sb.c(a).b());
      if (localObject != null) {
        localJSONObject.put("$has_nfc", ((Boolean)localObject).booleanValue());
      }
      localObject = Boolean.valueOf(sb.c(a).c());
      if (localObject != null) {
        localJSONObject.put("$has_telephone", ((Boolean)localObject).booleanValue());
      }
      localObject = sb.c(a).e();
      if (localObject != null) {
        localJSONObject.put("$carrier", localObject);
      }
      localObject = sb.c(a).f();
      if (localObject != null) {
        localJSONObject.put("$wifi", ((Boolean)localObject).booleanValue());
      }
      localObject = sb.c(a).g();
      if (localObject != null) {
        localJSONObject.put("$bluetooth_enabled", localObject);
      }
      localObject = sb.c(a).h();
      if (localObject != null) {
        localJSONObject.put("$bluetooth_version", localObject);
      }
      return localJSONObject;
      localObject = Build.VERSION.RELEASE;
      break;
      localObject = Build.MANUFACTURER;
      break label61;
      localObject = Build.BRAND;
      break label78;
      localObject = Build.MODEL;
      break label95;
      localJSONObject.put("$google_play_services", "available");
    }
  }
  
  private JSONObject a(sa paramsa)
  {
    JSONObject localJSONObject1 = new JSONObject();
    JSONObject localJSONObject2 = paramsa.b();
    JSONObject localJSONObject3 = a();
    localJSONObject3.put("token", paramsa.c());
    if (localJSONObject2 != null)
    {
      Iterator localIterator = localJSONObject2.keys();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        localJSONObject3.put(str, localJSONObject2.get(str));
      }
    }
    localJSONObject1.put("event", paramsa.a());
    localJSONObject1.put("properties", localJSONObject3);
    return localJSONObject1;
  }
  
  private void a(String paramString)
  {
    try
    {
      int i = GooglePlayServicesUtil.isGooglePlayServicesAvailable(rZ.a(a.a));
      if (i != 0) {
        return;
      }
      paramString = hG.a(rZ.a(a.a)).a(new String[] { paramString });
      MixpanelAPI.allInstances(new sd(this, paramString));
      return;
    }
    catch (NoClassDefFoundError paramString) {}catch (IOException paramString) {}catch (RuntimeException paramString) {}
  }
  
  private void a(sE paramsE)
  {
    if (!a.a.b().a(rZ.a(a.a)))
    {
      rZ.a(a.a, "Not flushing data to Mixpanel because the device is not connected to the internet.");
      return;
    }
    rZ.a(a.a, "Sending records to Mixpanel");
    if (e)
    {
      a(paramsE, sG.a, new String[] { rZ.b(a.a).i() });
      a(paramsE, sG.b, new String[] { rZ.b(a.a).j() });
      return;
    }
    a(paramsE, sG.a, new String[] { rZ.b(a.a).i(), rZ.b(a.a).l() });
    a(paramsE, sG.b, new String[] { rZ.b(a.a).j(), rZ.b(a.a).m() });
  }
  
  private void a(sE paramsE, sG paramsG, String[] paramArrayOfString)
  {
    tb localtb = a.a.b();
    Object localObject1 = paramsE.a(paramsG);
    String str1;
    String str2;
    ArrayList localArrayList;
    int j;
    int i;
    if (localObject1 != null)
    {
      str1 = localObject1[0];
      str2 = localObject1[1];
      localObject1 = tL.a(str2);
      localArrayList = new ArrayList(1);
      localArrayList.add(new BasicNameValuePair("data", (String)localObject1));
      if (sD.a) {
        localArrayList.add(new BasicNameValuePair("verbose", "1"));
      }
      int m = paramArrayOfString.length;
      j = 0;
      i = 1;
      if (j >= m) {
        break label481;
      }
      localObject1 = paramArrayOfString[j];
    }
    label481:
    for (;;)
    {
      try
      {
        Object localObject2 = localtb.a((String)localObject1, localArrayList);
        int k = 1;
        i = 1;
        if (localObject2 == null) {}
        try
        {
          rZ.a(a.a, "Response was null, unexpected failure posting to " + (String)localObject1 + ".");
          if (i != 0)
          {
            rZ.a(a.a, "Not retrying this batch of events, deleting them from DB.");
            paramsE.a(str1, paramsG);
            return;
          }
        }
        catch (OutOfMemoryError paramArrayOfString)
        {
          try
          {
            localObject2 = new String((byte[])localObject2, "UTF-8");
            rZ.a(a.a, "Successfully posted to " + (String)localObject1 + ": \n" + str2);
            rZ.a(a.a, "Response was " + (String)localObject2);
          }
          catch (UnsupportedEncodingException localUnsupportedEncodingException)
          {
            throw new RuntimeException("UTF not supported on this platform?", localUnsupportedEncodingException);
          }
          paramArrayOfString = paramArrayOfString;
          i = 1;
          new StringBuilder().append("Out of memory when posting to ").append((String)localObject1).append(".").toString();
        }
        catch (MalformedURLException paramArrayOfString)
        {
          i = k;
          new StringBuilder().append("Cannot interpret ").append((String)localObject1).append(" as a URL.").toString();
        }
      }
      catch (IOException localIOException)
      {
        rZ.a(a.a, "Cannot post message to " + (String)localObject1 + ".", localIOException);
        j += 1;
        i = 0;
        break;
        rZ.a(a.a, "Retrying this batch of events.");
        if (!hasMessages(rZ.e()))
        {
          sendEmptyMessageDelayed(rZ.e(), d);
          return;
        }
      }
      catch (MalformedURLException paramArrayOfString) {}catch (OutOfMemoryError paramArrayOfString) {}
    }
  }
  
  public void handleMessage(Message arg1)
  {
    if (b == null)
    {
      b = a.a.b(rZ.a(a.a));
      b.a(System.currentTimeMillis() - rZ.b(a.a).c(), sG.a);
      b.a(System.currentTimeMillis() - rZ.b(a.a).c(), sG.b);
    }
    int i = -1;
    try
    {
      if (what == rZ.c())
      {
        ??? = (JSONObject)obj;
        rZ.a(a.a, "Queuing people record for sending later");
        rZ.a(a.a, "    " + ???.toString());
        i = b.a(???, sG.b);
      }
      for (;;)
      {
        if (i < rZ.b(a.a).a()) {
          break label620;
        }
        rZ.a(a.a, "Flushing queue due to bulk upload limit");
        sb.a(a);
        a(b);
        c.a(a.a.b());
        return;
        if (what == rZ.d())
        {
          ??? = (sa)obj;
          try
          {
            JSONObject localJSONObject = a(???);
            rZ.a(a.a, "Queuing event for sending later");
            rZ.a(a.a, "    " + localJSONObject.toString());
            i = b.a(localJSONObject, sG.a);
          }
          catch (JSONException localJSONException)
          {
            for (;;)
            {
              new StringBuilder().append("Exception tracking event ").append(???.a()).toString();
              i = -1;
            }
          }
        }
        else
        {
          if (what != rZ.e()) {
            break;
          }
          rZ.a(a.a, "Flushing queue due to scheduled or forced flush");
          sb.a(a);
          a(b);
          c.a(a.a.b());
        }
      }
    }
    catch (RuntimeException ???)
    {
      for (;;)
      {
        synchronized (sb.b(a))
        {
          sb.a(a, null);
        }
        try
        {
          Looper.myLooper().quit();
          return;
          localObject1 = finally;
          throw ((Throwable)localObject1);
          if (what == rZ.f())
          {
            rZ.a(a.a, "Installing a check for surveys and in app notifications");
            ??? = (sn)obj;
            c.a(???);
            c.a(a.a.b());
          }
          else if (what == rZ.g())
          {
            a((String)obj);
          }
          else
          {
            if (what == rZ.h())
            {
              new StringBuilder().append("Worker received a hard kill. Dumping all events and force-killing. Thread id ").append(Thread.currentThread().getId()).toString();
              synchronized (sb.b(a))
              {
                b.a();
                sb.a(a, null);
                Looper.myLooper().quit();
              }
            }
            new StringBuilder().append("Unexpected message received by Mixpanel worker: ").append(???).toString();
            continue;
            label620:
            if ((i > 0) && (!hasMessages(rZ.e())))
            {
              rZ.a(a.a, "Queue depth " + i + " - Adding flush in " + d);
              if (d >= 0L)
              {
                sendEmptyMessageDelayed(rZ.e(), d);
                return;
              }
            }
          }
        }
        catch (Exception localException)
        {
          for (;;) {}
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     sc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */