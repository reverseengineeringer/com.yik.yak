package com.parse;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

class ParseFileUtils
{
  private static final long FILE_COPY_BUFFER_SIZE = 31457280L;
  public static final long ONE_KB = 1024L;
  public static final long ONE_MB = 1048576L;
  
  public static void cleanDirectory(File paramFile)
  {
    if (!paramFile.exists()) {
      throw new IllegalArgumentException(paramFile + " does not exist");
    }
    if (!paramFile.isDirectory()) {
      throw new IllegalArgumentException(paramFile + " is not a directory");
    }
    File[] arrayOfFile = paramFile.listFiles();
    if (arrayOfFile == null) {
      throw new IOException("Failed to list contents of " + paramFile);
    }
    int j = arrayOfFile.length;
    paramFile = null;
    int i = 0;
    for (;;)
    {
      File localFile;
      if (i < j) {
        localFile = arrayOfFile[i];
      }
      try
      {
        forceDelete(localFile);
        i += 1;
        continue;
        if (paramFile != null) {
          throw paramFile;
        }
      }
      catch (IOException paramFile)
      {
        for (;;) {}
      }
    }
  }
  
  public static void copyFile(File paramFile1, File paramFile2)
  {
    copyFile(paramFile1, paramFile2, true);
  }
  
  public static void copyFile(File paramFile1, File paramFile2, boolean paramBoolean)
  {
    if (paramFile1 == null) {
      throw new NullPointerException("Source must not be null");
    }
    if (paramFile2 == null) {
      throw new NullPointerException("Destination must not be null");
    }
    if (!paramFile1.exists()) {
      throw new FileNotFoundException("Source '" + paramFile1 + "' does not exist");
    }
    if (paramFile1.isDirectory()) {
      throw new IOException("Source '" + paramFile1 + "' exists but is a directory");
    }
    if (paramFile1.getCanonicalPath().equals(paramFile2.getCanonicalPath())) {
      throw new IOException("Source '" + paramFile1 + "' and destination '" + paramFile2 + "' are the same");
    }
    File localFile = paramFile2.getParentFile();
    if ((localFile != null) && (!localFile.mkdirs()) && (!localFile.isDirectory())) {
      throw new IOException("Destination '" + localFile + "' directory cannot be created");
    }
    if ((paramFile2.exists()) && (!paramFile2.canWrite())) {
      throw new IOException("Destination '" + paramFile2 + "' exists but is read-only");
    }
    doCopyFile(paramFile1, paramFile2, paramBoolean);
  }
  
  public static void deleteDirectory(File paramFile)
  {
    if (!paramFile.exists()) {}
    do
    {
      return;
      if (!isSymlink(paramFile)) {
        cleanDirectory(paramFile);
      }
    } while (paramFile.delete());
    throw new IOException("Unable to delete directory " + paramFile + ".");
  }
  
  public static boolean deleteQuietly(File paramFile)
  {
    if (paramFile == null) {
      return false;
    }
    try
    {
      if (paramFile.isDirectory()) {
        cleanDirectory(paramFile);
      }
      try
      {
        boolean bool = paramFile.delete();
        return bool;
      }
      catch (Exception paramFile)
      {
        return false;
      }
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
  
  /* Error */
  private static void doCopyFile(File paramFile1, File paramFile2, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 29	java/io/File:exists	()Z
    //   4: ifeq +42 -> 46
    //   7: aload_1
    //   8: invokevirtual 53	java/io/File:isDirectory	()Z
    //   11: ifeq +35 -> 46
    //   14: new 23	java/io/IOException
    //   17: dup
    //   18: new 33	java/lang/StringBuilder
    //   21: dup
    //   22: invokespecial 34	java/lang/StringBuilder:<init>	()V
    //   25: ldc 108
    //   27: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   30: aload_1
    //   31: invokevirtual 38	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   34: ldc 86
    //   36: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   39: invokevirtual 47	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   42: invokespecial 62	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   45: athrow
    //   46: aconst_null
    //   47: astore 12
    //   49: aconst_null
    //   50: astore 13
    //   52: new 137	java/io/FileInputStream
    //   55: dup
    //   56: aload_0
    //   57: invokespecial 139	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   60: astore 11
    //   62: new 141	java/io/FileOutputStream
    //   65: dup
    //   66: aload_1
    //   67: invokespecial 142	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   70: astore 12
    //   72: aload 11
    //   74: invokevirtual 146	java/io/FileInputStream:getChannel	()Ljava/nio/channels/FileChannel;
    //   77: astore 13
    //   79: aload 12
    //   81: invokevirtual 147	java/io/FileOutputStream:getChannel	()Ljava/nio/channels/FileChannel;
    //   84: astore 15
    //   86: aload 13
    //   88: invokevirtual 153	java/nio/channels/FileChannel:size	()J
    //   91: lstore 9
    //   93: lconst_0
    //   94: lstore_3
    //   95: goto +243 -> 338
    //   98: aload 15
    //   100: aload 13
    //   102: lload_3
    //   103: lload 5
    //   105: invokevirtual 157	java/nio/channels/FileChannel:transferFrom	(Ljava/nio/channels/ReadableByteChannel;JJ)J
    //   108: lstore 5
    //   110: lload 5
    //   112: lconst_0
    //   113: lcmp
    //   114: ifne +96 -> 210
    //   117: aload 15
    //   119: invokestatic 163	com/parse/ParseIOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   122: aload 12
    //   124: invokestatic 166	com/parse/ParseIOUtils:closeQuietly	(Ljava/io/OutputStream;)V
    //   127: aload 13
    //   129: invokestatic 163	com/parse/ParseIOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   132: aload 11
    //   134: invokestatic 169	com/parse/ParseIOUtils:closeQuietly	(Ljava/io/InputStream;)V
    //   137: aload_0
    //   138: invokevirtual 172	java/io/File:length	()J
    //   141: lstore_3
    //   142: aload_1
    //   143: invokevirtual 172	java/io/File:length	()J
    //   146: lstore 5
    //   148: lload_3
    //   149: lload 5
    //   151: lcmp
    //   152: ifeq +93 -> 245
    //   155: new 23	java/io/IOException
    //   158: dup
    //   159: new 33	java/lang/StringBuilder
    //   162: dup
    //   163: invokespecial 34	java/lang/StringBuilder:<init>	()V
    //   166: ldc -82
    //   168: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   171: aload_0
    //   172: invokevirtual 38	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   175: ldc -80
    //   177: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   180: aload_1
    //   181: invokevirtual 38	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   184: ldc -78
    //   186: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   189: lload_3
    //   190: invokevirtual 181	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   193: ldc -73
    //   195: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   198: lload 5
    //   200: invokevirtual 181	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   203: invokevirtual 47	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   206: invokespecial 62	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   209: athrow
    //   210: lload_3
    //   211: lload 5
    //   213: ladd
    //   214: lstore_3
    //   215: goto +123 -> 338
    //   218: astore_0
    //   219: aconst_null
    //   220: astore 11
    //   222: aconst_null
    //   223: astore_1
    //   224: aload_1
    //   225: invokestatic 163	com/parse/ParseIOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   228: aload 13
    //   230: invokestatic 166	com/parse/ParseIOUtils:closeQuietly	(Ljava/io/OutputStream;)V
    //   233: aload 11
    //   235: invokestatic 163	com/parse/ParseIOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   238: aload 12
    //   240: invokestatic 169	com/parse/ParseIOUtils:closeQuietly	(Ljava/io/InputStream;)V
    //   243: aload_0
    //   244: athrow
    //   245: iload_2
    //   246: ifeq +12 -> 258
    //   249: aload_1
    //   250: aload_0
    //   251: invokevirtual 186	java/io/File:lastModified	()J
    //   254: invokevirtual 190	java/io/File:setLastModified	(J)Z
    //   257: pop
    //   258: return
    //   259: astore_0
    //   260: aload 11
    //   262: astore 12
    //   264: aconst_null
    //   265: astore_1
    //   266: aconst_null
    //   267: astore 11
    //   269: goto -45 -> 224
    //   272: astore_0
    //   273: aload 11
    //   275: astore 14
    //   277: aconst_null
    //   278: astore 11
    //   280: aconst_null
    //   281: astore_1
    //   282: aload 12
    //   284: astore 13
    //   286: aload 14
    //   288: astore 12
    //   290: goto -66 -> 224
    //   293: astore_0
    //   294: aload 11
    //   296: astore 14
    //   298: aload 13
    //   300: astore 11
    //   302: aconst_null
    //   303: astore_1
    //   304: aload 12
    //   306: astore 13
    //   308: aload 14
    //   310: astore 12
    //   312: goto -88 -> 224
    //   315: astore_0
    //   316: aload 11
    //   318: astore 14
    //   320: aload 15
    //   322: astore_1
    //   323: aload 13
    //   325: astore 11
    //   327: aload 12
    //   329: astore 13
    //   331: aload 14
    //   333: astore 12
    //   335: goto -111 -> 224
    //   338: lload_3
    //   339: lload 9
    //   341: lcmp
    //   342: ifge -225 -> 117
    //   345: lload 9
    //   347: lload_3
    //   348: lsub
    //   349: lstore 7
    //   351: lload 7
    //   353: lstore 5
    //   355: lload 7
    //   357: ldc2_w 7
    //   360: lcmp
    //   361: ifle -263 -> 98
    //   364: ldc2_w 7
    //   367: lstore 5
    //   369: goto -271 -> 98
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	372	0	paramFile1	File
    //   0	372	1	paramFile2	File
    //   0	372	2	paramBoolean	boolean
    //   94	254	3	l1	long
    //   103	1	5	localObject1	Object
    //   108	260	5	l2	long
    //   349	7	7	l3	long
    //   91	255	9	l4	long
    //   60	266	11	localObject2	Object
    //   47	287	12	localObject3	Object
    //   50	280	13	localObject4	Object
    //   275	57	14	localObject5	Object
    //   84	237	15	localFileChannel	java.nio.channels.FileChannel
    // Exception table:
    //   from	to	target	type
    //   52	62	218	finally
    //   62	72	259	finally
    //   72	79	272	finally
    //   79	86	293	finally
    //   86	93	315	finally
    //   98	110	315	finally
  }
  
  public static void forceDelete(File paramFile)
  {
    if (paramFile.isDirectory()) {
      deleteDirectory(paramFile);
    }
    boolean bool;
    do
    {
      return;
      bool = paramFile.exists();
    } while (paramFile.delete());
    if (!bool) {
      throw new FileNotFoundException("File does not exist: " + paramFile);
    }
    throw new IOException("Unable to delete file: " + paramFile);
  }
  
  public static boolean isSymlink(File paramFile)
  {
    if (paramFile == null) {
      throw new NullPointerException("File must not be null");
    }
    if (paramFile.getParent() == null) {}
    while (paramFile.getCanonicalFile().equals(paramFile.getAbsoluteFile()))
    {
      return false;
      paramFile = new File(paramFile.getParentFile().getCanonicalFile(), paramFile.getName());
    }
    return true;
  }
  
  public static void moveFile(File paramFile1, File paramFile2)
  {
    if (paramFile1 == null) {
      throw new NullPointerException("Source must not be null");
    }
    if (paramFile2 == null) {
      throw new NullPointerException("Destination must not be null");
    }
    if (!paramFile1.exists()) {
      throw new FileNotFoundException("Source '" + paramFile1 + "' does not exist");
    }
    if (paramFile1.isDirectory()) {
      throw new IOException("Source '" + paramFile1 + "' is a directory");
    }
    if (paramFile2.exists()) {
      throw new IOException("Destination '" + paramFile2 + "' already exists");
    }
    if (paramFile2.isDirectory()) {
      throw new IOException("Destination '" + paramFile2 + "' is a directory");
    }
    if (!paramFile1.renameTo(paramFile2))
    {
      copyFile(paramFile1, paramFile2);
      if (!paramFile1.delete())
      {
        deleteQuietly(paramFile2);
        throw new IOException("Failed to delete original file '" + paramFile1 + "' after copy to '" + paramFile2 + "'");
      }
    }
  }
  
  public static FileInputStream openInputStream(File paramFile)
  {
    if (paramFile.exists())
    {
      if (paramFile.isDirectory()) {
        throw new IOException("File '" + paramFile + "' exists but is a directory");
      }
      if (!paramFile.canRead()) {
        throw new IOException("File '" + paramFile + "' cannot be read");
      }
    }
    else
    {
      throw new FileNotFoundException("File '" + paramFile + "' does not exist");
    }
    return new FileInputStream(paramFile);
  }
  
  public static FileOutputStream openOutputStream(File paramFile)
  {
    if (paramFile.exists())
    {
      if (paramFile.isDirectory()) {
        throw new IOException("File '" + paramFile + "' exists but is a directory");
      }
      if (!paramFile.canWrite()) {
        throw new IOException("File '" + paramFile + "' cannot be written to");
      }
    }
    else
    {
      File localFile = paramFile.getParentFile();
      if ((localFile != null) && (!localFile.exists()) && (!localFile.mkdirs())) {
        throw new IOException("File '" + paramFile + "' could not be created");
      }
    }
    return new FileOutputStream(paramFile);
  }
  
  public static byte[] readFileToByteArray(File paramFile)
  {
    File localFile = null;
    try
    {
      paramFile = openInputStream(paramFile);
      localFile = paramFile;
      byte[] arrayOfByte = ParseIOUtils.toByteArray(paramFile);
      return arrayOfByte;
    }
    finally
    {
      ParseIOUtils.closeQuietly(localFile);
    }
  }
  
  public static void writeByteArrayToFile(File paramFile, byte[] paramArrayOfByte)
  {
    File localFile = null;
    try
    {
      paramFile = openOutputStream(paramFile);
      localFile = paramFile;
      paramFile.write(paramArrayOfByte);
      return;
    }
    finally
    {
      ParseIOUtils.closeQuietly(localFile);
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseFileUtils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */