package com.facebook;

import android.content.Context;
import android.graphics.Bitmap;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Map;
import java.util.UUID;

public final class NativeAppCallAttachmentStore
  implements NativeAppCallContentProvider.AttachmentDataSource
{
  static final String ATTACHMENTS_DIR_NAME = "com.facebook.NativeAppCallAttachmentStore.files";
  private static final String TAG = NativeAppCallAttachmentStore.class.getName();
  private static File attachmentsDirectory;
  
  /* Error */
  private <T> void addAttachments(Context paramContext, UUID paramUUID, Map<String, T> paramMap, NativeAppCallAttachmentStore.ProcessAttachment<T> paramProcessAttachment)
  {
    // Byte code:
    //   0: aload_3
    //   1: invokeinterface 39 1 0
    //   6: ifne +4 -> 10
    //   9: return
    //   10: getstatic 41	com/facebook/NativeAppCallAttachmentStore:attachmentsDirectory	Ljava/io/File;
    //   13: ifnonnull +8 -> 21
    //   16: aload_0
    //   17: aload_1
    //   18: invokevirtual 45	com/facebook/NativeAppCallAttachmentStore:cleanupAllAttachments	(Landroid/content/Context;)V
    //   21: aload_0
    //   22: aload_1
    //   23: invokevirtual 49	com/facebook/NativeAppCallAttachmentStore:ensureAttachmentsDirectoryExists	(Landroid/content/Context;)Ljava/io/File;
    //   26: pop
    //   27: new 51	java/util/ArrayList
    //   30: dup
    //   31: invokespecial 52	java/util/ArrayList:<init>	()V
    //   34: astore_1
    //   35: aload_3
    //   36: invokeinterface 56 1 0
    //   41: invokeinterface 62 1 0
    //   46: astore_3
    //   47: aload_3
    //   48: invokeinterface 68 1 0
    //   53: ifeq -44 -> 9
    //   56: aload_3
    //   57: invokeinterface 72 1 0
    //   62: checkcast 74	java/util/Map$Entry
    //   65: astore 6
    //   67: aload 6
    //   69: invokeinterface 77 1 0
    //   74: checkcast 79	java/lang/String
    //   77: astore 5
    //   79: aload 6
    //   81: invokeinterface 82 1 0
    //   86: astore 6
    //   88: aload_0
    //   89: aload_2
    //   90: aload 5
    //   92: iconst_1
    //   93: invokevirtual 86	com/facebook/NativeAppCallAttachmentStore:getAttachmentFile	(Ljava/util/UUID;Ljava/lang/String;Z)Ljava/io/File;
    //   96: astore 5
    //   98: aload_1
    //   99: aload 5
    //   101: invokeinterface 92 2 0
    //   106: pop
    //   107: aload 4
    //   109: aload 6
    //   111: aload 5
    //   113: invokeinterface 98 3 0
    //   118: goto -71 -> 47
    //   121: astore_2
    //   122: new 100	java/lang/StringBuilder
    //   125: dup
    //   126: invokespecial 101	java/lang/StringBuilder:<init>	()V
    //   129: ldc 103
    //   131: invokevirtual 107	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   134: aload_2
    //   135: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   138: invokevirtual 113	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   141: pop
    //   142: aload_1
    //   143: invokeinterface 114 1 0
    //   148: astore_1
    //   149: aload_1
    //   150: invokeinterface 68 1 0
    //   155: ifeq +25 -> 180
    //   158: aload_1
    //   159: invokeinterface 72 1 0
    //   164: checkcast 116	java/io/File
    //   167: astore_3
    //   168: aload_3
    //   169: invokevirtual 119	java/io/File:delete	()Z
    //   172: pop
    //   173: goto -24 -> 149
    //   176: astore_3
    //   177: goto -28 -> 149
    //   180: new 121	com/facebook/FacebookException
    //   183: dup
    //   184: aload_2
    //   185: invokespecial 124	com/facebook/FacebookException:<init>	(Ljava/lang/Throwable;)V
    //   188: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	189	0	this	NativeAppCallAttachmentStore
    //   0	189	1	paramContext	Context
    //   0	189	2	paramUUID	UUID
    //   0	189	3	paramMap	Map<String, T>
    //   0	189	4	paramProcessAttachment	NativeAppCallAttachmentStore.ProcessAttachment<T>
    //   77	35	5	localObject1	Object
    //   65	45	6	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   35	47	121	java/io/IOException
    //   47	118	121	java/io/IOException
    //   168	173	176	java/lang/Exception
  }
  
  static File getAttachmentsDirectory(Context paramContext)
  {
    try
    {
      if (attachmentsDirectory == null) {
        attachmentsDirectory = new File(paramContext.getCacheDir(), "com.facebook.NativeAppCallAttachmentStore.files");
      }
      paramContext = attachmentsDirectory;
      return paramContext;
    }
    finally {}
  }
  
  public void addAttachmentFilesForCall(Context paramContext, UUID paramUUID, Map<String, File> paramMap)
  {
    Validate.notNull(paramContext, "context");
    Validate.notNull(paramUUID, "callId");
    Validate.containsNoNulls(paramMap.values(), "mediaAttachmentFiles");
    Validate.containsNoNullOrEmpty(paramMap.keySet(), "mediaAttachmentFiles");
    addAttachments(paramContext, paramUUID, paramMap, new NativeAppCallAttachmentStore.2(this));
  }
  
  public void addAttachmentsForCall(Context paramContext, UUID paramUUID, Map<String, Bitmap> paramMap)
  {
    Validate.notNull(paramContext, "context");
    Validate.notNull(paramUUID, "callId");
    Validate.containsNoNulls(paramMap.values(), "imageAttachments");
    Validate.containsNoNullOrEmpty(paramMap.keySet(), "imageAttachments");
    addAttachments(paramContext, paramUUID, paramMap, new NativeAppCallAttachmentStore.1(this));
  }
  
  void cleanupAllAttachments(Context paramContext)
  {
    Utility.deleteDirectory(getAttachmentsDirectory(paramContext));
  }
  
  public void cleanupAttachmentsForCall(Context paramContext, UUID paramUUID)
  {
    Utility.deleteDirectory(getAttachmentsDirectoryForCall(paramUUID, false));
  }
  
  File ensureAttachmentsDirectoryExists(Context paramContext)
  {
    paramContext = getAttachmentsDirectory(paramContext);
    paramContext.mkdirs();
    return paramContext;
  }
  
  File getAttachmentFile(UUID paramUUID, String paramString, boolean paramBoolean)
  {
    paramUUID = getAttachmentsDirectoryForCall(paramUUID, paramBoolean);
    if (paramUUID == null) {
      return null;
    }
    try
    {
      paramUUID = new File(paramUUID, URLEncoder.encode(paramString, "UTF-8"));
      return paramUUID;
    }
    catch (UnsupportedEncodingException paramUUID) {}
    return null;
  }
  
  File getAttachmentsDirectoryForCall(UUID paramUUID, boolean paramBoolean)
  {
    if (attachmentsDirectory == null) {
      paramUUID = null;
    }
    File localFile;
    do
    {
      do
      {
        return paramUUID;
        localFile = new File(attachmentsDirectory, paramUUID.toString());
        paramUUID = localFile;
      } while (!paramBoolean);
      paramUUID = localFile;
    } while (localFile.exists());
    localFile.mkdirs();
    return localFile;
  }
  
  public File openAttachment(UUID paramUUID, String paramString)
  {
    if ((Utility.isNullOrEmpty(paramString)) || (paramUUID == null)) {
      throw new FileNotFoundException();
    }
    try
    {
      paramUUID = getAttachmentFile(paramUUID, paramString, false);
      return paramUUID;
    }
    catch (IOException paramUUID)
    {
      throw new FileNotFoundException();
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.NativeAppCallAttachmentStore
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */