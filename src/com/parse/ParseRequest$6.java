package com.parse;

import M;
import N;

class ParseRequest$6
  implements M<Void, N<Response>>
{
  ParseRequest$6(ParseRequest paramParseRequest, ProgressCallback paramProgressCallback) {}
  
  public N<Response> then(N<Void> paramN)
  {
    long l1 = ParseRequest.access$200();
    long l2 = (ParseRequest.access$200() * Math.random());
    if (ParseRequest.access$000(this$0) == null) {
      ParseRequest.access$002(this$0, this$0.newRequest());
    }
    return ParseRequest.access$300(this$0, 0, l1 + l2, val$progressCallback);
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseRequest.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */