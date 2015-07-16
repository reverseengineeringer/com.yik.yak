package com.parse;

import M;
import N;

final class ParseUser$16
  implements M<Void, N<ParseUser>>
{
  ParseUser$16(M paramM, ParseUser paramParseUser) {}
  
  public N<ParseUser> then(N<Void> paramN)
  {
    if ((paramN.d()) && ((paramN.f() instanceof ParseException)) && (((ParseException)paramN.f()).getCode() == 208)) {
      return N.a(null).b(val$logInWithTask);
    }
    if (paramN.c()) {
      return N.h();
    }
    return N.a(val$user);
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseUser.16
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */