public final class eh
  extends qf
  implements ek
{
  public static qC<eh> a = new ei();
  private static final eh c;
  private static volatile qB j = null;
  private final pT d;
  private int e;
  private int f;
  private int g;
  private byte h = -1;
  private int i = -1;
  
  static
  {
    c = new eh(true);
    c.l();
  }
  
  /* Error */
  private eh(pW parampW, qa paramqa)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 48	qf:<init>	()V
    //   4: aload_0
    //   5: iconst_m1
    //   6: putfield 50	eh:h	B
    //   9: aload_0
    //   10: iconst_m1
    //   11: putfield 52	eh:i	I
    //   14: aload_0
    //   15: invokespecial 41	eh:l	()V
    //   18: invokestatic 57	pT:i	()LpV;
    //   21: astore 5
    //   23: aload 5
    //   25: invokestatic 62	pY:a	(Ljava/io/OutputStream;)LpY;
    //   28: astore 6
    //   30: iconst_0
    //   31: istore_3
    //   32: iload_3
    //   33: ifne +152 -> 185
    //   36: aload_1
    //   37: invokevirtual 67	pW:a	()I
    //   40: istore 4
    //   42: iload 4
    //   44: lookupswitch	default:+210->254, 0:+213->257, 8:+54->98, 16:+103->147
    //   80: aload_0
    //   81: aload_1
    //   82: aload 6
    //   84: aload_2
    //   85: iload 4
    //   87: invokevirtual 70	eh:a	(LpW;LpY;Lqa;I)Z
    //   90: ifne -58 -> 32
    //   93: iconst_1
    //   94: istore_3
    //   95: goto -63 -> 32
    //   98: aload_0
    //   99: aload_0
    //   100: getfield 72	eh:e	I
    //   103: iconst_1
    //   104: ior
    //   105: putfield 72	eh:e	I
    //   108: aload_0
    //   109: aload_1
    //   110: invokevirtual 74	pW:f	()I
    //   113: putfield 76	eh:f	I
    //   116: goto -84 -> 32
    //   119: astore_1
    //   120: aload_1
    //   121: aload_0
    //   122: invokevirtual 79	qr:a	(Lqy;)Lqr;
    //   125: athrow
    //   126: astore_1
    //   127: aload 6
    //   129: invokevirtual 81	pY:a	()V
    //   132: aload_0
    //   133: aload 5
    //   135: invokevirtual 86	pV:a	()LpT;
    //   138: putfield 88	eh:d	LpT;
    //   141: aload_0
    //   142: invokevirtual 91	eh:R	()V
    //   145: aload_1
    //   146: athrow
    //   147: aload_0
    //   148: aload_0
    //   149: getfield 72	eh:e	I
    //   152: iconst_2
    //   153: ior
    //   154: putfield 72	eh:e	I
    //   157: aload_0
    //   158: aload_1
    //   159: invokevirtual 74	pW:f	()I
    //   162: putfield 93	eh:g	I
    //   165: goto -133 -> 32
    //   168: astore_1
    //   169: new 45	qr
    //   172: dup
    //   173: aload_1
    //   174: invokevirtual 97	java/io/IOException:getMessage	()Ljava/lang/String;
    //   177: invokespecial 100	qr:<init>	(Ljava/lang/String;)V
    //   180: aload_0
    //   181: invokevirtual 79	qr:a	(Lqy;)Lqr;
    //   184: athrow
    //   185: aload 6
    //   187: invokevirtual 81	pY:a	()V
    //   190: aload_0
    //   191: aload 5
    //   193: invokevirtual 86	pV:a	()LpT;
    //   196: putfield 88	eh:d	LpT;
    //   199: aload_0
    //   200: invokevirtual 91	eh:R	()V
    //   203: return
    //   204: astore_1
    //   205: aload_0
    //   206: aload 5
    //   208: invokevirtual 86	pV:a	()LpT;
    //   211: putfield 88	eh:d	LpT;
    //   214: goto -15 -> 199
    //   217: astore_1
    //   218: aload_0
    //   219: aload 5
    //   221: invokevirtual 86	pV:a	()LpT;
    //   224: putfield 88	eh:d	LpT;
    //   227: aload_1
    //   228: athrow
    //   229: astore_2
    //   230: aload_0
    //   231: aload 5
    //   233: invokevirtual 86	pV:a	()LpT;
    //   236: putfield 88	eh:d	LpT;
    //   239: goto -98 -> 141
    //   242: astore_1
    //   243: aload_0
    //   244: aload 5
    //   246: invokevirtual 86	pV:a	()LpT;
    //   249: putfield 88	eh:d	LpT;
    //   252: aload_1
    //   253: athrow
    //   254: goto -174 -> 80
    //   257: iconst_1
    //   258: istore_3
    //   259: goto -227 -> 32
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	262	0	this	eh
    //   0	262	1	parampW	pW
    //   0	262	2	paramqa	qa
    //   31	228	3	k	int
    //   40	46	4	m	int
    //   21	224	5	localpV	pV
    //   28	158	6	localpY	pY
    // Exception table:
    //   from	to	target	type
    //   36	42	119	qr
    //   80	93	119	qr
    //   98	116	119	qr
    //   147	165	119	qr
    //   36	42	126	finally
    //   80	93	126	finally
    //   98	116	126	finally
    //   120	126	126	finally
    //   147	165	126	finally
    //   169	185	126	finally
    //   36	42	168	java/io/IOException
    //   80	93	168	java/io/IOException
    //   98	116	168	java/io/IOException
    //   147	165	168	java/io/IOException
    //   185	190	204	java/io/IOException
    //   185	190	217	finally
    //   127	132	229	java/io/IOException
    //   127	132	242	finally
  }
  
  private eh(qh paramqh)
  {
    super(paramqh);
    d = paramqh.r();
  }
  
  private eh(boolean paramBoolean)
  {
    d = pT.a;
  }
  
  public static eh a()
  {
    return c;
  }
  
  public static ej a(eh parameh)
  {
    return h().a(parameh);
  }
  
  public static ej h()
  {
    return ej.l();
  }
  
  private void l()
  {
    f = 0;
    g = 0;
  }
  
  public eh b()
  {
    return c;
  }
  
  public qC<eh> c()
  {
    return a;
  }
  
  public boolean d()
  {
    return (e & 0x1) == 1;
  }
  
  public int e()
  {
    return f;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof eh)) {
      return super.equals(paramObject);
    }
    paramObject = (eh)paramObject;
    int k;
    label38:
    int m;
    if (d() == ((eh)paramObject).d())
    {
      k = 1;
      m = k;
      if (d())
      {
        if ((k == 0) || (e() != ((eh)paramObject).e())) {
          break label112;
        }
        m = 1;
      }
      label64:
      if ((m == 0) || (f() != ((eh)paramObject).f())) {
        break label117;
      }
    }
    label112:
    label117:
    for (boolean bool = true;; bool = false)
    {
      if (!f()) {
        break label123;
      }
      if ((bool) && (g() == ((eh)paramObject).g())) {
        break;
      }
      return false;
      k = 0;
      break label38;
      m = 0;
      break label64;
    }
    label123:
    return bool;
  }
  
  public boolean f()
  {
    return (e & 0x2) == 2;
  }
  
  public int g()
  {
    return g;
  }
  
  public int hashCode()
  {
    if (b != 0) {
      return b;
    }
    int m = eh.class.hashCode() + 779;
    int k = m;
    if (d()) {
      k = (m * 37 + 1) * 53 + e();
    }
    m = k;
    if (f()) {
      m = (k * 37 + 2) * 53 + g();
    }
    k = m * 29 + d.hashCode();
    b = k;
    return k;
  }
  
  public ej i()
  {
    return h();
  }
  
  public final boolean j()
  {
    int k = h;
    if (k != -1) {
      return k == 1;
    }
    if (!d())
    {
      h = 0;
      return false;
    }
    if (!f())
    {
      h = 0;
      return false;
    }
    h = 1;
    return true;
  }
  
  public ej k()
  {
    return a(this);
  }
}

/* Location:
 * Qualified Name:     eh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */