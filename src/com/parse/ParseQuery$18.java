package com.parse;

import Q;
import R;
import org.json.JSONObject;

class ParseQuery$18
  implements Q<Object, Integer>
{
  ParseQuery$18(ParseQuery paramParseQuery) {}
  
  public Integer then(R<Object> paramR)
  {
    return Integer.valueOf(((JSONObject)paramR.e()).optInt("count"));
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseQuery.18
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */