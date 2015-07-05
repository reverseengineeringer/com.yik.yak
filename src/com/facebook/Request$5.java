package com.facebook;

import java.net.URLEncoder;
import java.util.ArrayList;

class Request$5
  implements Request.KeyValueSerializer
{
  Request$5(Request paramRequest, ArrayList paramArrayList) {}
  
  public void writeString(String paramString1, String paramString2)
  {
    val$keysAndValues.add(String.format("%s=%s", new Object[] { paramString1, URLEncoder.encode(paramString2, "UTF-8") }));
  }
}

/* Location:
 * Qualified Name:     com.facebook.Request.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */