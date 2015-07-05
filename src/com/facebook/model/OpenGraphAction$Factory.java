package com.facebook.model;

public final class OpenGraphAction$Factory
{
  @Deprecated
  public static OpenGraphAction createForPost()
  {
    return createForPost(OpenGraphAction.class, null);
  }
  
  public static <T extends OpenGraphAction> T createForPost(Class<T> paramClass, String paramString)
  {
    paramClass = (OpenGraphAction)GraphObject.Factory.create(paramClass);
    if (paramString != null) {
      paramClass.setType(paramString);
    }
    return paramClass;
  }
  
  public static OpenGraphAction createForPost(String paramString)
  {
    return createForPost(OpenGraphAction.class, paramString);
  }
}

/* Location:
 * Qualified Name:     com.facebook.model.OpenGraphAction.Factory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */