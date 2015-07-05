package com.parse.gdata;

public abstract interface Escaper
{
  public abstract Appendable escape(Appendable paramAppendable);
  
  public abstract String escape(String paramString);
}

/* Location:
 * Qualified Name:     com.parse.gdata.Escaper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */