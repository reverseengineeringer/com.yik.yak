package com.parse;

import org.json.JSONObject;

final class ParseFieldOperations$6
  implements ParseFieldOperations.ParseFieldOperationFactory
{
  public ParseFieldOperation decode(JSONObject paramJSONObject, ParseDecoder paramParseDecoder)
  {
    return new ParseRemoveOperation(paramJSONObject.opt("objects"));
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseFieldOperations.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */