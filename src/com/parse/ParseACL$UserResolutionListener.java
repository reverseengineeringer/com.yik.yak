package com.parse;

import java.lang.ref.WeakReference;

class ParseACL$UserResolutionListener
  extends GetCallback<ParseObject>
{
  private final WeakReference<ParseACL> parent;
  
  public ParseACL$UserResolutionListener(ParseACL paramParseACL)
  {
    parent = new WeakReference(paramParseACL);
  }
  
  public void done(ParseObject paramParseObject, ParseException paramParseException)
  {
    try
    {
      paramParseException = (ParseACL)parent.get();
      if (paramParseException != null) {
        ParseACL.access$000(paramParseException, (ParseUser)paramParseObject);
      }
      return;
    }
    finally
    {
      paramParseObject.unregisterSaveListener(this);
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseACL.UserResolutionListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */