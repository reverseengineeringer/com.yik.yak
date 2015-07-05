package com.parse.internal;

public abstract interface AsyncCallback
{
  public abstract void onCancel();
  
  public abstract void onFailure(Throwable paramThrowable);
  
  public abstract void onSuccess(Object paramObject);
}

/* Location:
 * Qualified Name:     com.parse.internal.AsyncCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */