package com.parse;

import Q;
import R;

class ParseObject$12$1
  implements Q<Void, Void>
{
  ParseObject$12$1(ParseObject.12 param12) {}
  
  public Void then(R<Void> paramR)
  {
    if (ParseObject.access$600(this$1.this$0, false).hasUnresolvedUser()) {
      throw new IllegalStateException("ACL has an unresolved ParseUser. Save or sign up before attempting to serialize the ACL.");
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseObject.12.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */