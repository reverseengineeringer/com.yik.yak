package com.parse;

import org.json.JSONObject;

class PointerEncodingStrategy
  extends PointerOrLocalIdEncodingStrategy
{
  private static final PointerEncodingStrategy instance = new PointerEncodingStrategy();
  
  public static PointerEncodingStrategy get()
  {
    return instance;
  }
  
  public JSONObject encodeRelatedObject(ParseObject paramParseObject)
  {
    if (paramParseObject.getObjectId() == null) {
      throw new IllegalStateException("unable to encode an association with an unsaved ParseObject");
    }
    return super.encodeRelatedObject(paramParseObject);
  }
}

/* Location:
 * Qualified Name:     com.parse.PointerEncodingStrategy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */