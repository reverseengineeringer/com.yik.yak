import java.net.Socket;
import java.net.URI;
import org.json.JSONException;
import org.json.JSONObject;

class up
  extends rt
{
  public up(um paramum, URI paramURI, int paramInt, Socket paramSocket)
  {
    super(paramURI, new rB(), null, paramInt);
    a(paramSocket);
  }
  
  public void a(int paramInt, String paramString, boolean paramBoolean)
  {
    if (sG.a) {
      new StringBuilder().append("WebSocket closed. Code: ").append(paramInt).append(", reason: ").append(paramString).append("\nURI: ").append(um.b(c)).toString();
    }
    um.a(c).b();
  }
  
  public void a(Exception paramException)
  {
    if ((paramException != null) && (paramException.getMessage() != null)) {
      new StringBuilder().append("Websocket Error: ").append(paramException.getMessage()).toString();
    }
  }
  
  public void a(String paramString)
  {
    if (sG.a) {
      new StringBuilder().append("Received message from editor:\n").append(paramString).toString();
    }
    String str;
    try
    {
      JSONObject localJSONObject = new JSONObject(paramString);
      str = localJSONObject.getString("type");
      if (str.equals("device_info_request"))
      {
        um.a(c).a();
        return;
      }
      if (str.equals("snapshot_request"))
      {
        um.a(c).a(localJSONObject);
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
      um.a(c).b(localJSONException);
      return;
    }
    if (str.equals("event_binding_request"))
    {
      um.a(c).d(localJSONException);
      return;
    }
    if (str.equals("clear_request"))
    {
      um.a(c).c(localJSONException);
      return;
    }
    if (str.equals("tweak_request")) {
      um.a(c).e(localJSONException);
    }
  }
  
  public void a(rY paramrY)
  {
    boolean bool = sG.a;
  }
}

/* Location:
 * Qualified Name:     up
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */