package com.facebook.model;

import com.facebook.FacebookGraphObjectException;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

abstract class GraphObject$Factory$ProxyBase<STATE>
  implements InvocationHandler
{
  private static final String EQUALS_METHOD = "equals";
  private static final String TOSTRING_METHOD = "toString";
  protected final STATE state;
  
  protected GraphObject$Factory$ProxyBase(STATE paramSTATE)
  {
    state = paramSTATE;
  }
  
  protected final Object proxyObjectMethods(Object paramObject, Method paramMethod, Object[] paramArrayOfObject)
  {
    paramObject = paramMethod.getName();
    if (((String)paramObject).equals("equals"))
    {
      paramObject = paramArrayOfObject[0];
      if (paramObject == null) {
        return Boolean.valueOf(false);
      }
      paramObject = Proxy.getInvocationHandler(paramObject);
      if (!(paramObject instanceof GraphObject.Factory.GraphObjectProxy)) {
        return Boolean.valueOf(false);
      }
      paramObject = (GraphObject.Factory.GraphObjectProxy)paramObject;
      return Boolean.valueOf(state.equals(state));
    }
    if (((String)paramObject).equals("toString")) {
      return toString();
    }
    return paramMethod.invoke(state, paramArrayOfObject);
  }
  
  protected final Object throwUnexpectedMethodSignature(Method paramMethod)
  {
    throw new FacebookGraphObjectException(getClass().getName() + " got an unexpected method signature: " + paramMethod.toString());
  }
}

/* Location:
 * Qualified Name:     com.facebook.model.GraphObject.Factory.ProxyBase
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */