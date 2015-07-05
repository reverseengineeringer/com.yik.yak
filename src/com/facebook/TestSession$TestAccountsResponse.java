package com.facebook;

import com.facebook.model.GraphObject;
import com.facebook.model.GraphObjectList;

abstract interface TestSession$TestAccountsResponse
  extends GraphObject
{
  public abstract GraphObjectList<TestSession.TestAccount> getData();
}

/* Location:
 * Qualified Name:     com.facebook.TestSession.TestAccountsResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */