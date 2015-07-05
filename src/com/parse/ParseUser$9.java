package com.parse;

import Q;
import R;
import java.util.List;

final class ParseUser$9
  implements Q<List<ParseUser>, R<ParseUser>>
{
  public R<ParseUser> then(R<List<ParseUser>> paramR)
  {
    paramR = (List)paramR.e();
    if (paramR != null)
    {
      if (paramR.size() == 1) {
        return R.a(paramR.get(0));
      }
      return ParseObject.unpinAllInBackground("_currentUser").i();
    }
    return R.a(null);
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseUser.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */