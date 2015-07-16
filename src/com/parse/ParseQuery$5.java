package com.parse;

import M;
import N;
import java.util.List;

class ParseQuery$5
  implements M<List<T>, T>
{
  ParseQuery$5(ParseQuery paramParseQuery) {}
  
  public T then(N<List<T>> paramN)
  {
    if (paramN.d()) {
      throw paramN.f();
    }
    if ((paramN.e() != null) && (((List)paramN.e()).size() > 0)) {
      return (ParseObject)((List)paramN.e()).get(0);
    }
    throw new ParseException(101, "no results found for query");
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseQuery.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */