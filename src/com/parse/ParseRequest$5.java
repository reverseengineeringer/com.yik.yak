package com.parse;

import Q;
import R;

class ParseRequest$5
  implements Q<Response, R<Result>>
{
  ParseRequest$5(ParseRequest paramParseRequest) {}
  
  public R<Result> then(R<Response> paramR)
  {
    return this$0.onPostExecute(paramR);
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseRequest.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */