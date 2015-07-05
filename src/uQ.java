import android.annotation.TargetApi;
import android.app.Application;
import android.content.Context;
import android.os.HandlerThread;
import android.os.Message;
import android.util.Pair;
import com.mixpanel.android.mpmetrics.MixpanelAPI;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import org.json.JSONArray;
import org.json.JSONObject;

@TargetApi(16)
public class uq
  implements un, up
{
  private final List<Pair<String, JSONObject>> a;
  private final List<Pair<String, JSONObject>> b;
  private final List<Pair<String, JSONObject>> c;
  private final List<Pair<String, JSONObject>> d;
  private final sD e;
  private final tP f;
  private final SSLSocketFactory g;
  private final tU h;
  private final tX i;
  private final tm j;
  private final Map<String, String> k;
  private final uv l;
  
  public uq(Context paramContext, String paramString, MixpanelAPI paramMixpanelAPI)
  {
    e = sD.a(paramContext);
    a = new ArrayList();
    b = new ArrayList();
    c = new ArrayList();
    d = new ArrayList();
    String str = e.q();
    Object localObject = str;
    if (str == null) {
      localObject = paramContext.getPackageName();
    }
    h = new tU(new ta((String)localObject, paramContext));
    i = new tX();
    j = new tm();
    k = paramMixpanelAPI.getDeviceInfo();
    ((Application)paramContext.getApplicationContext()).registerActivityLifecycleCallbacks(new uu(this));
    localObject = new HandlerThread(uq.class.getCanonicalName());
    ((HandlerThread)localObject).setPriority(10);
    ((HandlerThread)localObject).start();
    l = new uv(this, paramContext, paramString, ((HandlerThread)localObject).getLooper());
    l.sendMessage(l.obtainMessage(0));
    f = new tP(paramMixpanelAPI, l);
    try
    {
      paramContext = SSLContext.getInstance("TLS");
      paramContext.init(null, null, null);
      paramContext = paramContext.getSocketFactory();
      g = paramContext;
      return;
    }
    catch (GeneralSecurityException paramContext)
    {
      for (;;)
      {
        paramContext = null;
      }
    }
  }
  
  public void a(String paramString)
  {
    Message localMessage = l.obtainMessage();
    what = 9;
    obj = paramString;
    l.sendMessage(localMessage);
  }
  
  public void a(JSONArray paramJSONArray)
  {
    Message localMessage = l.obtainMessage(6);
    obj = paramJSONArray;
    l.sendMessage(localMessage);
  }
}

/* Location:
 * Qualified Name:     uq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */