public final class ed
  extends qi
  implements eg
{
  public static qF<ed> a = new ee();
  private static final ed c;
  private static volatile qE j = null;
  private final pW d;
  private int e;
  private int f;
  private int g;
  private byte h = -1;
  private int i = -1;
  
  static
  {
    c = new ed(true);
    c.l();
  }
  
  /* Error */
  private ed(pZ parampZ, qd paramqd)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 48	qi:<init>	()V
    //   4: aload_0
    //   5: iconst_m1
    //   6: putfield 50	ed:h	B
    //   9: aload_0
    //   10: iconst_m1
    //   11: putfield 52	ed:i	I
    //   14: aload_0
    //   15: invokespecial 41	ed:l	()V
    //   18: invokestatic 57	pW:i	()LpY;
    //   21: astore 5
    //   23: aload 5
    //   25: invokestatic 62	qb:a	(Ljava/io/OutputStream;)Lqb;
    //   28: astore 6
    //   30: iconst_0
    //   31: istore_3
    //   32: iload_3
    //   33: ifne +152 -> 185
    //   36: aload_1
    //   37: invokevirtual 67	pZ:a	()I
    //   40: istore 4
    //   42: iload 4
    //   44: lookupswitch	default:+210->254, 0:+213->257, 8:+54->98, 16:+103->147
    //   80: aload_0
    //   81: aload_1
    //   82: aload 6
    //   84: aload_2
    //   85: iload 4
    //   87: invokevirtual 70	ed:a	(LpZ;Lqb;Lqd;I)Z
    //   90: ifne -58 -> 32
    //   93: iconst_1
    //   94: istore_3
    //   95: goto -63 -> 32
    //   98: aload_0
    //   99: aload_0
    //   100: getfield 72	ed:e	I
    //   103: iconst_1
    //   104: ior
    //   105: putfield 72	ed:e	I
    //   108: aload_0
    //   109: aload_1
    //   110: invokevirtual 74	pZ:f	()I
    //   113: putfield 76	ed:f	I
    //   116: goto -84 -> 32
    //   119: astore_1
    //   120: aload_1
    //   121: aload_0
    //   122: invokevirtual 79	qu:a	(LqB;)Lqu;
    //   125: athrow
    //   126: astore_1
    //   127: aload 6
    //   129: invokevirtual 81	qb:a	()V
    //   132: aload_0
    //   133: aload 5
    //   135: invokevirtual 86	pY:a	()LpW;
    //   138: putfield 88	ed:d	LpW;
    //   141: aload_0
    //   142: invokevirtual 91	ed:R	()V
    //   145: aload_1
    //   146: athrow
    //   147: aload_0
    //   148: aload_0
    //   149: getfield 72	ed:e	I
    //   152: iconst_2
    //   153: ior
    //   154: putfield 72	ed:e	I
    //   157: aload_0
    //   158: aload_1
    //   159: invokevirtual 74	pZ:f	()I
    //   162: putfield 93	ed:g	I
    //   165: goto -133 -> 32
    //   168: astore_1
    //   169: new 45	qu
    //   172: dup
    //   173: aload_1
    //   174: invokevirtual 97	java/io/IOException:getMessage	()Ljava/lang/String;
    //   177: invokespecial 100	qu:<init>	(Ljava/lang/String;)V
    //   180: aload_0
    //   181: invokevirtual 79	qu:a	(LqB;)Lqu;
    //   184: athrow
    //   185: aload 6
    //   187: invokevirtual 81	qb:a	()V
    //   190: aload_0
    //   191: aload 5
    //   193: invokevirtual 86	pY:a	()LpW;
    //   196: putfield 88	ed:d	LpW;
    //   199: aload_0
    //   200: invokevirtual 91	ed:R	()V
    //   203: return
    //   204: astore_1
    //   205: aload_0
    //   206: aload 5
    //   208: invokevirtual 86	pY:a	()LpW;
    //   211: putfield 88	ed:d	LpW;
    //   214: goto -15 -> 199
    //   217: astore_1
    //   218: aload_0
    //   219: aload 5
    //   221: invokevirtual 86	pY:a	()LpW;
    //   224: putfield 88	ed:d	LpW;
    //   227: aload_1
    //   228: athrow
    //   229: astore_2
    //   230: aload_0
    //   231: aload 5
    //   233: invokevirtual 86	pY:a	()LpW;
    //   236: putfield 88	ed:d	LpW;
    //   239: goto -98 -> 141
    //   242: astore_1
    //   243: aload_0
    //   244: aload 5
    //   246: invokevirtual 86	pY:a	()LpW;
    //   249: putfield 88	ed:d	LpW;
    //   252: aload_1
    //   253: athrow
    //   254: goto -174 -> 80
    //   257: iconst_1
    //   258: istore_3
    //   259: goto -227 -> 32
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	262	0	this	ed
    //   0	262	1	parampZ	pZ
    //   0	262	2	paramqd	qd
    //   31	228	3	k	int
    //   40	46	4	m	int
    //   21	224	5	localpY	pY
    //   28	158	6	localqb	qb
    // Exception table:
    //   from	to	target	type
    //   36	42	119	qu
    //   80	93	119	qu
    //   98	116	119	qu
    //   147	165	119	qu
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
  
  private ed(qk paramqk)
  {
    super(paramqk);
    d = paramqk.r();
  }
  
  private ed(boolean paramBoolean)
  {
    d = pW.a;
  }
  
  public static ed a()
  {
    return c;
  }
  
  public static ef a(ed paramed)
  {
    return h().a(paramed);
  }
  
  public static ef h()
  {
    return ef.l();
  }
  
  private void l()
  {
    f = 0;
    g = 0;
  }
  
  public ed b()
  {
    return c;
  }
  
  public qF<ed> c()
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
    if (!(paramObject instanceof ed)) {
      return super.equals(paramObject);
    }
    paramObject = (ed)paramObject;
    int k;
    label38:
    int m;
    if (d() == ((ed)paramObject).d())
    {
      k = 1;
      m = k;
      if (d())
      {
        if ((k == 0) || (e() != ((ed)paramObject).e())) {
          break label112;
        }
        m = 1;
      }
      label64:
      if ((m == 0) || (f() != ((ed)paramObject).f())) {
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
      if ((bool) && (g() == ((ed)paramObject).g())) {
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
    int m = ed.class.hashCode() + 779;
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
  
  public ef i()
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
  
  public ef k()
  {
    return a(this);
  }
}

/* Location:
 * Qualified Name:     ed
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */