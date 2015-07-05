package com.parse;

import java.util.HashSet;
import java.util.List;
import org.json.JSONObject;

final class ParseFieldOperations$8
  implements ParseFieldOperations.ParseFieldOperationFactory
{
  public ParseFieldOperation decode(JSONObject paramJSONObject, ParseDecoder paramParseDecoder)
  {
    return new ParseRelationOperation(null, new HashSet((List)paramParseDecoder.decode(paramJSONObject.optJSONArray("objects"))));
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseFieldOperations.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */