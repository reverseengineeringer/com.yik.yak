package com.parse;

import M;
import N;
import org.json.JSONObject;

final class ParseConfig$2
  implements M<JSONObject, ParseConfig>
{
  public ParseConfig then(N<JSONObject> arg1)
  {
    ParseConfig localParseConfig = new ParseConfig((JSONObject)???.e(), new ParseDecoder());
    ParseConfig.access$100(localParseConfig, Parse.applicationContext, "currentConfig");
    synchronized (ParseConfig.access$200())
    {
      ParseConfig.access$302(localParseConfig);
      localParseConfig = ParseConfig.access$300();
      return localParseConfig;
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseConfig.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */