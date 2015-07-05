package com.parse;

final class Parse$1
  extends Thread
{
  Parse$1(String paramString)
  {
    super(paramString);
  }
  
  public void run()
  {
    Parse.getEventuallyQueue();
  }
}

/* Location:
 * Qualified Name:     com.parse.Parse.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */