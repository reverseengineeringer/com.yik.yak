package com.parse;

import P;
import Q;
import R;

class ParseObject$12
  implements Q<Void, R<Void>>
{
  ParseObject$12(ParseObject paramParseObject, P paramP) {}
  
  public R<Void> then(R<Void> paramR)
  {
    synchronized (this$0.mutex)
    {
      this$0.validateSave();
      val$operations.a(this$0.startSave());
      if ((ParseObject.access$500(this$0, "ACL")) && (ParseObject.access$600(this$0, false) != null) && (ParseObject.access$600(this$0, false).hasUnresolvedUser()))
      {
        paramR = ParseUser.getCurrentUser().saveInBackground().c(new ParseObject.12.1(this));
        return paramR;
      }
      return paramR;
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseObject.12
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */