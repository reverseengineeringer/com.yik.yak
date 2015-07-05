package com.parse;

import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.PriorityQueue;
import java.util.Set;
import org.json.JSONObject;

class PushHistory
{
  private static final String TAG = "com.parse.PushHistory";
  private String cutoff;
  private final PriorityQueue<PushHistory.Entry> entries;
  private String lastTime;
  private final int maxHistoryLength;
  private final HashSet<String> pushIds;
  
  public PushHistory(int paramInt, JSONObject paramJSONObject)
  {
    maxHistoryLength = paramInt;
    entries = new PriorityQueue(paramInt + 1);
    pushIds = new HashSet(paramInt + 1);
    cutoff = null;
    lastTime = null;
    if (paramJSONObject != null)
    {
      setCutoffTimestamp(paramJSONObject.optString("ignoreAfter", null));
      setLastReceivedTimestamp(paramJSONObject.optString("lastTime", null));
      paramJSONObject = paramJSONObject.optJSONObject("history");
      if (paramJSONObject != null)
      {
        Iterator localIterator = paramJSONObject.keys();
        while (localIterator.hasNext())
        {
          String str1 = (String)localIterator.next();
          String str2 = paramJSONObject.optString(str1, null);
          if ((str1 != null) && (str2 != null)) {
            tryInsertPush(str1, str2);
          }
        }
      }
    }
  }
  
  private void setCutoffTimestamp(String paramString)
  {
    cutoff = paramString;
  }
  
  private void setLastReceivedTimestamp(String paramString)
  {
    lastTime = paramString;
  }
  
  public String getCutoffTimestamp()
  {
    return cutoff;
  }
  
  public String getLastReceivedTimestamp()
  {
    return lastTime;
  }
  
  public Set<String> getPushIds()
  {
    return Collections.unmodifiableSet(pushIds);
  }
  
  public JSONObject toJSON()
  {
    JSONObject localJSONObject1 = new JSONObject();
    if (entries.size() > 0)
    {
      JSONObject localJSONObject2 = new JSONObject();
      Iterator localIterator = entries.iterator();
      while (localIterator.hasNext())
      {
        PushHistory.Entry localEntry = (PushHistory.Entry)localIterator.next();
        localJSONObject2.put(pushId, timestamp);
      }
      localJSONObject1.put("history", localJSONObject2);
    }
    localJSONObject1.putOpt("ignoreAfter", cutoff);
    localJSONObject1.putOpt("lastTime", lastTime);
    return localJSONObject1;
  }
  
  public boolean tryInsertPush(String paramString1, String paramString2)
  {
    if (paramString2 == null) {
      throw new IllegalArgumentException("Can't insert null pushId or timestamp into history");
    }
    if ((lastTime == null) || (paramString2.compareTo(lastTime) > 0)) {
      lastTime = paramString2;
    }
    if ((cutoff != null) && (paramString2.compareTo(cutoff) <= 0))
    {
      Parse.logE("com.parse.PushHistory", "Ignored old push " + paramString1 + " at " + paramString2 + " before cutoff " + cutoff);
      return false;
    }
    if (paramString1 != null)
    {
      if (pushIds.contains(paramString1))
      {
        Parse.logE("com.parse.PushHistory", "Ignored duplicate push " + paramString1);
        return false;
      }
      entries.add(new PushHistory.Entry(paramString1, paramString2));
      pushIds.add(paramString1);
      while (entries.size() > maxHistoryLength)
      {
        paramString1 = (PushHistory.Entry)entries.remove();
        pushIds.remove(pushId);
        cutoff = timestamp;
      }
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.parse.PushHistory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */