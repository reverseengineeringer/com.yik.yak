package com.adjust.sdk;

import android.content.Context;
import android.os.HandlerThread;
import android.os.Message;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

public class PackageHandler
  extends HandlerThread
  implements IPackageHandler
{
  private static final String PACKAGE_QUEUE_FILENAME = "AdjustIoPackageQueue";
  private ActivityHandler activityHandler;
  private Context context;
  private boolean dropOfflineActivities;
  private final PackageHandler.InternalHandler internalHandler;
  private AtomicBoolean isSending;
  private Logger logger;
  private List<ActivityPackage> packageQueue;
  private boolean paused;
  private IRequestHandler requestHandler;
  
  public PackageHandler(ActivityHandler paramActivityHandler, Context paramContext, boolean paramBoolean)
  {
    super("Adjust", 1);
    setDaemon(true);
    start();
    internalHandler = new PackageHandler.InternalHandler(getLooper(), this);
    logger = AdjustFactory.getLogger();
    activityHandler = paramActivityHandler;
    context = paramContext;
    dropOfflineActivities = paramBoolean;
    paramActivityHandler = Message.obtain();
    arg1 = 1;
    internalHandler.sendMessage(paramActivityHandler);
  }
  
  private void addInternal(ActivityPackage paramActivityPackage)
  {
    packageQueue.add(paramActivityPackage);
    logger.debug("Added package %d (%s)", new Object[] { Integer.valueOf(packageQueue.size()), paramActivityPackage });
    logger.verbose(paramActivityPackage.getExtendedString(), new Object[0]);
    writePackageQueue();
  }
  
  public static Boolean deletePackageQueue(Context paramContext)
  {
    return Boolean.valueOf(paramContext.deleteFile("AdjustIoPackageQueue"));
  }
  
  private void initInternal()
  {
    requestHandler = AdjustFactory.getRequestHandler(this);
    isSending = new AtomicBoolean();
    readPackageQueue();
  }
  
  /* Error */
  private void readPackageQueue()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 68	com/adjust/sdk/PackageHandler:dropOfflineActivities	Z
    //   4: ifeq +15 -> 19
    //   7: aload_0
    //   8: new 184	java/util/ArrayList
    //   11: dup
    //   12: invokespecial 185	java/util/ArrayList:<init>	()V
    //   15: putfield 104	com/adjust/sdk/PackageHandler:packageQueue	Ljava/util/List;
    //   18: return
    //   19: new 187	java/io/ObjectInputStream
    //   22: dup
    //   23: new 189	java/io/BufferedInputStream
    //   26: dup
    //   27: aload_0
    //   28: getfield 66	com/adjust/sdk/PackageHandler:context	Landroid/content/Context;
    //   31: ldc 10
    //   33: invokevirtual 193	android/content/Context:openFileInput	(Ljava/lang/String;)Ljava/io/FileInputStream;
    //   36: invokespecial 196	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   39: invokespecial 197	java/io/ObjectInputStream:<init>	(Ljava/io/InputStream;)V
    //   42: astore_1
    //   43: aload_1
    //   44: invokevirtual 201	java/io/ObjectInputStream:readObject	()Ljava/lang/Object;
    //   47: checkcast 106	java/util/List
    //   50: astore_2
    //   51: aload_0
    //   52: getfield 62	com/adjust/sdk/PackageHandler:logger	Lcom/adjust/sdk/Logger;
    //   55: ldc -53
    //   57: iconst_1
    //   58: anewarray 114	java/lang/Object
    //   61: dup
    //   62: iconst_0
    //   63: aload_2
    //   64: invokeinterface 118 1 0
    //   69: invokestatic 124	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   72: aastore
    //   73: invokeinterface 130 3 0
    //   78: aload_0
    //   79: aload_2
    //   80: putfield 104	com/adjust/sdk/PackageHandler:packageQueue	Ljava/util/List;
    //   83: aload_1
    //   84: invokevirtual 206	java/io/ObjectInputStream:close	()V
    //   87: return
    //   88: astore_1
    //   89: aload_0
    //   90: getfield 62	com/adjust/sdk/PackageHandler:logger	Lcom/adjust/sdk/Logger;
    //   93: ldc -48
    //   95: iconst_0
    //   96: anewarray 114	java/lang/Object
    //   99: invokeinterface 139 3 0
    //   104: aload_0
    //   105: new 184	java/util/ArrayList
    //   108: dup
    //   109: invokespecial 185	java/util/ArrayList:<init>	()V
    //   112: putfield 104	com/adjust/sdk/PackageHandler:packageQueue	Ljava/util/List;
    //   115: return
    //   116: astore_2
    //   117: aload_0
    //   118: getfield 62	com/adjust/sdk/PackageHandler:logger	Lcom/adjust/sdk/Logger;
    //   121: ldc -46
    //   123: iconst_0
    //   124: anewarray 114	java/lang/Object
    //   127: invokeinterface 213 3 0
    //   132: aload_1
    //   133: invokevirtual 206	java/io/ObjectInputStream:close	()V
    //   136: goto -32 -> 104
    //   139: astore_1
    //   140: aload_0
    //   141: getfield 62	com/adjust/sdk/PackageHandler:logger	Lcom/adjust/sdk/Logger;
    //   144: ldc -41
    //   146: iconst_0
    //   147: anewarray 114	java/lang/Object
    //   150: invokeinterface 213 3 0
    //   155: goto -51 -> 104
    //   158: astore_2
    //   159: aload_1
    //   160: invokevirtual 206	java/io/ObjectInputStream:close	()V
    //   163: goto -59 -> 104
    //   166: astore_2
    //   167: aload_0
    //   168: getfield 62	com/adjust/sdk/PackageHandler:logger	Lcom/adjust/sdk/Logger;
    //   171: ldc -39
    //   173: iconst_0
    //   174: anewarray 114	java/lang/Object
    //   177: invokeinterface 213 3 0
    //   182: aload_1
    //   183: invokevirtual 206	java/io/ObjectInputStream:close	()V
    //   186: goto -82 -> 104
    //   189: astore_2
    //   190: aload_0
    //   191: getfield 62	com/adjust/sdk/PackageHandler:logger	Lcom/adjust/sdk/Logger;
    //   194: ldc -37
    //   196: iconst_0
    //   197: anewarray 114	java/lang/Object
    //   200: invokeinterface 213 3 0
    //   205: aload_1
    //   206: invokevirtual 206	java/io/ObjectInputStream:close	()V
    //   209: goto -105 -> 104
    //   212: astore_2
    //   213: aload_1
    //   214: invokevirtual 206	java/io/ObjectInputStream:close	()V
    //   217: aload_2
    //   218: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	219	0	this	PackageHandler
    //   42	42	1	localObjectInputStream	java.io.ObjectInputStream
    //   88	45	1	localFileNotFoundException	java.io.FileNotFoundException
    //   139	75	1	localException	Exception
    //   50	30	2	localList	List
    //   116	1	2	localClassNotFoundException	ClassNotFoundException
    //   158	1	2	localOptionalDataException	java.io.OptionalDataException
    //   166	1	2	localIOException	java.io.IOException
    //   189	1	2	localClassCastException	ClassCastException
    //   212	6	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   19	43	88	java/io/FileNotFoundException
    //   83	87	88	java/io/FileNotFoundException
    //   132	136	88	java/io/FileNotFoundException
    //   159	163	88	java/io/FileNotFoundException
    //   182	186	88	java/io/FileNotFoundException
    //   205	209	88	java/io/FileNotFoundException
    //   213	219	88	java/io/FileNotFoundException
    //   43	83	116	java/lang/ClassNotFoundException
    //   19	43	139	java/lang/Exception
    //   83	87	139	java/lang/Exception
    //   132	136	139	java/lang/Exception
    //   159	163	139	java/lang/Exception
    //   182	186	139	java/lang/Exception
    //   205	209	139	java/lang/Exception
    //   213	219	139	java/lang/Exception
    //   43	83	158	java/io/OptionalDataException
    //   43	83	166	java/io/IOException
    //   43	83	189	java/lang/ClassCastException
    //   43	83	212	finally
    //   117	132	212	finally
    //   167	182	212	finally
    //   190	205	212	finally
  }
  
  private void sendFirstInternal()
  {
    if (packageQueue.isEmpty()) {
      return;
    }
    if (paused)
    {
      logger.debug("Package handler is paused", new Object[0]);
      return;
    }
    if (isSending.getAndSet(true))
    {
      logger.verbose("Package handler is already sending", new Object[0]);
      return;
    }
    ActivityPackage localActivityPackage = (ActivityPackage)packageQueue.get(0);
    requestHandler.sendPackage(localActivityPackage);
  }
  
  private void sendNextInternal()
  {
    packageQueue.remove(0);
    writePackageQueue();
    isSending.set(false);
    sendFirstInternal();
  }
  
  /* Error */
  private void writePackageQueue()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 68	com/adjust/sdk/PackageHandler:dropOfflineActivities	Z
    //   4: ifeq +4 -> 8
    //   7: return
    //   8: new 252	java/io/ObjectOutputStream
    //   11: dup
    //   12: new 254	java/io/BufferedOutputStream
    //   15: dup
    //   16: aload_0
    //   17: getfield 66	com/adjust/sdk/PackageHandler:context	Landroid/content/Context;
    //   20: ldc 10
    //   22: iconst_0
    //   23: invokevirtual 258	android/content/Context:openFileOutput	(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    //   26: invokespecial 261	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   29: invokespecial 262	java/io/ObjectOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   32: astore_1
    //   33: aload_1
    //   34: aload_0
    //   35: getfield 104	com/adjust/sdk/PackageHandler:packageQueue	Ljava/util/List;
    //   38: invokevirtual 266	java/io/ObjectOutputStream:writeObject	(Ljava/lang/Object;)V
    //   41: aload_0
    //   42: getfield 62	com/adjust/sdk/PackageHandler:logger	Lcom/adjust/sdk/Logger;
    //   45: ldc_w 268
    //   48: iconst_1
    //   49: anewarray 114	java/lang/Object
    //   52: dup
    //   53: iconst_0
    //   54: aload_0
    //   55: getfield 104	com/adjust/sdk/PackageHandler:packageQueue	Ljava/util/List;
    //   58: invokeinterface 118 1 0
    //   63: invokestatic 124	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   66: aastore
    //   67: invokeinterface 130 3 0
    //   72: aload_1
    //   73: invokevirtual 269	java/io/ObjectOutputStream:close	()V
    //   76: return
    //   77: astore_1
    //   78: aload_0
    //   79: getfield 62	com/adjust/sdk/PackageHandler:logger	Lcom/adjust/sdk/Logger;
    //   82: ldc_w 271
    //   85: iconst_1
    //   86: anewarray 114	java/lang/Object
    //   89: dup
    //   90: iconst_0
    //   91: aload_1
    //   92: invokevirtual 274	java/lang/Exception:getLocalizedMessage	()Ljava/lang/String;
    //   95: aastore
    //   96: invokeinterface 213 3 0
    //   101: aload_1
    //   102: invokevirtual 277	java/lang/Exception:printStackTrace	()V
    //   105: return
    //   106: astore_2
    //   107: aload_0
    //   108: getfield 62	com/adjust/sdk/PackageHandler:logger	Lcom/adjust/sdk/Logger;
    //   111: ldc_w 279
    //   114: iconst_0
    //   115: anewarray 114	java/lang/Object
    //   118: invokeinterface 213 3 0
    //   123: aload_1
    //   124: invokevirtual 269	java/io/ObjectOutputStream:close	()V
    //   127: return
    //   128: astore_2
    //   129: aload_1
    //   130: invokevirtual 269	java/io/ObjectOutputStream:close	()V
    //   133: aload_2
    //   134: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	135	0	this	PackageHandler
    //   32	41	1	localObjectOutputStream	java.io.ObjectOutputStream
    //   77	53	1	localException	Exception
    //   106	1	2	localNotSerializableException	java.io.NotSerializableException
    //   128	6	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   8	33	77	java/lang/Exception
    //   72	76	77	java/lang/Exception
    //   123	127	77	java/lang/Exception
    //   129	135	77	java/lang/Exception
    //   33	72	106	java/io/NotSerializableException
    //   33	72	128	finally
    //   107	123	128	finally
  }
  
  public void addPackage(ActivityPackage paramActivityPackage)
  {
    Message localMessage = Message.obtain();
    arg1 = 2;
    obj = paramActivityPackage;
    internalHandler.sendMessage(localMessage);
  }
  
  public void closeFirstPackage()
  {
    if (dropOfflineActivities)
    {
      sendNextPackage();
      return;
    }
    isSending.set(false);
  }
  
  public boolean dropsOfflineActivities()
  {
    return dropOfflineActivities;
  }
  
  public void finishedTrackingActivity(ActivityPackage paramActivityPackage, ResponseData paramResponseData, JSONObject paramJSONObject)
  {
    Object localObject = null;
    paramResponseData.setActivityKind(paramActivityPackage.getActivityKind());
    paramActivityPackage = (ActivityPackage)localObject;
    if (paramJSONObject != null) {
      paramActivityPackage = paramJSONObject.optString("deeplink", null);
    }
    activityHandler.finishedTrackingActivity(paramResponseData, paramActivityPackage);
  }
  
  public String getFailureMessage()
  {
    if (dropOfflineActivities) {
      return "Dropping offline activity.";
    }
    return "Will retry later.";
  }
  
  public void pauseSending()
  {
    paused = true;
  }
  
  public void resumeSending()
  {
    paused = false;
  }
  
  public void sendFirstPackage()
  {
    Message localMessage = Message.obtain();
    arg1 = 4;
    internalHandler.sendMessage(localMessage);
  }
  
  public void sendNextPackage()
  {
    Message localMessage = Message.obtain();
    arg1 = 3;
    internalHandler.sendMessage(localMessage);
  }
}

/* Location:
 * Qualified Name:     com.adjust.sdk.PackageHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */