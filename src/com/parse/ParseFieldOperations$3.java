package com.parse;

import org.json.JSONObject;

final class ParseFieldOperations$3
  implements ParseFieldOperations.ParseFieldOperationFactory
{
  public ParseFieldOperation decode(JSONObject paramJSONObject, ParseDecoder paramParseDecoder)
  {
    return new ParseIncrementOperation((Number)paramJSONObject.opt("amount"));
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseFieldOperations.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */