package android.support.v4.content;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Environment;
import java.io.File;

public class ContextCompat
{
  private static final String DIR_ANDROID = "Android";
  private static final String DIR_CACHE = "cache";
  private static final String DIR_DATA = "data";
  private static final String DIR_FILES = "files";
  private static final String DIR_OBB = "obb";
  private static final String TAG = "ContextCompat";
  
  private static File buildPath(File paramFile, String... paramVarArgs)
  {
    int j = paramVarArgs.length;
    int i = 0;
    String str;
    if (i < j)
    {
      str = paramVarArgs[i];
      if (paramFile == null) {
        paramFile = new File(str);
      }
    }
    for (;;)
    {
      i += 1;
      break;
      if (str != null)
      {
        paramFile = new File(paramFile, str);
        continue;
        return paramFile;
      }
    }
  }
  
  /* Error */
  private static File createFilesDir(File paramFile)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: aload_0
    //   4: astore_2
    //   5: aload_0
    //   6: invokevirtual 44	java/io/File:exists	()Z
    //   9: ifne +23 -> 32
    //   12: aload_0
    //   13: astore_2
    //   14: aload_0
    //   15: invokevirtual 47	java/io/File:mkdirs	()Z
    //   18: ifne +14 -> 32
    //   21: aload_0
    //   22: invokevirtual 44	java/io/File:exists	()Z
    //   25: istore_1
    //   26: iload_1
    //   27: ifeq +10 -> 37
    //   30: aload_0
    //   31: astore_2
    //   32: ldc 2
    //   34: monitorexit
    //   35: aload_2
    //   36: areturn
    //   37: new 49	java/lang/StringBuilder
    //   40: dup
    //   41: invokespecial 50	java/lang/StringBuilder:<init>	()V
    //   44: ldc 52
    //   46: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   49: aload_0
    //   50: invokevirtual 60	java/io/File:getPath	()Ljava/lang/String;
    //   53: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   56: invokevirtual 63	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   59: pop
    //   60: aconst_null
    //   61: astore_2
    //   62: goto -30 -> 32
    //   65: astore_0
    //   66: ldc 2
    //   68: monitorexit
    //   69: aload_0
    //   70: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	71	0	paramFile	File
    //   25	2	1	bool	boolean
    //   4	58	2	localFile	File
    // Exception table:
    //   from	to	target	type
    //   5	12	65	finally
    //   14	26	65	finally
    //   37	60	65	finally
  }
  
  public static final Drawable getDrawable(Context paramContext, int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      return ContextCompatApi21.getDrawable(paramContext, paramInt);
    }
    return paramContext.getResources().getDrawable(paramInt);
  }
  
  public static File[] getExternalCacheDirs(Context paramContext)
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 19) {
      return ContextCompatKitKat.getExternalCacheDirs(paramContext);
    }
    if (i >= 8) {}
    for (paramContext = ContextCompatFroyo.getExternalCacheDir(paramContext);; paramContext = buildPath(Environment.getExternalStorageDirectory(), new String[] { "Android", "data", paramContext.getPackageName(), "cache" })) {
      return new File[] { paramContext };
    }
  }
  
  public static File[] getExternalFilesDirs(Context paramContext, String paramString)
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 19) {
      return ContextCompatKitKat.getExternalFilesDirs(paramContext, paramString);
    }
    if (i >= 8) {}
    for (paramContext = ContextCompatFroyo.getExternalFilesDir(paramContext, paramString);; paramContext = buildPath(Environment.getExternalStorageDirectory(), new String[] { "Android", "data", paramContext.getPackageName(), "files", paramString })) {
      return new File[] { paramContext };
    }
  }
  
  public static File[] getObbDirs(Context paramContext)
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 19) {
      return ContextCompatKitKat.getObbDirs(paramContext);
    }
    if (i >= 11) {}
    for (paramContext = ContextCompatHoneycomb.getObbDir(paramContext);; paramContext = buildPath(Environment.getExternalStorageDirectory(), new String[] { "Android", "obb", paramContext.getPackageName() })) {
      return new File[] { paramContext };
    }
  }
  
  public static boolean startActivities(Context paramContext, Intent[] paramArrayOfIntent)
  {
    return startActivities(paramContext, paramArrayOfIntent, null);
  }
  
  public static boolean startActivities(Context paramContext, Intent[] paramArrayOfIntent, Bundle paramBundle)
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 16)
    {
      ContextCompatJellybean.startActivities(paramContext, paramArrayOfIntent, paramBundle);
      return true;
    }
    if (i >= 11)
    {
      ContextCompatHoneycomb.startActivities(paramContext, paramArrayOfIntent);
      return true;
    }
    return false;
  }
  
  public final File getCodeCacheDir(Context paramContext)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      return ContextCompatApi21.getCodeCacheDir(paramContext);
    }
    return createFilesDir(new File(getApplicationInfodataDir, "code_cache"));
  }
  
  public final File getNoBackupFilesDir(Context paramContext)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      return ContextCompatApi21.getNoBackupFilesDir(paramContext);
    }
    return createFilesDir(new File(getApplicationInfodataDir, "no_backup"));
  }
}

/* Location:
 * Qualified Name:     android.support.v4.content.ContextCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */