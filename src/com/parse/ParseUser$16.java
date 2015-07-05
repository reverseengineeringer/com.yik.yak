package com.parse;

import Q;
import R;

final class ParseUser$16
  implements Q<Void, R<ParseUser>>
{
  ParseUser$16(Q paramQ, ParseUser paramParseUser) {}
  
  public R<ParseUser> then(R<Void> paramR)
  {
    if ((paramR.d()) && ((paramR.f() instanceof ParseException)) && (((ParseException)paramR.f()).getCode() == 208)) {
      return R.a(null).b(val$logInWithTask);
    }
    if (paramR.c()) {
      return R.h();
    }
    return R.a(val$user);
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseUser.16
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */