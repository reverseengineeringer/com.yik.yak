package com.facebook.widget;

import com.facebook.internal.LikeActionController;
import com.facebook.internal.LikeActionController.CreationCallback;

class LikeView$LikeActionControllerCreationCallback
  implements LikeActionController.CreationCallback
{
  private boolean isCancelled;
  
  private LikeView$LikeActionControllerCreationCallback(LikeView paramLikeView) {}
  
  public void cancel()
  {
    isCancelled = true;
  }
  
  public void onComplete(LikeActionController paramLikeActionController)
  {
    if (isCancelled) {
      return;
    }
    LikeView.access$1000(this$0, paramLikeActionController);
    LikeView.access$700(this$0);
    LikeView.access$1102(this$0, null);
  }
}

/* Location:
 * Qualified Name:     com.facebook.widget.LikeView.LikeActionControllerCreationCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */