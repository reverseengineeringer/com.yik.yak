package com.parse;

import org.json.JSONObject;

final class ParseFieldOperations$2
  implements ParseFieldOperations.ParseFieldOperationFactory
{
  public ParseFieldOperation decode(JSONObject paramJSONObject, ParseDecoder paramParseDecoder)
  {
    return ParseDeleteOperation.getInstance();
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseFieldOperations.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */