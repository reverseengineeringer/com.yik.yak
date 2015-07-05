package com.parse;

import java.util.List;

public abstract interface ParseQueryAdapter$OnQueryLoadListener<T extends ParseObject>
{
  public abstract void onLoaded(List<T> paramList, Exception paramException);
  
  public abstract void onLoading();
}

/* Location:
 * Qualified Name:     com.parse.ParseQueryAdapter.OnQueryLoadListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */