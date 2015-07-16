import android.annotation.TargetApi;
import android.os.Build.VERSION;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;

class bF
  implements Je<bC>
{
  public byte[] a(bC parambC)
  {
    return b(parambC).toString().getBytes("UTF-8");
  }
  
  @TargetApi(9)
  public JSONObject b(bC parambC)
  {
    try
    {
      JSONObject localJSONObject = new JSONObject();
      bE localbE = a;
      localJSONObject.put("appBundleId", a);
      localJSONObject.put("executionId", b);
      localJSONObject.put("installationId", c);
      localJSONObject.put("androidId", d);
      localJSONObject.put("advertisingId", e);
      localJSONObject.put("betaDeviceToken", f);
      localJSONObject.put("buildId", g);
      localJSONObject.put("osVersion", h);
      localJSONObject.put("deviceModel", i);
      localJSONObject.put("appVersionCode", j);
      localJSONObject.put("appVersionName", k);
      localJSONObject.put("timestamp", b);
      localJSONObject.put("type", c.toString());
      localJSONObject.put("details", new JSONObject(d));
      localJSONObject.put("customType", e);
      localJSONObject.put("customAttributes", new JSONObject(f));
      return localJSONObject;
    }
    catch (JSONException parambC)
    {
      if (Build.VERSION.SDK_INT >= 9) {
        throw new IOException(parambC.getMessage(), parambC);
      }
      throw new IOException(parambC.getMessage());
    }
  }
}

/* Location:
 * Qualified Name:     bF
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */