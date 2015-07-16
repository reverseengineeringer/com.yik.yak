package com.parse;

import M;
import N;
import java.util.List;

final class ParsePin$1
  implements M<List<ParsePin>, ParsePin>
{
  ParsePin$1(String paramString) {}
  
  public ParsePin then(N<List<ParsePin>> paramN)
  {
    if ((paramN.e() != null) && (((List)paramN.e()).size() > 0)) {}
    for (paramN = (ParsePin)((List)paramN.e()).get(0);; paramN = null)
    {
      Object localObject = paramN;
      if (paramN == null)
      {
        localObject = (ParsePin)ParseObject.create(ParsePin.class);
        ((ParsePin)localObject).setName(val$name);
      }
      return (ParsePin)localObject;
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.ParsePin.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */