package com.parse;

import java.util.LinkedHashMap;
import java.util.Map.Entry;

final class ParseAnalytics$1
  extends LinkedHashMap<String, Boolean>
{
  protected boolean removeEldestEntry(Map.Entry<String, Boolean> paramEntry)
  {
    return size() > 10;
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseAnalytics.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */