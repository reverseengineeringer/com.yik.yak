package com.google.android.gms.common.api;

class Batch$1
  implements PendingResult.a
{
  Batch$1(Batch paramBatch) {}
  
  public void m(Status paramStatus)
  {
    for (;;)
    {
      synchronized (Batch.a(JD))
      {
        if (JD.isCanceled()) {
          return;
        }
        if (paramStatus.isCanceled())
        {
          Batch.a(JD, true);
          Batch.b(JD);
          if (Batch.c(JD) == 0)
          {
            if (!Batch.d(JD)) {
              break;
            }
            Batch.e(JD);
          }
          return;
        }
      }
      if (!paramStatus.isSuccess()) {
        Batch.b(JD, true);
      }
    }
    if (Batch.f(JD)) {}
    for (paramStatus = new Status(13);; paramStatus = Status.Kw)
    {
      JD.b(new BatchResult(paramStatus, Batch.g(JD)));
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.Batch.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */