package com.google.android.gms.common.images;

import android.net.Uri;
import android.os.ParcelFileDescriptor;

final class ImageManager$c
  implements Runnable
{
  private final ParcelFileDescriptor LG;
  private final Uri mUri;
  
  public ImageManager$c(ImageManager paramImageManager, Uri paramUri, ParcelFileDescriptor paramParcelFileDescriptor)
  {
    mUri = paramUri;
    LG = paramParcelFileDescriptor;
  }
  
  /* Error */
  public void run()
  {
    // Byte code:
    //   0: ldc 33
    //   2: invokestatic 39	hW:b	(Ljava/lang/String;)V
    //   5: iconst_0
    //   6: istore_1
    //   7: iconst_0
    //   8: istore_2
    //   9: aconst_null
    //   10: astore_3
    //   11: aconst_null
    //   12: astore 4
    //   14: aload_0
    //   15: getfield 23	com/google/android/gms/common/images/ImageManager$c:LG	Landroid/os/ParcelFileDescriptor;
    //   18: ifnull +23 -> 41
    //   21: aload_0
    //   22: getfield 23	com/google/android/gms/common/images/ImageManager$c:LG	Landroid/os/ParcelFileDescriptor;
    //   25: invokevirtual 45	android/os/ParcelFileDescriptor:getFileDescriptor	()Ljava/io/FileDescriptor;
    //   28: invokestatic 51	android/graphics/BitmapFactory:decodeFileDescriptor	(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    //   31: astore_3
    //   32: iload_2
    //   33: istore_1
    //   34: aload_0
    //   35: getfield 23	com/google/android/gms/common/images/ImageManager$c:LG	Landroid/os/ParcelFileDescriptor;
    //   38: invokevirtual 54	android/os/ParcelFileDescriptor:close	()V
    //   41: new 56	java/util/concurrent/CountDownLatch
    //   44: dup
    //   45: iconst_1
    //   46: invokespecial 59	java/util/concurrent/CountDownLatch:<init>	(I)V
    //   49: astore 4
    //   51: aload_0
    //   52: getfield 16	com/google/android/gms/common/images/ImageManager$c:LF	Lcom/google/android/gms/common/images/ImageManager;
    //   55: invokestatic 65	com/google/android/gms/common/images/ImageManager:g	(Lcom/google/android/gms/common/images/ImageManager;)Landroid/os/Handler;
    //   58: new 67	com/google/android/gms/common/images/ImageManager$f
    //   61: dup
    //   62: aload_0
    //   63: getfield 16	com/google/android/gms/common/images/ImageManager$c:LF	Lcom/google/android/gms/common/images/ImageManager;
    //   66: aload_0
    //   67: getfield 21	com/google/android/gms/common/images/ImageManager$c:mUri	Landroid/net/Uri;
    //   70: aload_3
    //   71: iload_1
    //   72: aload 4
    //   74: invokespecial 70	com/google/android/gms/common/images/ImageManager$f:<init>	(Lcom/google/android/gms/common/images/ImageManager;Landroid/net/Uri;Landroid/graphics/Bitmap;ZLjava/util/concurrent/CountDownLatch;)V
    //   77: invokevirtual 76	android/os/Handler:post	(Ljava/lang/Runnable;)Z
    //   80: pop
    //   81: aload 4
    //   83: invokevirtual 79	java/util/concurrent/CountDownLatch:await	()V
    //   86: return
    //   87: astore_3
    //   88: new 81	java/lang/StringBuilder
    //   91: dup
    //   92: invokespecial 82	java/lang/StringBuilder:<init>	()V
    //   95: ldc 84
    //   97: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   100: aload_0
    //   101: getfield 21	com/google/android/gms/common/images/ImageManager$c:mUri	Landroid/net/Uri;
    //   104: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   107: invokevirtual 95	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   110: pop
    //   111: iconst_1
    //   112: istore_1
    //   113: aload 4
    //   115: astore_3
    //   116: goto -82 -> 34
    //   119: astore_3
    //   120: new 81	java/lang/StringBuilder
    //   123: dup
    //   124: invokespecial 82	java/lang/StringBuilder:<init>	()V
    //   127: ldc 97
    //   129: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   132: aload_0
    //   133: getfield 21	com/google/android/gms/common/images/ImageManager$c:mUri	Landroid/net/Uri;
    //   136: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   139: invokevirtual 95	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   142: pop
    //   143: return
    //   144: astore 4
    //   146: goto -105 -> 41
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	149	0	this	c
    //   6	107	1	bool1	boolean
    //   8	25	2	bool2	boolean
    //   10	61	3	localBitmap	android.graphics.Bitmap
    //   87	1	3	localOutOfMemoryError	OutOfMemoryError
    //   115	1	3	localObject	Object
    //   119	1	3	localInterruptedException	InterruptedException
    //   12	102	4	localCountDownLatch	java.util.concurrent.CountDownLatch
    //   144	1	4	localIOException	java.io.IOException
    // Exception table:
    //   from	to	target	type
    //   21	32	87	java/lang/OutOfMemoryError
    //   81	86	119	java/lang/InterruptedException
    //   34	41	144	java/io/IOException
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.images.ImageManager.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */