package com.parse;

import M;
import N;
import Z;

class ParseFile$5$2
  implements M<byte[], N<byte[]>>
{
  ParseFile$5$2(ParseFile.5 param5) {}
  
  public N<byte[]> then(N<byte[]> paramN)
  {
    Object localObject;
    if ((paramN.d()) && ((paramN.f() instanceof IllegalStateException))) {
      localObject = N.a(new ParseException(100, paramN.f().getMessage()));
    }
    do
    {
      return (N<byte[]>)localObject;
      if (this$1.val$tcs.a().c()) {
        return this$1.val$tcs.a();
      }
      this$1.this$0.data = ((byte[])paramN.e());
      localObject = paramN;
    } while (this$1.this$0.data == null);
    ParseFileUtils.writeByteArrayToFile(this$1.this$0.getCacheFile(), this$1.this$0.data);
    return paramN;
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseFile.5.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */