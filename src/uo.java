import android.graphics.Bitmap;
import android.graphics.Paint;

class uO
{
  private Bitmap a = null;
  private final Paint b = new Paint(2);
  
  /* Error */
  public void a(int paramInt1, int paramInt2, int paramInt3, Bitmap paramBitmap)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 21	uO:a	Landroid/graphics/Bitmap;
    //   6: ifnull +29 -> 35
    //   9: aload_0
    //   10: getfield 21	uO:a	Landroid/graphics/Bitmap;
    //   13: invokevirtual 31	android/graphics/Bitmap:getWidth	()I
    //   16: iload_1
    //   17: if_icmpne +18 -> 35
    //   20: aload_0
    //   21: getfield 21	uO:a	Landroid/graphics/Bitmap;
    //   24: invokevirtual 34	android/graphics/Bitmap:getHeight	()I
    //   27: istore 5
    //   29: iload 5
    //   31: iload_2
    //   32: if_icmpeq +30 -> 62
    //   35: aload_0
    //   36: iload_1
    //   37: iload_2
    //   38: getstatic 40	android/graphics/Bitmap$Config:RGB_565	Landroid/graphics/Bitmap$Config;
    //   41: invokestatic 44	android/graphics/Bitmap:createBitmap	(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    //   44: putfield 21	uO:a	Landroid/graphics/Bitmap;
    //   47: aload_0
    //   48: getfield 21	uO:a	Landroid/graphics/Bitmap;
    //   51: ifnull +11 -> 62
    //   54: aload_0
    //   55: getfield 21	uO:a	Landroid/graphics/Bitmap;
    //   58: iload_3
    //   59: invokevirtual 47	android/graphics/Bitmap:setDensity	(I)V
    //   62: aload_0
    //   63: getfield 21	uO:a	Landroid/graphics/Bitmap;
    //   66: ifnull +25 -> 91
    //   69: new 49	android/graphics/Canvas
    //   72: dup
    //   73: aload_0
    //   74: getfield 21	uO:a	Landroid/graphics/Bitmap;
    //   77: invokespecial 52	android/graphics/Canvas:<init>	(Landroid/graphics/Bitmap;)V
    //   80: aload 4
    //   82: fconst_0
    //   83: fconst_0
    //   84: aload_0
    //   85: getfield 19	uO:b	Landroid/graphics/Paint;
    //   88: invokevirtual 56	android/graphics/Canvas:drawBitmap	(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    //   91: aload_0
    //   92: monitorexit
    //   93: return
    //   94: astore 6
    //   96: aload_0
    //   97: aconst_null
    //   98: putfield 21	uO:a	Landroid/graphics/Bitmap;
    //   101: goto -54 -> 47
    //   104: astore 4
    //   106: aload_0
    //   107: monitorexit
    //   108: aload 4
    //   110: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	111	0	this	uO
    //   0	111	1	paramInt1	int
    //   0	111	2	paramInt2	int
    //   0	111	3	paramInt3	int
    //   0	111	4	paramBitmap	Bitmap
    //   27	6	5	i	int
    //   94	1	6	localOutOfMemoryError	OutOfMemoryError
    // Exception table:
    //   from	to	target	type
    //   35	47	94	java/lang/OutOfMemoryError
    //   2	29	104	finally
    //   35	47	104	finally
    //   47	62	104	finally
    //   62	91	104	finally
    //   96	101	104	finally
  }
  
  /* Error */
  public void a(android.graphics.Bitmap.CompressFormat paramCompressFormat, int paramInt, java.io.OutputStream paramOutputStream)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 21	uO:a	Landroid/graphics/Bitmap;
    //   6: ifnull +23 -> 29
    //   9: aload_0
    //   10: getfield 21	uO:a	Landroid/graphics/Bitmap;
    //   13: invokevirtual 31	android/graphics/Bitmap:getWidth	()I
    //   16: ifeq +13 -> 29
    //   19: aload_0
    //   20: getfield 21	uO:a	Landroid/graphics/Bitmap;
    //   23: invokevirtual 34	android/graphics/Bitmap:getHeight	()I
    //   26: ifne +15 -> 41
    //   29: aload_3
    //   30: ldc 59
    //   32: invokevirtual 65	java/lang/String:getBytes	()[B
    //   35: invokevirtual 71	java/io/OutputStream:write	([B)V
    //   38: aload_0
    //   39: monitorexit
    //   40: return
    //   41: aload_3
    //   42: bipush 34
    //   44: invokevirtual 73	java/io/OutputStream:write	(I)V
    //   47: new 75	android/util/Base64OutputStream
    //   50: dup
    //   51: aload_3
    //   52: iconst_2
    //   53: invokespecial 78	android/util/Base64OutputStream:<init>	(Ljava/io/OutputStream;I)V
    //   56: astore_1
    //   57: aload_0
    //   58: getfield 21	uO:a	Landroid/graphics/Bitmap;
    //   61: getstatic 84	android/graphics/Bitmap$CompressFormat:PNG	Landroid/graphics/Bitmap$CompressFormat;
    //   64: bipush 100
    //   66: aload_1
    //   67: invokevirtual 88	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   70: pop
    //   71: aload_1
    //   72: invokevirtual 91	android/util/Base64OutputStream:flush	()V
    //   75: aload_3
    //   76: bipush 34
    //   78: invokevirtual 73	java/io/OutputStream:write	(I)V
    //   81: goto -43 -> 38
    //   84: astore_1
    //   85: aload_0
    //   86: monitorexit
    //   87: aload_1
    //   88: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	89	0	this	uO
    //   0	89	1	paramCompressFormat	android.graphics.Bitmap.CompressFormat
    //   0	89	2	paramInt	int
    //   0	89	3	paramOutputStream	java.io.OutputStream
    // Exception table:
    //   from	to	target	type
    //   2	29	84	finally
    //   29	38	84	finally
    //   41	81	84	finally
  }
}

/* Location:
 * Qualified Name:     uO
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */