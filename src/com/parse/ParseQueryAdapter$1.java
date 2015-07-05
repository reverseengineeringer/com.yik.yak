package com.parse;

class ParseQueryAdapter$1
  implements ParseQueryAdapter.QueryFactory<T>
{
  ParseQueryAdapter$1(String paramString) {}
  
  public ParseQuery<T> create()
  {
    ParseQuery localParseQuery = ParseQuery.getQuery(val$className);
    localParseQuery.orderByDescending("createdAt");
    return localParseQuery;
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseQueryAdapter.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */