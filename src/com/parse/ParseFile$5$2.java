package com.parse;

import Q;
import R;
import ad;

class ParseFile$5$2
  implements Q<byte[], R<byte[]>>
{
  ParseFile$5$2(ParseFile.5 param5) {}
  
  public R<byte[]> then(R<byte[]> paramR)
  {
    Object localObject;
    if ((paramR.d()) && ((paramR.f() instanceof IllegalStateException))) {
      localObject = R.a(new ParseException(100, paramR.f().getMessage()));
    }
    do
    {
      return (R<byte[]>)localObject;
      if (this$1.val$tcs.a().c()) {
        return this$1.val$tcs.a();
      }
      this$1.this$0.data = ((byte[])paramR.e());
      localObject = paramR;
    } while (this$1.this$0.data == null);
    ParseFileUtils.writeByteArrayToFile(this$1.this$0.getCacheFile(), this$1.this$0.data);
    return paramR;
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseFile.5.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */