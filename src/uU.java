import android.content.Context;
import android.util.Base64;
import java.io.File;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

class uu
{
  private final File a;
  private final tU b;
  private final MessageDigest c;
  
  public uu(Context paramContext)
  {
    this(paramContext.getDir("MixpanelAPI.Images", 0), new tS());
  }
  
  public uu(File paramFile, tU paramtU)
  {
    a = paramFile;
    b = paramtU;
    try
    {
      paramFile = MessageDigest.getInstance("SHA1");
      c = paramFile;
      return;
    }
    catch (NoSuchAlgorithmException paramFile)
    {
      for (;;)
      {
        paramFile = null;
      }
    }
  }
  
  private File c(String paramString)
  {
    if (c == null) {
      return null;
    }
    paramString = c.digest(paramString.getBytes());
    paramString = "MP_IMG_" + Base64.encodeToString(paramString, 10);
    return new File(a, paramString);
  }
  
  /* Error */
  public android.graphics.Bitmap a(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aconst_null
    //   3: astore 4
    //   5: aload_0
    //   6: aload_1
    //   7: invokespecial 90	uu:c	(Ljava/lang/String;)Ljava/io/File;
    //   10: astore 5
    //   12: aload 5
    //   14: ifnull +11 -> 25
    //   17: aload 5
    //   19: invokevirtual 94	java/io/File:exists	()Z
    //   22: ifne +203 -> 225
    //   25: aload_0
    //   26: getfield 36	uu:b	LtU;
    //   29: aload_1
    //   30: aconst_null
    //   31: invokeinterface 99 3 0
    //   36: astore_3
    //   37: aload_3
    //   38: ifnull +134 -> 172
    //   41: aload 5
    //   43: ifnull +35 -> 78
    //   46: aload_3
    //   47: arraylength
    //   48: ldc 100
    //   50: if_icmpge +28 -> 78
    //   53: new 102	java/io/FileOutputStream
    //   56: dup
    //   57: aload 5
    //   59: invokespecial 105	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   62: astore_1
    //   63: aload_1
    //   64: astore_2
    //   65: aload_1
    //   66: aload_3
    //   67: invokevirtual 111	java/io/OutputStream:write	([B)V
    //   70: aload_1
    //   71: ifnull +7 -> 78
    //   74: aload_1
    //   75: invokevirtual 114	java/io/OutputStream:close	()V
    //   78: aload_3
    //   79: iconst_0
    //   80: aload_3
    //   81: arraylength
    //   82: invokestatic 120	android/graphics/BitmapFactory:decodeByteArray	([BII)Landroid/graphics/Bitmap;
    //   85: astore_2
    //   86: aload_2
    //   87: astore_1
    //   88: aload_2
    //   89: ifnonnull +122 -> 211
    //   92: new 122	uv
    //   95: dup
    //   96: ldc 124
    //   98: invokespecial 127	uv:<init>	(Ljava/lang/String;)V
    //   101: athrow
    //   102: astore_1
    //   103: new 122	uv
    //   106: dup
    //   107: ldc -127
    //   109: aload_1
    //   110: invokespecial 132	uv:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   113: athrow
    //   114: astore_1
    //   115: new 122	uv
    //   118: dup
    //   119: ldc -122
    //   121: aload_1
    //   122: invokespecial 132	uv:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   125: athrow
    //   126: astore_3
    //   127: aconst_null
    //   128: astore_1
    //   129: aload_1
    //   130: astore_2
    //   131: new 122	uv
    //   134: dup
    //   135: ldc -120
    //   137: aload_3
    //   138: invokespecial 132	uv:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   141: athrow
    //   142: astore_1
    //   143: aload_2
    //   144: ifnull +7 -> 151
    //   147: aload_2
    //   148: invokevirtual 114	java/io/OutputStream:close	()V
    //   151: aload_1
    //   152: athrow
    //   153: astore_1
    //   154: aload 4
    //   156: astore_2
    //   157: new 122	uv
    //   160: dup
    //   161: ldc -118
    //   163: aload_1
    //   164: invokespecial 132	uv:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   167: athrow
    //   168: astore_1
    //   169: goto -26 -> 143
    //   172: aload 5
    //   174: invokevirtual 141	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   177: invokestatic 144	android/graphics/BitmapFactory:decodeFile	(Ljava/lang/String;)Landroid/graphics/Bitmap;
    //   180: astore_2
    //   181: aload_2
    //   182: astore_1
    //   183: aload_2
    //   184: ifnonnull +27 -> 211
    //   187: aload 5
    //   189: invokevirtual 147	java/io/File:delete	()Z
    //   192: pop
    //   193: new 122	uv
    //   196: dup
    //   197: ldc -107
    //   199: invokespecial 127	uv:<init>	(Ljava/lang/String;)V
    //   202: athrow
    //   203: astore_1
    //   204: goto -126 -> 78
    //   207: astore_2
    //   208: goto -57 -> 151
    //   211: aload_1
    //   212: areturn
    //   213: astore_3
    //   214: aload_1
    //   215: astore_2
    //   216: aload_3
    //   217: astore_1
    //   218: goto -61 -> 157
    //   221: astore_3
    //   222: goto -93 -> 129
    //   225: aconst_null
    //   226: astore_3
    //   227: goto -190 -> 37
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	230	0	this	uu
    //   0	230	1	paramString	String
    //   1	183	2	localObject1	Object
    //   207	1	2	localIOException1	java.io.IOException
    //   215	1	2	str	String
    //   36	45	3	arrayOfByte	byte[]
    //   126	12	3	localFileNotFoundException1	java.io.FileNotFoundException
    //   213	4	3	localIOException2	java.io.IOException
    //   221	1	3	localFileNotFoundException2	java.io.FileNotFoundException
    //   226	1	3	localObject2	Object
    //   3	152	4	localObject3	Object
    //   10	178	5	localFile	File
    // Exception table:
    //   from	to	target	type
    //   25	37	102	java/io/IOException
    //   25	37	114	tV
    //   53	63	126	java/io/FileNotFoundException
    //   65	70	142	finally
    //   131	142	142	finally
    //   53	63	153	java/io/IOException
    //   53	63	168	finally
    //   157	168	168	finally
    //   74	78	203	java/io/IOException
    //   147	151	207	java/io/IOException
    //   65	70	213	java/io/IOException
    //   65	70	221	java/io/FileNotFoundException
  }
  
  public void b(String paramString)
  {
    paramString = c(paramString);
    if (paramString != null) {
      paramString.delete();
    }
  }
}

/* Location:
 * Qualified Name:     uu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */