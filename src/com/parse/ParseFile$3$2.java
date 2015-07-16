package com.parse;

import M;
import N;
import java.io.IOException;

class ParseFile$3$2
  implements M<Void, N<Void>>
{
  ParseFile$3$2(ParseFile.3 param3) {}
  
  public N<Void> then(N<Void> paramN)
  {
    if (!paramN.d()) {}
    try
    {
      ParseFileUtils.writeByteArrayToFile(this$1.this$0.getCacheFile(), this$1.this$0.data);
      ParseFile.access$102(this$1.this$0, false);
      return paramN;
    }
    catch (IOException localIOException)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseFile.3.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */