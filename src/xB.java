import java.net.URL;

final class xb
  extends xY
{
  private final xc c;
  
  private xb(wY paramwY, xc paramxc)
  {
    super("OkHttp %s", new Object[] { b.c() });
    c = paramxc;
  }
  
  String a()
  {
    return a.b.a().getHost();
  }
  
  /* Error */
  protected void b()
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_1
    //   2: aload_0
    //   3: getfield 12	xb:a	LwY;
    //   6: invokestatic 50	wY:a	(LwY;)LxJ;
    //   9: astore_3
    //   10: aload_0
    //   11: getfield 12	xb:a	LwY;
    //   14: getfield 53	wY:a	Z
    //   17: istore_2
    //   18: iload_2
    //   19: ifeq +43 -> 62
    //   22: aload_0
    //   23: getfield 32	xb:c	Lxc;
    //   26: aload_0
    //   27: getfield 12	xb:a	LwY;
    //   30: getfield 22	wY:b	LxD;
    //   33: new 47	java/io/IOException
    //   36: dup
    //   37: ldc 55
    //   39: invokespecial 58	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   42: invokeinterface 63 3 0
    //   47: aload_0
    //   48: getfield 12	xb:a	LwY;
    //   51: invokestatic 66	wY:c	(LwY;)Lxy;
    //   54: invokevirtual 72	xy:r	()Lxp;
    //   57: aload_0
    //   58: invokevirtual 77	xp:b	(Lxb;)V
    //   61: return
    //   62: aload_0
    //   63: getfield 32	xb:c	Lxc;
    //   66: aload_3
    //   67: invokeinterface 80 2 0
    //   72: goto -25 -> 47
    //   75: astore_3
    //   76: iload_1
    //   77: ifeq +53 -> 130
    //   80: getstatic 85	xW:a	Ljava/util/logging/Logger;
    //   83: getstatic 91	java/util/logging/Level:INFO	Ljava/util/logging/Level;
    //   86: new 93	java/lang/StringBuilder
    //   89: dup
    //   90: invokespecial 95	java/lang/StringBuilder:<init>	()V
    //   93: ldc 97
    //   95: invokevirtual 101	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   98: aload_0
    //   99: getfield 12	xb:a	LwY;
    //   102: invokestatic 104	wY:b	(LwY;)Ljava/lang/String;
    //   105: invokevirtual 101	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   108: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   111: aload_3
    //   112: invokevirtual 113	java/util/logging/Logger:log	(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   115: aload_0
    //   116: getfield 12	xb:a	LwY;
    //   119: invokestatic 66	wY:c	(LwY;)Lxy;
    //   122: invokevirtual 72	xy:r	()Lxp;
    //   125: aload_0
    //   126: invokevirtual 77	xp:b	(Lxb;)V
    //   129: return
    //   130: aload_0
    //   131: getfield 32	xb:c	Lxc;
    //   134: aload_0
    //   135: getfield 12	xb:a	LwY;
    //   138: getfield 116	wY:c	LyB;
    //   141: invokevirtual 122	yB:g	()LxD;
    //   144: aload_3
    //   145: invokeinterface 63 3 0
    //   150: goto -35 -> 115
    //   153: astore_3
    //   154: aload_0
    //   155: getfield 12	xb:a	LwY;
    //   158: invokestatic 66	wY:c	(LwY;)Lxy;
    //   161: invokevirtual 72	xy:r	()Lxp;
    //   164: aload_0
    //   165: invokevirtual 77	xp:b	(Lxb;)V
    //   168: aload_3
    //   169: athrow
    //   170: astore_3
    //   171: iconst_0
    //   172: istore_1
    //   173: goto -97 -> 76
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	176	0	this	xb
    //   1	172	1	i	int
    //   17	2	2	bool	boolean
    //   9	58	3	localxJ	xJ
    //   75	70	3	localIOException1	java.io.IOException
    //   153	16	3	localObject	Object
    //   170	1	3	localIOException2	java.io.IOException
    // Exception table:
    //   from	to	target	type
    //   22	47	75	java/io/IOException
    //   62	72	75	java/io/IOException
    //   2	18	153	finally
    //   22	47	153	finally
    //   62	72	153	finally
    //   80	115	153	finally
    //   130	150	153	finally
    //   2	18	170	java/io/IOException
  }
}

/* Location:
 * Qualified Name:     xb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */