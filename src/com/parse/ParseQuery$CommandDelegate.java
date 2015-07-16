package com.parse;

import N;

abstract interface ParseQuery$CommandDelegate<T>
{
  public abstract N<T> runFromCacheAsync();
  
  public abstract N<T> runOnNetworkAsync(boolean paramBoolean);
}

/* Location:
 * Qualified Name:     com.parse.ParseQuery.CommandDelegate
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */