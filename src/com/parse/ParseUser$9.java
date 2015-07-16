package com.parse;

import M;
import N;
import java.util.List;

final class ParseUser$9
  implements M<List<ParseUser>, N<ParseUser>>
{
  public N<ParseUser> then(N<List<ParseUser>> paramN)
  {
    paramN = (List)paramN.e();
    if (paramN != null)
    {
      if (paramN.size() == 1) {
        return N.a(paramN.get(0));
      }
      return ParseObject.unpinAllInBackground("_currentUser").i();
    }
    return N.a(null);
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseUser.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */