package com.parse;

import M;
import N;
import org.json.JSONObject;

class ParseQuery$18
  implements M<Object, Integer>
{
  ParseQuery$18(ParseQuery paramParseQuery) {}
  
  public Integer then(N<Object> paramN)
  {
    return Integer.valueOf(((JSONObject)paramN.e()).optInt("count"));
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseQuery.18
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */