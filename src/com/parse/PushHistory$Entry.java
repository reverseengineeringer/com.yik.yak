package com.parse;

class PushHistory$Entry
  implements Comparable<Entry>
{
  public String pushId;
  public String timestamp;
  
  public PushHistory$Entry(String paramString1, String paramString2)
  {
    pushId = paramString1;
    timestamp = paramString2;
  }
  
  public int compareTo(Entry paramEntry)
  {
    return timestamp.compareTo(timestamp);
  }
}

/* Location:
 * Qualified Name:     com.parse.PushHistory.Entry
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */