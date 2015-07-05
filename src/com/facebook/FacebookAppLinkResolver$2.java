package com.facebook;

import J;
import K;
import ad;
import android.net.Uri;
import com.facebook.model.GraphObject;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class FacebookAppLinkResolver$2
  implements Request.Callback
{
  FacebookAppLinkResolver$2(FacebookAppLinkResolver paramFacebookAppLinkResolver, ad paramad, Map paramMap, HashSet paramHashSet) {}
  
  public void onCompleted(Response paramResponse)
  {
    Object localObject1 = paramResponse.getError();
    if (localObject1 != null)
    {
      val$taskCompletionSource.b(((FacebookRequestError)localObject1).getException());
      return;
    }
    paramResponse = paramResponse.getGraphObject();
    if (paramResponse != null) {}
    for (paramResponse = paramResponse.getInnerJSONObject(); paramResponse == null; paramResponse = null)
    {
      val$taskCompletionSource.b(val$appLinkResults);
      return;
    }
    localObject1 = val$urisToRequest.iterator();
    Uri localUri;
    do
    {
      if (!((Iterator)localObject1).hasNext()) {
        break;
      }
      localUri = (Uri)((Iterator)localObject1).next();
    } while (!paramResponse.has(localUri.toString()));
    for (;;)
    {
      int i;
      try
      {
        ??? = paramResponse.getJSONObject(localUri.toString()).getJSONObject("app_links");
        Object localObject4 = ((JSONObject)???).getJSONArray("android");
        int j = ((JSONArray)localObject4).length();
        ArrayList localArrayList = new ArrayList(j);
        i = 0;
        if (i < j)
        {
          K localK = FacebookAppLinkResolver.access$000(((JSONArray)localObject4).getJSONObject(i));
          if (localK == null) {
            break label273;
          }
          localArrayList.add(localK);
          break label273;
        }
        localObject4 = new J(localUri, localArrayList, FacebookAppLinkResolver.access$100(localUri, (JSONObject)???));
        val$appLinkResults.put(localUri, localObject4);
        synchronized (FacebookAppLinkResolver.access$200(this$0))
        {
          FacebookAppLinkResolver.access$200(this$0).put(localUri, localObject4);
        }
      }
      catch (JSONException localJSONException) {}
      val$taskCompletionSource.b(val$appLinkResults);
      return;
      label273:
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.FacebookAppLinkResolver.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */