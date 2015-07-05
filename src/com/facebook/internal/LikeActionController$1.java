package com.facebook.internal;

import android.content.Intent;
import java.util.UUID;

final class LikeActionController$1
  implements LikeActionController.CreationCallback
{
  LikeActionController$1(int paramInt1, int paramInt2, Intent paramIntent, UUID paramUUID) {}
  
  public void onComplete(LikeActionController paramLikeActionController)
  {
    LikeActionController.access$000(paramLikeActionController, val$requestCode, val$resultCode, val$data, val$callId);
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.LikeActionController.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */