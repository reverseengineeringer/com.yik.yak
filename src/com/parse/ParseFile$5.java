package com.parse;

import M;
import N;
import Z;

class ParseFile$5
  implements M<byte[], Void>
{
  ParseFile$5(ParseFile paramParseFile, Z paramZ, ProgressCallback paramProgressCallback) {}
  
  public Void then(N<byte[]> paramN)
  {
    paramN = (byte[])paramN.e();
    if (paramN != null)
    {
      val$tcs.a(paramN);
      return null;
    }
    new ParseAWSRequest(ParseFile.access$400(this$0)).executeAsync(val$progressCallback).b(new ParseFile.5.2(this)).a(new ParseFile.5.1(this));
    return null;
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseFile.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */