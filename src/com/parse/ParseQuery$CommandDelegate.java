package com.parse;

import R;

abstract interface ParseQuery$CommandDelegate<T>
{
  public abstract R<T> runFromCacheAsync();
  
  public abstract R<T> runOnNetworkAsync(boolean paramBoolean);
}

/* Location:
 * Qualified Name:     com.parse.ParseQuery.CommandDelegate
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */