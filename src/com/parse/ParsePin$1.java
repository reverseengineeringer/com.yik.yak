package com.parse;

import Q;
import R;
import java.util.List;

final class ParsePin$1
  implements Q<List<ParsePin>, ParsePin>
{
  ParsePin$1(String paramString) {}
  
  public ParsePin then(R<List<ParsePin>> paramR)
  {
    if ((paramR.e() != null) && (((List)paramR.e()).size() > 0)) {}
    for (paramR = (ParsePin)((List)paramR.e()).get(0);; paramR = null)
    {
      Object localObject = paramR;
      if (paramR == null)
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