package com.facebook.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.AsyncTask;
import com.facebook.model.GraphObject;
import org.json.JSONObject;

final class Utility$1
  extends AsyncTask<Void, Void, GraphObject>
{
  Utility$1(String paramString1, Context paramContext, String paramString2) {}
  
  protected GraphObject doInBackground(Void... paramVarArgs)
  {
    return Utility.access$000(val$applicationId);
  }
  
  protected void onPostExecute(GraphObject paramGraphObject)
  {
    if (paramGraphObject != null)
    {
      paramGraphObject = paramGraphObject.getInnerJSONObject();
      Utility.access$100(val$applicationId, paramGraphObject);
      val$context.getSharedPreferences("com.facebook.internal.preferences.APP_SETTINGS", 0).edit().putString(val$settingsKey, paramGraphObject.toString()).apply();
    }
    Utility.access$202(null);
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.Utility.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */