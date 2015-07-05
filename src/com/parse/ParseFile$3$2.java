package com.parse;

import Q;
import R;
import java.io.IOException;

class ParseFile$3$2
  implements Q<Void, R<Void>>
{
  ParseFile$3$2(ParseFile.3 param3) {}
  
  public R<Void> then(R<Void> paramR)
  {
    if (!paramR.d()) {}
    try
    {
      ParseFileUtils.writeByteArrayToFile(this$1.this$0.getCacheFile(), this$1.this$0.data);
      ParseFile.access$102(this$1.this$0, false);
      return paramR;
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