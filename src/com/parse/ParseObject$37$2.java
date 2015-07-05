package com.parse;

import P;
import Q;
import R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class ParseObject$37$2
  implements Q<Void, R<Void>>
{
  ParseObject$37$2(ParseObject.37 param37, P paramP) {}
  
  public R<Void> then(R<Void> paramR)
  {
    ArrayList localArrayList = new ArrayList();
    paramR = new ArrayList();
    Object localObject = ((List)val$remaining.a()).iterator();
    while (((Iterator)localObject).hasNext())
    {
      ParseObject localParseObject = (ParseObject)((Iterator)localObject).next();
      if (ParseObject.access$1400(localParseObject)) {
        localArrayList.add(localParseObject);
      } else {
        paramR.add(localParseObject);
      }
    }
    val$remaining.a(paramR);
    if (localArrayList.size() == 0) {
      throw new RuntimeException("Unable to save a PFObject with a relation to a cycle.");
    }
    localObject = R.a(null);
    paramR = (R<Void>)localObject;
    if (ParseUser.getCurrentUser() != null)
    {
      paramR = (R<Void>)localObject;
      if (ParseUser.getCurrentUser().isLazy())
      {
        paramR = (R<Void>)localObject;
        if (localArrayList.contains(ParseUser.getCurrentUser())) {
          paramR = ((R)localObject).d(new ParseObject.37.2.2(this)).c(new ParseObject.37.2.1(this, localArrayList));
        }
      }
    }
    return paramR.d(new ParseObject.37.2.3(this, localArrayList, new ArrayList()));
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseObject.37.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */