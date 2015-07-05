package com.parse;

import Q;
import R;

class ParseObject$37$2$2
  implements Q<Void, R<Void>>
{
  ParseObject$37$2$2(ParseObject.37.2 param2) {}
  
  public R<Void> then(R<Void> paramR)
  {
    return ParseUser.getCurrentUser().saveInBackground();
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseObject.37.2.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */