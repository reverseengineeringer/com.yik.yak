package com.parse;

import N;
import Z;
import java.util.concurrent.Callable;

class ParseFile$3$5
  implements Callable<ParseCommand>
{
  ParseFile$3$5(ParseFile.3 param3, String paramString) {}
  
  public ParseCommand call()
  {
    ParseCommand localParseCommand = ParseFile.access$300(this$1.this$0, val$sessionToken);
    this$1.val$tcs.a().a(new ParseFile.3.5.1(this, localParseCommand));
    return localParseCommand;
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseFile.3.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */