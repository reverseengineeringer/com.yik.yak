package com.facebook.internal;

import com.facebook.Settings;
import java.util.concurrent.Executor;

class WorkQueue
{
  public static final int DEFAULT_MAX_CONCURRENT = 8;
  private final Executor executor;
  private final int maxConcurrent;
  private WorkQueue.WorkNode pendingJobs;
  private int runningCount = 0;
  private WorkQueue.WorkNode runningJobs = null;
  private final Object workLock = new Object();
  
  static
  {
    if (!WorkQueue.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  WorkQueue()
  {
    this(8);
  }
  
  WorkQueue(int paramInt)
  {
    this(paramInt, Settings.getExecutor());
  }
  
  WorkQueue(int paramInt, Executor paramExecutor)
  {
    maxConcurrent = paramInt;
    executor = paramExecutor;
  }
  
  private void execute(WorkQueue.WorkNode paramWorkNode)
  {
    executor.execute(new WorkQueue.1(this, paramWorkNode));
  }
  
  private void finishItemAndStartNew(WorkQueue.WorkNode paramWorkNode)
  {
    WorkQueue.WorkNode localWorkNode = null;
    Object localObject = workLock;
    if (paramWorkNode != null) {}
    try
    {
      runningJobs = paramWorkNode.removeFromList(runningJobs);
      runningCount -= 1;
      paramWorkNode = localWorkNode;
      if (runningCount < maxConcurrent)
      {
        localWorkNode = pendingJobs;
        paramWorkNode = localWorkNode;
        if (localWorkNode != null)
        {
          pendingJobs = localWorkNode.removeFromList(pendingJobs);
          runningJobs = localWorkNode.addToList(runningJobs, false);
          runningCount += 1;
          localWorkNode.setIsRunning(true);
          paramWorkNode = localWorkNode;
        }
      }
      if (paramWorkNode != null) {
        execute(paramWorkNode);
      }
      return;
    }
    finally {}
  }
  
  private void startItem()
  {
    finishItemAndStartNew(null);
  }
  
  WorkQueue.WorkItem addActiveWorkItem(Runnable paramRunnable)
  {
    return addActiveWorkItem(paramRunnable, true);
  }
  
  WorkQueue.WorkItem addActiveWorkItem(Runnable arg1, boolean paramBoolean)
  {
    WorkQueue.WorkNode localWorkNode = new WorkQueue.WorkNode(this, ???);
    synchronized (workLock)
    {
      pendingJobs = localWorkNode.addToList(pendingJobs, paramBoolean);
      startItem();
      return localWorkNode;
    }
  }
  
  void validate()
  {
    Object localObject3 = workLock;
    int j = 0;
    int i = 0;
    try
    {
      if (runningJobs != null)
      {
        Object localObject1 = runningJobs;
        WorkQueue.WorkNode localWorkNode;
        do
        {
          ((WorkQueue.WorkNode)localObject1).verify(true);
          j = i + 1;
          localWorkNode = ((WorkQueue.WorkNode)localObject1).getNext();
          i = j;
          localObject1 = localWorkNode;
        } while (localWorkNode != runningJobs);
      }
      if ((!$assertionsDisabled) && (runningCount != j)) {
        throw new AssertionError();
      }
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.WorkQueue
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */