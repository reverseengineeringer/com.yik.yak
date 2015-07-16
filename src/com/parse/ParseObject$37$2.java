package com.parse;

import L;
import M;
import N;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class ParseObject$37$2
  implements M<Void, N<Void>>
{
  ParseObject$37$2(ParseObject.37 param37, L paramL) {}
  
  public N<Void> then(N<Void> paramN)
  {
    ArrayList localArrayList = new ArrayList();
    paramN = new ArrayList();
    Object localObject = ((List)val$remaining.a()).iterator();
    while (((Iterator)localObject).hasNext())
    {
      ParseObject localParseObject = (ParseObject)((Iterator)localObject).next();
      if (ParseObject.access$1400(localParseObject)) {
        localArrayList.add(localParseObject);
      } else {
        paramN.add(localParseObject);
      }
    }
    val$remaining.a(paramN);
    if (localArrayList.size() == 0) {
      throw new RuntimeException("Unable to save a PFObject with a relation to a cycle.");
    }
    localObject = N.a(null);
    paramN = (N<Void>)localObject;
    if (ParseUser.getCurrentUser() != null)
    {
      paramN = (N<Void>)localObject;
      if (ParseUser.getCurrentUser().isLazy())
      {
        paramN = (N<Void>)localObject;
        if (localArrayList.contains(ParseUser.getCurrentUser())) {
          paramN = ((N)localObject).d(new ParseObject.37.2.2(this)).c(new ParseObject.37.2.1(this, localArrayList));
        }
      }
    }
    return paramN.d(new ParseObject.37.2.3(this, localArrayList, new ArrayList()));
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseObject.37.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */