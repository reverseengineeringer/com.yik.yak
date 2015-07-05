package com.parse;

import P;
import R;
import ad;
import android.content.Context;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.json.JSONException;
import org.json.JSONObject;

class ParseCommandCache
  extends ParseEventuallyQueue
{
  private static final String TAG = "com.parse.ParseCommandCache";
  private static int filenameCounter = 0;
  private static final Object lock = new Object();
  private File cachePath;
  private Logger log;
  private int maxCacheSizeBytes = 10485760;
  private HashMap<File, R<Object>.ad> pendingTasks = new HashMap();
  private boolean running;
  private final Object runningLock;
  private boolean shouldStop;
  private int timeoutMaxRetries = 5;
  private double timeoutRetryWaitSeconds = 600.0D;
  private boolean unprocessedCommandsExist;
  
  public ParseCommandCache(Context paramContext)
  {
    setConnected(false);
    shouldStop = false;
    running = false;
    runningLock = new Object();
    log = Logger.getLogger("com.parse.ParseCommandCache");
    cachePath = getCacheDir();
    if (!Parse.hasPermission("android.permission.ACCESS_NETWORK_STATE")) {
      return;
    }
    setConnected(ConnectivityNotifier.getNotifier().isConnected());
    ConnectivityNotifier.getNotifier().addListener(new ParseCommandCache.1(this), paramContext);
    resume();
  }
  
  private R<Object> enqueueEventuallyAsync(ParseCommand paramParseCommand, boolean paramBoolean, ParseObject paramParseObject)
  {
    int k = 0;
    Parse.requirePermission("android.permission.ACCESS_NETWORK_STATE");
    ad localad = R.a();
    if (paramParseObject != null) {}
    byte[] arrayOfByte;
    try
    {
      if (paramParseObject.getObjectId() == null) {
        paramParseCommand.setLocalId(paramParseObject.getOrCreateLocalId());
      }
      arrayOfByte = paramParseCommand.toJSONObject().toString().getBytes("UTF-8");
      if (arrayOfByte.length > maxCacheSizeBytes)
      {
        if (5 >= Parse.getLogLevel()) {
          log.warning("Unable to save command for later because it's too big.");
        }
        notifyTestHelper(4);
        return R.a(null);
      }
    }
    catch (UnsupportedEncodingException paramParseCommand)
    {
      if (5 >= Parse.getLogLevel()) {
        log.log(Level.WARNING, "UTF-8 isn't supported.  This shouldn't happen.", paramParseCommand);
      }
      notifyTestHelper(4);
      return R.a(null);
    }
    Object localObject2 = lock;
    for (;;)
    {
      try
      {
        paramParseObject = cachePath.list();
        if (paramParseObject != null)
        {
          Arrays.sort(paramParseObject);
          int m = paramParseObject.length;
          i = 0;
          int j = 0;
          if (i < m)
          {
            localObject1 = paramParseObject[i];
            j += (int)new File(cachePath, (String)localObject1).length();
            i += 1;
            continue;
          }
          j = arrayOfByte.length + j;
          if (j > maxCacheSizeBytes)
          {
            if (paramBoolean)
            {
              if (5 >= Parse.getLogLevel()) {
                log.warning("Unable to save command for later because storage is full.");
              }
              paramParseCommand = R.a(null);
              try
              {
                return paramParseCommand;
              }
              finally {}
            }
            if (5 < Parse.getLogLevel()) {
              break label610;
            }
            log.warning("Deleting old commands to make room in command cache.");
            break label610;
            if ((j > maxCacheSizeBytes) && (i < paramParseObject.length))
            {
              localObject1 = new File(cachePath, paramParseObject[i]);
              k = (int)((File)localObject1).length();
              removeFile((File)localObject1);
              j -= k;
              i += 1;
              continue;
            }
          }
        }
        paramParseObject = Long.toHexString(System.currentTimeMillis());
        if (paramParseObject.length() >= 16) {
          break label607;
        }
        Object localObject1 = new char[16 - paramParseObject.length()];
        Arrays.fill((char[])localObject1, '0');
        paramParseObject = new String((char[])localObject1) + paramParseObject;
        i = filenameCounter;
        filenameCounter = i + 1;
        String str = Integer.toHexString(i);
        localObject1 = str;
        if (str.length() < 8)
        {
          localObject1 = new char[8 - str.length()];
          Arrays.fill((char[])localObject1, '0');
          localObject1 = new String((char[])localObject1) + str;
        }
        paramParseObject = File.createTempFile("CachedCommand_" + paramParseObject + "_" + (String)localObject1 + "_", "", cachePath);
        pendingTasks.put(paramParseObject, localad);
        paramParseCommand.retainLocalIds();
        ParseFileUtils.writeByteArrayToFile(paramParseObject, arrayOfByte);
        notifyTestHelper(3);
        unprocessedCommandsExist = true;
      }
      catch (IOException paramParseCommand)
      {
        if (5 < Parse.getLogLevel()) {
          continue;
        }
        log.log(Level.WARNING, "Unable to save command for later.", paramParseCommand);
        lock.notifyAll();
        continue;
      }
      finally
      {
        lock.notifyAll();
      }
      return localad.a();
      label607:
      continue;
      label610:
      int i = k;
    }
  }
  
  private static File getCacheDir()
  {
    File localFile = new File(Parse.getParseDir(), "CommandCache");
    localFile.mkdirs();
    return localFile;
  }
  
  public static int getPendingCount()
  {
    synchronized (lock)
    {
      String[] arrayOfString = getCacheDir().list();
      if (arrayOfString == null)
      {
        i = 0;
        return i;
      }
      int i = arrayOfString.length;
    }
  }
  
  private void maybeRunAllCommandsNow(int paramInt)
  {
    String[] arrayOfString;
    synchronized (lock)
    {
      unprocessedCommandsExist = false;
      if (!isConnected()) {
        return;
      }
      arrayOfString = cachePath.list();
      if ((arrayOfString == null) || (arrayOfString.length == 0)) {
        return;
      }
    }
    Arrays.sort(arrayOfString);
    int j = arrayOfString.length;
    int i = 0;
    Object localObject2;
    File localFile;
    if (i < j)
    {
      localObject2 = arrayOfString[i];
      localFile = new File(cachePath, (String)localObject2);
    }
    for (;;)
    {
      try
      {
        localObject5 = new JSONObject(new String(ParseFileUtils.readFileToByteArray(localFile), "UTF-8"));
        if (!pendingTasks.containsKey(localFile)) {
          break label609;
        }
        localObject2 = (ad)pendingTasks.get(localFile);
      }
      catch (FileNotFoundException localFileNotFoundException)
      {
        Object localObject5;
        String str;
        if (6 < Parse.getLogLevel()) {
          continue;
        }
        log.log(Level.SEVERE, "File disappeared from cache while being read.", localFileNotFoundException);
        continue;
      }
      catch (IOException localIOException)
      {
        if (6 >= Parse.getLogLevel()) {
          log.log(Level.SEVERE, "Unable to read contents of file in cache.", localIOException);
        }
        removeFile(localFile);
        continue;
      }
      catch (JSONException localJSONException1)
      {
        if (6 >= Parse.getLogLevel()) {
          log.log(Level.SEVERE, "Error parsing JSON found in cache.", localJSONException1);
        }
        removeFile(localFile);
        continue;
      }
      try
      {
        localObject5 = new ParseCommand((JSONObject)localObject5);
      }
      catch (JSONException localJSONException2)
      {
        if (6 >= Parse.getLogLevel()) {
          log.log(Level.SEVERE, "Unable to create ParseCommand from JSON.", localJSONException2);
        }
        removeFile(localFile);
        continue;
      }
      try
      {
        str = ((ParseCommand)localObject5).getLocalId();
        waitForTaskWithoutLock(((ParseCommand)localObject5).executeAsync().b(new ParseCommandCache.4(this, (ad)localObject2, str)));
        if (localObject2 != null) {
          waitForTaskWithoutLock(((ad)localObject2).a());
        }
        removeFile(localFile);
        notifyTestHelper(1);
      }
      catch (ParseException localParseException)
      {
        if (localParseException.getCode() != 100) {
          break label568;
        }
        if (paramInt <= 0) {
          break label554;
        }
        if (4 < Parse.getLogLevel()) {
          break label417;
        }
        log.info("Network timeout in command cache. Waiting for " + timeoutRetryWaitSeconds + " seconds and then retrying " + paramInt + " times.");
        long l1 = System.currentTimeMillis();
        long l3 = (timeoutRetryWaitSeconds * 1000.0D) + l1;
        for (;;)
        {
          if (l1 < l3)
          {
            if ((!isConnected()) || (shouldStop))
            {
              if (4 >= Parse.getLogLevel()) {
                log.info("Aborting wait because runEventually thread should stop.");
              }
              return;
            }
            try
            {
              lock.wait(l3 - l1);
              long l2 = System.currentTimeMillis();
              l1 = l2;
              if (l2 < l3 - (timeoutRetryWaitSeconds * 1000.0D)) {
                l1 = l3 - (timeoutRetryWaitSeconds * 1000.0D);
              }
            }
            catch (InterruptedException localInterruptedException)
            {
              for (;;)
              {
                shouldStop = true;
              }
            }
          }
        }
        maybeRunAllCommandsNow(paramInt - 1);
        continue;
        setConnected(false);
        notifyTestHelper(7);
        continue;
        if (6 < Parse.getLogLevel()) {
          break label591;
        }
        log.log(Level.SEVERE, "Failed to run command.", localInterruptedException);
        removeFile(localFile);
        notifyTestHelper(2);
        continue;
      }
      i += 1;
      break;
      label417:
      label554:
      label568:
      label591:
      return;
      label609:
      Object localObject3 = null;
    }
  }
  
  private void removeFile(File paramFile)
  {
    synchronized (lock)
    {
      pendingTasks.remove(paramFile);
    }
    try
    {
      new ParseCommand(new JSONObject(new String(ParseFileUtils.readFileToByteArray(paramFile), "UTF-8"))).releaseLocalIds();
      ParseFileUtils.deleteQuietly(paramFile);
      return;
      paramFile = finally;
      throw paramFile;
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
  
  private void runLoop()
  {
    if (4 >= Parse.getLogLevel()) {
      log.info("Parse command cache has started processing queued commands.");
    }
    int i;
    synchronized (runningLock)
    {
      if (running) {
        return;
      }
      running = true;
      runningLock.notifyAll();
      synchronized (lock)
      {
        if ((!shouldStop) && (!Thread.interrupted()))
        {
          i = 1;
          label71:
          if (i == 0) {
            break label203;
          }
          ??? = lock;
        }
      }
    }
    for (;;)
    {
      try
      {
        maybeRunAllCommandsNow(timeoutMaxRetries);
        boolean bool = shouldStop;
        if (bool) {}
      }
      catch (Exception localException)
      {
        localException = localException;
        if (6 < Parse.getLogLevel()) {
          continue;
        }
        log.log(Level.SEVERE, "saveEventually thread had an error.", localException);
        if (shouldStop) {
          break label255;
        }
        i = 1;
        continue;
      }
      finally {}
      try
      {
        if (!unprocessedCommandsExist) {
          lock.wait();
        }
        try
        {
          if (shouldStop) {
            break label250;
          }
          i = 1;
          break label71;
        }
        finally {}
        localObject3 = finally;
        throw ((Throwable)localObject3);
        i = 0;
        break;
        localObject4 = finally;
        throw ((Throwable)localObject4);
      }
      catch (InterruptedException localInterruptedException)
      {
        shouldStop = true;
        continue;
      }
      label203:
      synchronized (runningLock)
      {
        running = false;
        runningLock.notifyAll();
        if (4 >= Parse.getLogLevel())
        {
          log.info("saveEventually thread has stopped processing commands.");
          return;
        }
      }
      return;
      label250:
      i = 0;
      continue;
      label255:
      i = 0;
    }
  }
  
  private <T> T waitForTaskWithoutLock(R<T> paramR)
  {
    synchronized (lock)
    {
      P localP = new P(Boolean.valueOf(false));
      paramR.a(new ParseCommandCache.3(this, localP), R.a);
      for (;;)
      {
        boolean bool = ((Boolean)localP.a()).booleanValue();
        if (!bool) {
          try
          {
            lock.wait();
          }
          catch (InterruptedException localInterruptedException)
          {
            shouldStop = true;
          }
        }
      }
    }
    paramR = Parse.waitForTask(paramR);
    return paramR;
  }
  
  public void clear()
  {
    synchronized (lock)
    {
      File[] arrayOfFile = cachePath.listFiles();
      if (arrayOfFile == null) {
        return;
      }
      int j = arrayOfFile.length;
      int i = 0;
      while (i < j)
      {
        removeFile(arrayOfFile[i]);
        i += 1;
      }
      pendingTasks.clear();
      return;
    }
  }
  
  public R<Object> enqueueEventuallyAsync(ParseCommand paramParseCommand, ParseObject paramParseObject)
  {
    return enqueueEventuallyAsync(paramParseCommand, false, paramParseObject);
  }
  
  void fakeObjectUpdate()
  {
    notifyTestHelper(3);
    notifyTestHelper(1);
    notifyTestHelper(5);
  }
  
  public void pause()
  {
    synchronized (runningLock)
    {
      if (running) {}
      synchronized (lock)
      {
        shouldStop = true;
        lock.notifyAll();
        for (;;)
        {
          boolean bool = running;
          if (bool) {
            try
            {
              runningLock.wait();
            }
            catch (InterruptedException localInterruptedException) {}
          }
        }
      }
    }
  }
  
  public int pendingCount()
  {
    return getPendingCount();
  }
  
  public void resume()
  {
    synchronized (runningLock)
    {
      if (!running) {
        new ParseCommandCache.2(this, "ParseCommandCache.runLoop()").start();
      }
      try
      {
        runningLock.wait();
        return;
      }
      catch (InterruptedException localInterruptedException)
      {
        synchronized (lock)
        {
          shouldStop = true;
          lock.notifyAll();
        }
      }
    }
  }
  
  public void setConnected(boolean paramBoolean)
  {
    synchronized (lock)
    {
      if ((isConnected() != paramBoolean) && (paramBoolean)) {
        lock.notifyAll();
      }
      super.setConnected(paramBoolean);
      return;
    }
  }
  
  public void setMaxCacheSizeBytes(int paramInt)
  {
    synchronized (lock)
    {
      maxCacheSizeBytes = paramInt;
      return;
    }
  }
  
  public void setTimeoutMaxRetries(int paramInt)
  {
    synchronized (lock)
    {
      timeoutMaxRetries = paramInt;
      return;
    }
  }
  
  public void setTimeoutRetryWaitSeconds(double paramDouble)
  {
    synchronized (lock)
    {
      timeoutRetryWaitSeconds = paramDouble;
      return;
    }
  }
  
  void simulateReboot()
  {
    synchronized (lock)
    {
      pendingTasks.clear();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseCommandCache
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */