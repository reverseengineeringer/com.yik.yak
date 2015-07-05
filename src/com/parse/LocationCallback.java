package com.parse;

public abstract class LocationCallback
  extends ParseCallback<ParseGeoPoint>
{
  public abstract void done(ParseGeoPoint paramParseGeoPoint, ParseException paramParseException);
  
  final void internalDone(ParseGeoPoint paramParseGeoPoint, ParseException paramParseException)
  {
    done(paramParseGeoPoint, paramParseException);
  }
}

/* Location:
 * Qualified Name:     com.parse.LocationCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */