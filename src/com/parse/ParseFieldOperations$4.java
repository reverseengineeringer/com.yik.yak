package com.parse;

import org.json.JSONObject;

final class ParseFieldOperations$4
  implements ParseFieldOperations.ParseFieldOperationFactory
{
  public ParseFieldOperation decode(JSONObject paramJSONObject, ParseDecoder paramParseDecoder)
  {
    return new ParseAddOperation(paramJSONObject.opt("objects"));
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseFieldOperations.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */