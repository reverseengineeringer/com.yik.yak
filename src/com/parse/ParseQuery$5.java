package com.parse;

import Q;
import R;
import java.util.List;

class ParseQuery$5
  implements Q<List<T>, T>
{
  ParseQuery$5(ParseQuery paramParseQuery) {}
  
  public T then(R<List<T>> paramR)
  {
    if (paramR.d()) {
      throw paramR.f();
    }
    if ((paramR.e() != null) && (((List)paramR.e()).size() > 0)) {
      return (ParseObject)((List)paramR.e()).get(0);
    }
    throw new ParseException(101, "no results found for query");
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseQuery.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */