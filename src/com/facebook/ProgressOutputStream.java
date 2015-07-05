package com.facebook;

import android.os.Handler;
import java.io.FilterOutputStream;
import java.io.OutputStream;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

class ProgressOutputStream
  extends FilterOutputStream
  implements RequestOutputStream
{
  private long batchProgress;
  private RequestProgress currentRequestProgress;
  private long lastReportedProgress;
  private long maxProgress;
  private final Map<Request, RequestProgress> progressMap;
  private final RequestBatch requests;
  private final long threshold;
  
  ProgressOutputStream(OutputStream paramOutputStream, RequestBatch paramRequestBatch, Map<Request, RequestProgress> paramMap, long paramLong)
  {
    super(paramOutputStream);
    requests = paramRequestBatch;
    progressMap = paramMap;
    maxProgress = paramLong;
    threshold = Settings.getOnProgressThreshold();
  }
  
  private void addProgress(long paramLong)
  {
    if (currentRequestProgress != null) {
      currentRequestProgress.addProgress(paramLong);
    }
    batchProgress += paramLong;
    if ((batchProgress >= lastReportedProgress + threshold) || (batchProgress >= maxProgress)) {
      reportBatchProgress();
    }
  }
  
  private void reportBatchProgress()
  {
    if (batchProgress > lastReportedProgress)
    {
      Iterator localIterator = requests.getCallbacks().iterator();
      while (localIterator.hasNext())
      {
        Object localObject = (RequestBatch.Callback)localIterator.next();
        if ((localObject instanceof RequestBatch.OnProgressCallback))
        {
          Handler localHandler = requests.getCallbackHandler();
          localObject = (RequestBatch.OnProgressCallback)localObject;
          if (localHandler == null) {
            ((RequestBatch.OnProgressCallback)localObject).onBatchProgress(requests, batchProgress, maxProgress);
          } else {
            localHandler.post(new ProgressOutputStream.1(this, (RequestBatch.OnProgressCallback)localObject));
          }
        }
      }
      lastReportedProgress = batchProgress;
    }
  }
  
  public void close()
  {
    super.close();
    Iterator localIterator = progressMap.values().iterator();
    while (localIterator.hasNext()) {
      ((RequestProgress)localIterator.next()).reportProgress();
    }
    reportBatchProgress();
  }
  
  long getBatchProgress()
  {
    return batchProgress;
  }
  
  long getMaxProgress()
  {
    return maxProgress;
  }
  
  public void setCurrentRequest(Request paramRequest)
  {
    if (paramRequest != null) {}
    for (paramRequest = (RequestProgress)progressMap.get(paramRequest);; paramRequest = null)
    {
      currentRequestProgress = paramRequest;
      return;
    }
  }
  
  public void write(int paramInt)
  {
    out.write(paramInt);
    addProgress(1L);
  }
  
  public void write(byte[] paramArrayOfByte)
  {
    out.write(paramArrayOfByte);
    addProgress(paramArrayOfByte.length);
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    out.write(paramArrayOfByte, paramInt1, paramInt2);
    addProgress(paramInt2);
  }
}

/* Location:
 * Qualified Name:     com.facebook.ProgressOutputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */