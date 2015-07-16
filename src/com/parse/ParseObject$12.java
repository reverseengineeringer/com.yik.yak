package com.parse;

import L;
import M;
import N;

class ParseObject$12
  implements M<Void, N<Void>>
{
  ParseObject$12(ParseObject paramParseObject, L paramL) {}
  
  public N<Void> then(N<Void> paramN)
  {
    synchronized (this$0.mutex)
    {
      this$0.validateSave();
      val$operations.a(this$0.startSave());
      if ((ParseObject.access$500(this$0, "ACL")) && (ParseObject.access$600(this$0, false) != null) && (ParseObject.access$600(this$0, false).hasUnresolvedUser()))
      {
        paramN = ParseUser.getCurrentUser().saveInBackground().c(new ParseObject.12.1(this));
        return paramN;
      }
      return paramN;
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseObject.12
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */