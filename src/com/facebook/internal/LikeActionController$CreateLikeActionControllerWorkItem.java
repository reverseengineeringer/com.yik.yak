package com.facebook.internal;

class LikeActionController$CreateLikeActionControllerWorkItem
  implements Runnable
{
  private LikeActionController.CreationCallback callback;
  private String objectId;
  
  LikeActionController$CreateLikeActionControllerWorkItem(String paramString, LikeActionController.CreationCallback paramCreationCallback)
  {
    objectId = paramString;
    callback = paramCreationCallback;
  }
  
  public void run()
  {
    LikeActionController.access$3000(objectId, callback);
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.LikeActionController.CreateLikeActionControllerWorkItem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */