import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;

class zu
  extends xO
  implements yL
{
  yK a;
  
  private zu(zl paramzl)
  {
    super("OkHttp %s", new Object[] { zl.a(paramzl) });
  }
  
  private void a(zh paramzh)
  {
    zl.f().submit(new zw(this, "OkHttp %s ACK Settings", new Object[] { zl.a(c) }, paramzh));
  }
  
  public void a(int paramInt1, int paramInt2, List<yN> paramList)
  {
    zl.a(c, paramInt2, paramList);
  }
  
  public void a(int paramInt, long paramLong)
  {
    if (paramInt == 0) {
      synchronized (c)
      {
        zl localzl = c;
        d += paramLong;
        c.notifyAll();
        return;
      }
    }
    ??? = c.a(paramInt);
    if (??? != null) {
      try
      {
        ((zx)???).a(paramLong);
        return;
      }
      finally {}
    }
  }
  
  public void a(int paramInt, yJ paramyJ)
  {
    if (zl.a(c, paramInt)) {
      zl.a(c, paramInt, paramyJ);
    }
    zx localzx;
    do
    {
      return;
      localzx = c.b(paramInt);
    } while (localzx == null);
    localzx.c(paramyJ);
  }
  
  public void a(int paramInt, yJ arg2, JU paramJU)
  {
    paramJU.e();
    synchronized (c)
    {
      paramJU = (zx[])zl.e(c).values().toArray(new zx[zl.e(c).size()]);
      zl.b(c, true);
      int j = paramJU.length;
      int i = 0;
      if (i < j)
      {
        ??? = paramJU[i];
        if ((???.a() > paramInt) && (???.c()))
        {
          ???.c(yJ.k);
          c.b(???.a());
        }
        i += 1;
      }
    }
  }
  
  public void a(boolean paramBoolean, int paramInt1, int paramInt2)
  {
    if (paramBoolean)
    {
      ze localze = zl.c(c, paramInt1);
      if (localze != null) {
        localze.b();
      }
      return;
    }
    zl.b(c, true, paramInt1, paramInt2, null);
  }
  
  public void a(boolean paramBoolean, int paramInt1, JT paramJT, int paramInt2)
  {
    if (zl.a(c, paramInt1)) {
      zl.a(c, paramInt1, paramJT, paramInt2, paramBoolean);
    }
    zx localzx;
    do
    {
      return;
      localzx = c.a(paramInt1);
      if (localzx == null)
      {
        c.a(paramInt1, yJ.c);
        paramJT.g(paramInt2);
        return;
      }
      localzx.a(paramJT, paramInt2);
    } while (!paramBoolean);
    localzx.h();
  }
  
  public void a(boolean paramBoolean, zh paramzh)
  {
    for (;;)
    {
      int i;
      synchronized (c)
      {
        i = c.f.e(65536);
        if (paramBoolean) {
          c.f.a();
        }
        c.f.a(paramzh);
        if (c.a() == xs.d) {
          a(paramzh);
        }
        int j = c.f.e(65536);
        if ((j == -1) || (j == i)) {
          break label246;
        }
        l = j - i;
        if (!zl.g(c))
        {
          c.a(l);
          zl.a(c, true);
        }
        if (zl.e(c).isEmpty()) {
          break label241;
        }
        paramzh = (zx[])zl.e(c).values().toArray(new zx[zl.e(c).size()]);
        if ((paramzh == null) || (l == 0L)) {
          break label240;
        }
        j = paramzh.length;
        i = 0;
        if (i >= j) {
          break label240;
        }
      }
      synchronized (paramzh[i])
      {
        ???.a(l);
        i += 1;
        continue;
        paramzh = finally;
        throw paramzh;
      }
      label240:
      return;
      label241:
      paramzh = null;
      continue;
      label246:
      paramzh = null;
      long l = 0L;
    }
  }
  
  public void a(boolean paramBoolean1, boolean paramBoolean2, int paramInt1, int paramInt2, List<yN> paramList, yO paramyO)
  {
    if (zl.a(c, paramInt1)) {
      zl.a(c, paramInt1, paramList, paramBoolean2);
    }
    zx localzx;
    do
    {
      return;
      synchronized (c)
      {
        if (zl.b(c)) {
          return;
        }
      }
      localzx = c.a(paramInt1);
      if (localzx == null)
      {
        if (paramyO.a())
        {
          c.a(paramInt1, yJ.c);
          return;
        }
        if (paramInt1 <= zl.c(c)) {
          return;
        }
        if (paramInt1 % 2 == zl.d(c) % 2) {
          return;
        }
        paramList = new zx(paramInt1, c, paramBoolean1, paramBoolean2, paramList);
        zl.b(c, paramInt1);
        zl.e(c).put(Integer.valueOf(paramInt1), paramList);
        zl.f().submit(new zv(this, "OkHttp %s stream %d", new Object[] { zl.a(c), Integer.valueOf(paramInt1) }, paramList));
        return;
      }
      if (paramyO.b())
      {
        localzx.b(yJ.b);
        c.b(paramInt1);
        return;
      }
      localzx.a(paramList, paramyO);
    } while (!paramBoolean2);
    localzx.h();
  }
  
  /* Error */
  protected void b()
  {
    // Byte code:
    //   0: getstatic 239	yJ:g	LyJ;
    //   3: astore_3
    //   4: getstatic 239	yJ:g	LyJ;
    //   7: astore 4
    //   9: aload_3
    //   10: astore_2
    //   11: aload_3
    //   12: astore_1
    //   13: aload_0
    //   14: aload_0
    //   15: getfield 14	zu:c	Lzl;
    //   18: getfield 242	zl:g	LzC;
    //   21: aload_0
    //   22: getfield 14	zu:c	Lzl;
    //   25: getfield 245	zl:h	Ljava/net/Socket;
    //   28: invokestatic 250	Ka:b	(Ljava/net/Socket;)LKl;
    //   31: invokestatic 253	Ka:a	(LKl;)LJT;
    //   34: aload_0
    //   35: getfield 14	zu:c	Lzl;
    //   38: getfield 256	zl:b	Z
    //   41: invokeinterface 261 3 0
    //   46: putfield 263	zu:a	LyK;
    //   49: aload_3
    //   50: astore_2
    //   51: aload_3
    //   52: astore_1
    //   53: aload_0
    //   54: getfield 14	zu:c	Lzl;
    //   57: getfield 256	zl:b	Z
    //   60: ifne +16 -> 76
    //   63: aload_3
    //   64: astore_2
    //   65: aload_3
    //   66: astore_1
    //   67: aload_0
    //   68: getfield 263	zu:a	LyK;
    //   71: invokeinterface 266 1 0
    //   76: aload_3
    //   77: astore_2
    //   78: aload_3
    //   79: astore_1
    //   80: aload_0
    //   81: getfield 263	zu:a	LyK;
    //   84: aload_0
    //   85: invokeinterface 269 2 0
    //   90: ifne -14 -> 76
    //   93: aload_3
    //   94: astore_2
    //   95: aload_3
    //   96: astore_1
    //   97: getstatic 271	yJ:a	LyJ;
    //   100: astore_3
    //   101: aload_3
    //   102: astore_2
    //   103: aload_3
    //   104: astore_1
    //   105: getstatic 274	yJ:l	LyJ;
    //   108: astore 5
    //   110: aload_0
    //   111: getfield 14	zu:c	Lzl;
    //   114: aload_3
    //   115: aload 5
    //   117: invokestatic 277	zl:a	(Lzl;LyJ;LyJ;)V
    //   120: aload_0
    //   121: getfield 263	zu:a	LyK;
    //   124: invokestatic 282	xY:a	(Ljava/io/Closeable;)V
    //   127: return
    //   128: astore_1
    //   129: aload_2
    //   130: astore_1
    //   131: getstatic 229	yJ:b	LyJ;
    //   134: astore_3
    //   135: getstatic 229	yJ:b	LyJ;
    //   138: astore_1
    //   139: aload_0
    //   140: getfield 14	zu:c	Lzl;
    //   143: aload_3
    //   144: aload_1
    //   145: invokestatic 277	zl:a	(Lzl;LyJ;LyJ;)V
    //   148: aload_0
    //   149: getfield 263	zu:a	LyK;
    //   152: invokestatic 282	xY:a	(Ljava/io/Closeable;)V
    //   155: return
    //   156: astore_2
    //   157: aload_1
    //   158: astore_3
    //   159: aload_2
    //   160: astore_1
    //   161: aload_0
    //   162: getfield 14	zu:c	Lzl;
    //   165: aload_3
    //   166: aload 4
    //   168: invokestatic 277	zl:a	(Lzl;LyJ;LyJ;)V
    //   171: aload_0
    //   172: getfield 263	zu:a	LyK;
    //   175: invokestatic 282	xY:a	(Ljava/io/Closeable;)V
    //   178: aload_1
    //   179: athrow
    //   180: astore_2
    //   181: goto -10 -> 171
    //   184: astore_1
    //   185: goto -24 -> 161
    //   188: astore_1
    //   189: goto -41 -> 148
    //   192: astore_1
    //   193: goto -73 -> 120
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	196	0	this	zu
    //   12	93	1	localObject1	Object
    //   128	1	1	localIOException1	java.io.IOException
    //   130	49	1	localObject2	Object
    //   184	1	1	localObject3	Object
    //   188	1	1	localIOException2	java.io.IOException
    //   192	1	1	localIOException3	java.io.IOException
    //   10	120	2	localObject4	Object
    //   156	4	2	localObject5	Object
    //   180	1	2	localIOException4	java.io.IOException
    //   3	163	3	localObject6	Object
    //   7	160	4	localyJ1	yJ
    //   108	8	5	localyJ2	yJ
    // Exception table:
    //   from	to	target	type
    //   13	49	128	java/io/IOException
    //   53	63	128	java/io/IOException
    //   67	76	128	java/io/IOException
    //   80	93	128	java/io/IOException
    //   97	101	128	java/io/IOException
    //   105	110	128	java/io/IOException
    //   13	49	156	finally
    //   53	63	156	finally
    //   67	76	156	finally
    //   80	93	156	finally
    //   97	101	156	finally
    //   105	110	156	finally
    //   131	135	156	finally
    //   161	171	180	java/io/IOException
    //   135	139	184	finally
    //   139	148	188	java/io/IOException
    //   110	120	192	java/io/IOException
  }
}

/* Location:
 * Qualified Name:     zu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */