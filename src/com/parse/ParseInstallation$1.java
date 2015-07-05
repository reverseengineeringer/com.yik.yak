package com.parse;

import Q;
import R;
import java.util.List;

final class ParseInstallation$1
  implements Q<List<ParseInstallation>, R<ParseInstallation>>
{
  public R<ParseInstallation> then(R<List<ParseInstallation>> paramR)
  {
    paramR = (List)paramR.e();
    if (paramR != null)
    {
      if (paramR.size() == 1) {
        return R.a(paramR.get(0));
      }
      return ParseObject.unpinAllInBackground("_currentInstallation").i();
    }
    return R.a(null);
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseInstallation.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */