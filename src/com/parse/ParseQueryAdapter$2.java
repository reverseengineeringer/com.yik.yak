package com.parse;

class ParseQueryAdapter$2
  implements ParseQueryAdapter.QueryFactory<T>
{
  ParseQueryAdapter$2(String paramString) {}
  
  public ParseQuery<T> create()
  {
    ParseQuery localParseQuery = ParseQuery.getQuery(val$className);
    localParseQuery.orderByDescending("createdAt");
    return localParseQuery;
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseQueryAdapter.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */