package com.parse;

import M;
import N;

class ParseUser$5$1$1
  implements M<Void, N<Void>>
{
  ParseUser$5$1$1(ParseUser.5.1 param1, N paramN) {}
  
  public N<Void> then(N<Void> paramN)
  {
    if ((!val$signUpTask.c()) && (!val$signUpTask.d()))
    {
      ParseUser.access$302(this$2.this$1.this$0, true);
      ParseUser.access$402(this$2.this$1.this$0, false);
      return ParseUser.access$000(this$2.this$1.this$0);
    }
    return val$signUpTask.j();
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseUser.5.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */