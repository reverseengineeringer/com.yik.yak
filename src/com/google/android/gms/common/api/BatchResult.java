package com.google.android.gms.common.api;

import iE;
import java.util.concurrent.TimeUnit;

public final class BatchResult
  implements Result
{
  private final Status Eb;
  private final PendingResult<?>[] JC;
  
  BatchResult(Status paramStatus, PendingResult<?>[] paramArrayOfPendingResult)
  {
    Eb = paramStatus;
    JC = paramArrayOfPendingResult;
  }
  
  public Status getStatus()
  {
    return Eb;
  }
  
  public <R extends Result> R take(BatchResultToken<R> paramBatchResultToken)
  {
    if (mId < JC.length) {}
    for (boolean bool = true;; bool = false)
    {
      iE.b(bool, "The result token does not belong to this batch");
      return JC[mId].await(0L, TimeUnit.MILLISECONDS);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.BatchResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */