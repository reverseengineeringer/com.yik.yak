package com.parse;

import Q;
import R;
import ad;

class ParseFile$5
  implements Q<byte[], Void>
{
  ParseFile$5(ParseFile paramParseFile, ad paramad, ProgressCallback paramProgressCallback) {}
  
  public Void then(R<byte[]> paramR)
  {
    paramR = (byte[])paramR.e();
    if (paramR != null)
    {
      val$tcs.a(paramR);
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