package com.parse;

import N;
import Z;
import android.content.Context;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

class ParsePinningEventuallyQueue
  extends ParseEventuallyQueue
{
  private static final String TAG = "ParsePinningEventuallyQueue";
  private final Object connectionLock = new Object();
  private N<Void>.Z connectionTaskCompletionSource = N.a();
  private ArrayList<String> eventuallyPinUUIDQueue = new ArrayList();
  private TaskQueue operationSetTaskQueue = new TaskQueue();
  private HashMap<String, N<Object>.Z> pendingEventuallyTasks = new HashMap();
  private HashMap<String, N<Object>.Z> pendingOperationSetUUIDTasks = new HashMap();
  private TaskQueue taskQueue = new TaskQueue();
  private final Object taskQueueSyncLock = new Object();
  private HashMap<String, EventuallyPin> uuidToEventuallyPin = new HashMap();
  private HashMap<String, ParseOperationSet> uuidToOperationSet = new HashMap();
  
  public ParsePinningEventuallyQueue(Context paramContext)
  {
    setConnected(ConnectivityNotifier.getNotifier().isConnected());
    ConnectivityNotifier.getNotifier().addListener(new ParsePinningEventuallyQueue.1(this), paramContext);
    resume();
  }
  
  private N<Void> enqueueEventuallyAsync(ParseCommand paramParseCommand, ParseObject paramParseObject, N<Void> paramN, N<Object>.Z paramN1)
  {
    return paramN.b(new ParsePinningEventuallyQueue.5(this, paramParseObject, paramParseCommand, paramN1));
  }
  
  private N<Void> populateQueueAsync()
  {
    return taskQueue.enqueue(new ParsePinningEventuallyQueue.6(this));
  }
  
  private N<Void> populateQueueAsync(N<Void> paramN)
  {
    return paramN.b(new ParsePinningEventuallyQueue.8(this)).d(new ParsePinningEventuallyQueue.7(this));
  }
  
  private N<Object> process(EventuallyPin paramEventuallyPin, ParseOperationSet paramParseOperationSet)
  {
    return waitForConnectionAsync().d(new ParsePinningEventuallyQueue.13(this, paramEventuallyPin, paramParseOperationSet));
  }
  
  private N<Void> runEventuallyAsync(EventuallyPin paramEventuallyPin)
  {
    String str = paramEventuallyPin.getUUID();
    if (eventuallyPinUUIDQueue.contains(str)) {
      return N.a(null);
    }
    eventuallyPinUUIDQueue.add(str);
    operationSetTaskQueue.enqueue(new ParsePinningEventuallyQueue.9(this, paramEventuallyPin, str));
    return N.a(null);
  }
  
  private N<Void> runEventuallyAsync(EventuallyPin paramEventuallyPin, N<Void> paramN)
  {
    return paramN.b(new ParsePinningEventuallyQueue.11(this)).d(new ParsePinningEventuallyQueue.10(this, paramEventuallyPin));
  }
  
  private N<Void> waitForConnectionAsync()
  {
    synchronized (connectionLock)
    {
      N localN = connectionTaskCompletionSource.a();
      return localN;
    }
  }
  
  private N<Void> whenAll(Collection<TaskQueue> paramCollection)
  {
    ArrayList localArrayList = new ArrayList();
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext()) {
      localArrayList.add(((TaskQueue)paramCollection.next()).enqueue(new ParsePinningEventuallyQueue.15(this)));
    }
    return N.a(localArrayList);
  }
  
  public void clear()
  {
    pause();
    N localN = taskQueue.enqueue(new ParsePinningEventuallyQueue.14(this));
    try
    {
      Parse.waitForTask(localN);
      simulateReboot();
      resume();
      return;
    }
    catch (ParseException localParseException)
    {
      throw new IllegalStateException(localParseException);
    }
  }
  
  public N<Object> enqueueEventuallyAsync(ParseCommand paramParseCommand, ParseObject paramParseObject)
  {
    Parse.requirePermission("android.permission.ACCESS_NETWORK_STATE");
    Z localZ = N.a();
    taskQueue.enqueue(new ParsePinningEventuallyQueue.4(this, paramParseCommand, paramParseObject, localZ));
    return localZ.a();
  }
  
  public void pause()
  {
    synchronized (connectionLock)
    {
      connectionTaskCompletionSource.a(new ParsePinningEventuallyQueue.PauseException(null));
      connectionTaskCompletionSource = N.a();
      connectionTaskCompletionSource.a(new ParsePinningEventuallyQueue.PauseException(null));
      synchronized (taskQueueSyncLock)
      {
        Iterator localIterator = pendingEventuallyTasks.keySet().iterator();
        if (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          ((Z)pendingEventuallyTasks.get(str)).a(new ParsePinningEventuallyQueue.PauseException(null));
        }
      }
    }
    pendingEventuallyTasks.clear();
    uuidToOperationSet.clear();
    uuidToEventuallyPin.clear();
    try
    {
      Parse.waitForTask(whenAll(Arrays.asList(new TaskQueue[] { taskQueue, operationSetTaskQueue })));
      return;
    }
    catch (ParseException localParseException)
    {
      throw new IllegalStateException(localParseException);
    }
  }
  
  public int pendingCount()
  {
    try
    {
      int i = ((Integer)Parse.waitForTask(pendingCountAsync())).intValue();
      return i;
    }
    catch (ParseException localParseException)
    {
      throw new IllegalStateException(localParseException);
    }
  }
  
  public N<Integer> pendingCountAsync()
  {
    Z localZ = N.a();
    taskQueue.enqueue(new ParsePinningEventuallyQueue.2(this, localZ));
    return localZ.a();
  }
  
  public N<Integer> pendingCountAsync(N<Void> paramN)
  {
    return paramN.b(new ParsePinningEventuallyQueue.3(this));
  }
  
  public void resume()
  {
    setConnected(isConnected());
    populateQueueAsync();
  }
  
  public void setConnected(boolean paramBoolean)
  {
    synchronized (connectionLock)
    {
      super.setConnected(paramBoolean);
      if (paramBoolean)
      {
        connectionTaskCompletionSource.a(null);
        connectionTaskCompletionSource = N.a();
        connectionTaskCompletionSource.a(null);
        return;
      }
      connectionTaskCompletionSource = N.a();
    }
  }
  
  void simulateReboot()
  {
    pause();
    pendingOperationSetUUIDTasks.clear();
    pendingEventuallyTasks.clear();
    uuidToOperationSet.clear();
    uuidToEventuallyPin.clear();
    resume();
  }
  
  N<Object> waitForOperationSetAndEventuallyPin(ParseOperationSet paramParseOperationSet, EventuallyPin paramEventuallyPin)
  {
    if ((paramEventuallyPin != null) && (paramEventuallyPin.getType() != 1)) {
      return process(paramEventuallyPin, null);
    }
    Object localObject = taskQueueSyncLock;
    if ((paramParseOperationSet != null) && (paramEventuallyPin == null)) {}
    ParseOperationSet localParseOperationSet;
    for (;;)
    {
      try
      {
        paramEventuallyPin = paramParseOperationSet.getUUID();
        uuidToOperationSet.put(paramEventuallyPin, paramParseOperationSet);
        paramParseOperationSet = paramEventuallyPin;
        paramEventuallyPin = (EventuallyPin)uuidToEventuallyPin.get(paramParseOperationSet);
        localParseOperationSet = (ParseOperationSet)uuidToOperationSet.get(paramParseOperationSet);
        if ((paramEventuallyPin != null) && (localParseOperationSet != null)) {
          break;
        }
        if (!pendingEventuallyTasks.containsKey(paramParseOperationSet)) {
          break label159;
        }
        paramParseOperationSet = (Z)pendingEventuallyTasks.get(paramParseOperationSet);
        paramParseOperationSet = paramParseOperationSet.a();
        return paramParseOperationSet;
      }
      finally {}
      if ((paramParseOperationSet == null) && (paramEventuallyPin != null))
      {
        paramParseOperationSet = paramEventuallyPin.getOperationSetUUID();
        uuidToEventuallyPin.put(paramParseOperationSet, paramEventuallyPin);
      }
      else
      {
        throw new IllegalStateException("Either operationSet or eventuallyPin must be set.");
        label159:
        paramEventuallyPin = N.a();
        pendingEventuallyTasks.put(paramParseOperationSet, paramEventuallyPin);
        paramParseOperationSet = paramEventuallyPin;
      }
    }
    Z localZ = (Z)pendingEventuallyTasks.get(paramParseOperationSet);
    return process(paramEventuallyPin, localParseOperationSet).b(new ParsePinningEventuallyQueue.12(this, paramParseOperationSet, localZ));
  }
}

/* Location:
 * Qualified Name:     com.parse.ParsePinningEventuallyQueue
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */