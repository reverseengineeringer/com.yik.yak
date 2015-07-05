import java.net.Socket;
import java.net.URI;
import org.json.JSONException;
import org.json.JSONObject;

class ud
  extends rp
{
  public ud(ua paramua, URI paramURI, int paramInt, Socket paramSocket)
  {
    super(paramURI, new rx(), null, paramInt);
    a(paramSocket);
  }
  
  public void a(int paramInt, String paramString, boolean paramBoolean)
  {
    if (sD.a) {
      new StringBuilder().append("WebSocket closed. Code: ").append(paramInt).append(", reason: ").append(paramString).append("\nURI: ").append(ua.b(c)).toString();
    }
    ua.a(c).b();
  }
  
  public void a(Exception paramException)
  {
    if ((paramException != null) && (paramException.getMessage() != null)) {
      new StringBuilder().append("Websocket Error: ").append(paramException.getMessage()).toString();
    }
  }
  
  public void a(String paramString)
  {
    if (sD.a) {
      new StringBuilder().append("Received message from editor:\n").append(paramString).toString();
    }
    String str;
    try
    {
      JSONObject localJSONObject = new JSONObject(paramString);
      str = localJSONObject.getString("type");
      if (str.equals("device_info_request"))
      {
        ua.a(c).a();
        return;
      }
      if (str.equals("snapshot_request"))
      {
        ua.a(c).a(localJSONObject);
        return;
      }
    }
    catch (JSONException localJSONException)
    {
      new StringBuilder().append("Bad JSON received:").append(paramString).toString();
      return;
    }
    if (str.equals("change_request"))
    {
      ua.a(c).b(localJSONException);
      return;
    }
    if (str.equals("event_binding_request")) {
      ua.a(c).c(localJSONException);
    }
  }
  
  public void a(rU paramrU)
  {
    boolean bool = sD.a;
  }
}

/* Location:
 * Qualified Name:     ud
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */