final class yk
  implements Kk
{
  private final byte[] b = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 10 };
  private boolean c;
  
  private yk(yh paramyh) {}
  
  private void a(long paramLong)
  {
    int i = 16;
    int j;
    long l;
    do
    {
      byte[] arrayOfByte = b;
      j = i - 1;
      arrayOfByte[j] = yh.l()[((int)(0xF & paramLong))];
      l = paramLong >>> 4;
      i = j;
      paramLong = l;
    } while (l != 0L);
    yh.a(a).c(b, j, b.length - j);
  }
  
  /* Error */
  public void a()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 47	yk:c	Z
    //   6: istore_1
    //   7: iload_1
    //   8: ifeq +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: aload_0
    //   15: getfield 16	yk:a	Lyh;
    //   18: invokestatic 40	yh:a	(Lyh;)LJS;
    //   21: invokeinterface 49 1 0
    //   26: goto -15 -> 11
    //   29: astore_2
    //   30: aload_0
    //   31: monitorexit
    //   32: aload_2
    //   33: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	34	0	this	yk
    //   6	2	1	bool	boolean
    //   29	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	29	finally
    //   14	26	29	finally
  }
  
  public void a_(JP paramJP, long paramLong)
  {
    if (c) {
      throw new IllegalStateException("closed");
    }
    if (paramLong == 0L) {
      return;
    }
    a(paramLong);
    yh.a(a).a_(paramJP, paramLong);
    yh.a(a).c(yh.j());
  }
  
  public Km b()
  {
    return yh.a(a).b();
  }
  
  /* Error */
  public void close()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 47	yk:c	Z
    //   6: istore_1
    //   7: iload_1
    //   8: ifeq +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: aload_0
    //   15: iconst_1
    //   16: putfield 47	yk:c	Z
    //   19: aload_0
    //   20: getfield 16	yk:a	Lyh;
    //   23: invokestatic 40	yh:a	(Lyh;)LJS;
    //   26: invokestatic 75	yh:k	()[B
    //   29: invokeinterface 68 2 0
    //   34: pop
    //   35: aload_0
    //   36: getfield 16	yk:a	Lyh;
    //   39: iconst_3
    //   40: invokestatic 78	yh:a	(Lyh;I)I
    //   43: pop
    //   44: goto -33 -> 11
    //   47: astore_2
    //   48: aload_0
    //   49: monitorexit
    //   50: aload_2
    //   51: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	52	0	this	yk
    //   6	2	1	bool	boolean
    //   47	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	47	finally
    //   14	44	47	finally
  }
}

/* Location:
 * Qualified Name:     yk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */