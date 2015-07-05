package com.facebook.internal;

class LikeActionController$SerializeToDiskWorkItem
  implements Runnable
{
  private String cacheKey;
  private String controllerJson;
  
  LikeActionController$SerializeToDiskWorkItem(String paramString1, String paramString2)
  {
    cacheKey = paramString1;
    controllerJson = paramString2;
  }
  
  public void run()
  {
    LikeActionController.access$2900(cacheKey, controllerJson);
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.LikeActionController.SerializeToDiskWorkItem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */