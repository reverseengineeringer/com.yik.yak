package com.parse;

import L;

class ParseObject$36
  extends ParseTraverser
{
  ParseObject$36(ParseObject paramParseObject, L paramL) {}
  
  protected boolean visit(Object paramObject)
  {
    if (((paramObject instanceof ParseObject)) && (((ParseObject)paramObject).getObjectId() == null)) {
      val$result.a(Boolean.valueOf(false));
    }
    return ((Boolean)val$result.a()).booleanValue();
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseObject.36
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */