import java.util.Collections;
import java.util.List;

public final class ed
  extends qf
  implements eg
{
  public static qC<ed> a = new ee();
  private static final ed c;
  private static volatile qB m = null;
  private final pT d;
  private int e;
  private List<Integer> f;
  private int g;
  private int h;
  private boolean i;
  private boolean j;
  private byte k = -1;
  private int l = -1;
  
  static
  {
    c = new ed(true);
    c.u();
  }
  
  /* Error */
  private ed(pW parampW, qa paramqa)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 8
    //   3: aload_0
    //   4: invokespecial 54	qf:<init>	()V
    //   7: aload_0
    //   8: iconst_m1
    //   9: putfield 56	ed:k	B
    //   12: aload_0
    //   13: iconst_m1
    //   14: putfield 58	ed:l	I
    //   17: aload_0
    //   18: invokespecial 47	ed:u	()V
    //   21: invokestatic 63	pT:i	()LpV;
    //   24: astore 10
    //   26: aload 10
    //   28: invokestatic 68	pY:a	(Ljava/io/OutputStream;)LpY;
    //   31: astore 11
    //   33: iconst_0
    //   34: istore_3
    //   35: iload 8
    //   37: ifne +562 -> 599
    //   40: iload_3
    //   41: istore 6
    //   43: iload_3
    //   44: istore 4
    //   46: iload_3
    //   47: istore 7
    //   49: aload_1
    //   50: invokevirtual 73	pW:a	()I
    //   53: istore 5
    //   55: iload 5
    //   57: lookupswitch	default:+629->686, 0:+632->689, 8:+95->152, 16:+186->243, 24:+246->303, 26:+316->373, 32:+464->521, 48:+503->560
    //   124: iload_3
    //   125: istore 6
    //   127: iload_3
    //   128: istore 4
    //   130: iload_3
    //   131: istore 7
    //   133: aload_0
    //   134: aload_1
    //   135: aload 11
    //   137: aload_2
    //   138: iload 5
    //   140: invokevirtual 76	ed:a	(LpW;LpY;Lqa;I)Z
    //   143: ifne -108 -> 35
    //   146: iconst_1
    //   147: istore 8
    //   149: goto -114 -> 35
    //   152: iload_3
    //   153: istore 6
    //   155: iload_3
    //   156: istore 4
    //   158: iload_3
    //   159: istore 7
    //   161: aload_0
    //   162: aload_0
    //   163: getfield 78	ed:e	I
    //   166: bipush 8
    //   168: ior
    //   169: putfield 78	ed:e	I
    //   172: iload_3
    //   173: istore 6
    //   175: iload_3
    //   176: istore 4
    //   178: iload_3
    //   179: istore 7
    //   181: aload_0
    //   182: aload_1
    //   183: invokevirtual 81	pW:i	()Z
    //   186: putfield 83	ed:j	Z
    //   189: goto -154 -> 35
    //   192: astore_1
    //   193: iload 6
    //   195: istore 4
    //   197: aload_1
    //   198: aload_0
    //   199: invokevirtual 86	qr:a	(Lqy;)Lqr;
    //   202: athrow
    //   203: astore_1
    //   204: iload 4
    //   206: iconst_1
    //   207: iand
    //   208: iconst_1
    //   209: if_icmpne +14 -> 223
    //   212: aload_0
    //   213: aload_0
    //   214: getfield 88	ed:f	Ljava/util/List;
    //   217: invokestatic 94	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
    //   220: putfield 88	ed:f	Ljava/util/List;
    //   223: aload 11
    //   225: invokevirtual 96	pY:a	()V
    //   228: aload_0
    //   229: aload 10
    //   231: invokevirtual 101	pV:a	()LpT;
    //   234: putfield 103	ed:d	LpT;
    //   237: aload_0
    //   238: invokevirtual 106	ed:R	()V
    //   241: aload_1
    //   242: athrow
    //   243: iload_3
    //   244: istore 6
    //   246: iload_3
    //   247: istore 4
    //   249: iload_3
    //   250: istore 7
    //   252: aload_0
    //   253: aload_0
    //   254: getfield 78	ed:e	I
    //   257: iconst_1
    //   258: ior
    //   259: putfield 78	ed:e	I
    //   262: iload_3
    //   263: istore 6
    //   265: iload_3
    //   266: istore 4
    //   268: iload_3
    //   269: istore 7
    //   271: aload_0
    //   272: aload_1
    //   273: invokevirtual 108	pW:f	()I
    //   276: putfield 110	ed:g	I
    //   279: goto -244 -> 35
    //   282: astore_1
    //   283: iload 7
    //   285: istore 4
    //   287: new 51	qr
    //   290: dup
    //   291: aload_1
    //   292: invokevirtual 114	java/io/IOException:getMessage	()Ljava/lang/String;
    //   295: invokespecial 117	qr:<init>	(Ljava/lang/String;)V
    //   298: aload_0
    //   299: invokevirtual 86	qr:a	(Lqy;)Lqr;
    //   302: athrow
    //   303: iload_3
    //   304: istore 5
    //   306: iload_3
    //   307: iconst_1
    //   308: iand
    //   309: iconst_1
    //   310: if_icmpeq +28 -> 338
    //   313: iload_3
    //   314: istore 6
    //   316: iload_3
    //   317: istore 4
    //   319: iload_3
    //   320: istore 7
    //   322: aload_0
    //   323: new 119	java/util/ArrayList
    //   326: dup
    //   327: invokespecial 120	java/util/ArrayList:<init>	()V
    //   330: putfield 88	ed:f	Ljava/util/List;
    //   333: iload_3
    //   334: iconst_1
    //   335: ior
    //   336: istore 5
    //   338: iload 5
    //   340: istore 6
    //   342: iload 5
    //   344: istore 4
    //   346: iload 5
    //   348: istore 7
    //   350: aload_0
    //   351: getfield 88	ed:f	Ljava/util/List;
    //   354: aload_1
    //   355: invokevirtual 108	pW:f	()I
    //   358: invokestatic 126	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   361: invokeinterface 132 2 0
    //   366: pop
    //   367: iload 5
    //   369: istore_3
    //   370: goto -335 -> 35
    //   373: iload_3
    //   374: istore 6
    //   376: iload_3
    //   377: istore 4
    //   379: iload_3
    //   380: istore 7
    //   382: aload_1
    //   383: aload_1
    //   384: invokevirtual 135	pW:s	()I
    //   387: invokevirtual 138	pW:c	(I)I
    //   390: istore 9
    //   392: iload_3
    //   393: istore 5
    //   395: iload_3
    //   396: iconst_1
    //   397: iand
    //   398: iconst_1
    //   399: if_icmpeq +47 -> 446
    //   402: iload_3
    //   403: istore 6
    //   405: iload_3
    //   406: istore 4
    //   408: iload_3
    //   409: istore 7
    //   411: iload_3
    //   412: istore 5
    //   414: aload_1
    //   415: invokevirtual 141	pW:w	()I
    //   418: ifle +28 -> 446
    //   421: iload_3
    //   422: istore 6
    //   424: iload_3
    //   425: istore 4
    //   427: iload_3
    //   428: istore 7
    //   430: aload_0
    //   431: new 119	java/util/ArrayList
    //   434: dup
    //   435: invokespecial 120	java/util/ArrayList:<init>	()V
    //   438: putfield 88	ed:f	Ljava/util/List;
    //   441: iload_3
    //   442: iconst_1
    //   443: ior
    //   444: istore 5
    //   446: iload 5
    //   448: istore 6
    //   450: iload 5
    //   452: istore 4
    //   454: iload 5
    //   456: istore 7
    //   458: aload_1
    //   459: invokevirtual 141	pW:w	()I
    //   462: ifle +35 -> 497
    //   465: iload 5
    //   467: istore 6
    //   469: iload 5
    //   471: istore 4
    //   473: iload 5
    //   475: istore 7
    //   477: aload_0
    //   478: getfield 88	ed:f	Ljava/util/List;
    //   481: aload_1
    //   482: invokevirtual 108	pW:f	()I
    //   485: invokestatic 126	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   488: invokeinterface 132 2 0
    //   493: pop
    //   494: goto -48 -> 446
    //   497: iload 5
    //   499: istore 6
    //   501: iload 5
    //   503: istore 4
    //   505: iload 5
    //   507: istore 7
    //   509: aload_1
    //   510: iload 9
    //   512: invokevirtual 144	pW:d	(I)V
    //   515: iload 5
    //   517: istore_3
    //   518: goto -483 -> 35
    //   521: iload_3
    //   522: istore 6
    //   524: iload_3
    //   525: istore 4
    //   527: iload_3
    //   528: istore 7
    //   530: aload_0
    //   531: aload_0
    //   532: getfield 78	ed:e	I
    //   535: iconst_2
    //   536: ior
    //   537: putfield 78	ed:e	I
    //   540: iload_3
    //   541: istore 6
    //   543: iload_3
    //   544: istore 4
    //   546: iload_3
    //   547: istore 7
    //   549: aload_0
    //   550: aload_1
    //   551: invokevirtual 108	pW:f	()I
    //   554: putfield 146	ed:h	I
    //   557: goto -522 -> 35
    //   560: iload_3
    //   561: istore 6
    //   563: iload_3
    //   564: istore 4
    //   566: iload_3
    //   567: istore 7
    //   569: aload_0
    //   570: aload_0
    //   571: getfield 78	ed:e	I
    //   574: iconst_4
    //   575: ior
    //   576: putfield 78	ed:e	I
    //   579: iload_3
    //   580: istore 6
    //   582: iload_3
    //   583: istore 4
    //   585: iload_3
    //   586: istore 7
    //   588: aload_0
    //   589: aload_1
    //   590: invokevirtual 81	pW:i	()Z
    //   593: putfield 148	ed:i	Z
    //   596: goto -561 -> 35
    //   599: iload_3
    //   600: iconst_1
    //   601: iand
    //   602: iconst_1
    //   603: if_icmpne +14 -> 617
    //   606: aload_0
    //   607: aload_0
    //   608: getfield 88	ed:f	Ljava/util/List;
    //   611: invokestatic 94	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
    //   614: putfield 88	ed:f	Ljava/util/List;
    //   617: aload 11
    //   619: invokevirtual 96	pY:a	()V
    //   622: aload_0
    //   623: aload 10
    //   625: invokevirtual 101	pV:a	()LpT;
    //   628: putfield 103	ed:d	LpT;
    //   631: aload_0
    //   632: invokevirtual 106	ed:R	()V
    //   635: return
    //   636: astore_1
    //   637: aload_0
    //   638: aload 10
    //   640: invokevirtual 101	pV:a	()LpT;
    //   643: putfield 103	ed:d	LpT;
    //   646: goto -15 -> 631
    //   649: astore_1
    //   650: aload_0
    //   651: aload 10
    //   653: invokevirtual 101	pV:a	()LpT;
    //   656: putfield 103	ed:d	LpT;
    //   659: aload_1
    //   660: athrow
    //   661: astore_2
    //   662: aload_0
    //   663: aload 10
    //   665: invokevirtual 101	pV:a	()LpT;
    //   668: putfield 103	ed:d	LpT;
    //   671: goto -434 -> 237
    //   674: astore_1
    //   675: aload_0
    //   676: aload 10
    //   678: invokevirtual 101	pV:a	()LpT;
    //   681: putfield 103	ed:d	LpT;
    //   684: aload_1
    //   685: athrow
    //   686: goto -562 -> 124
    //   689: iconst_1
    //   690: istore 8
    //   692: goto -657 -> 35
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	695	0	this	ed
    //   0	695	1	parampW	pW
    //   0	695	2	paramqa	qa
    //   34	568	3	n	int
    //   44	540	4	i1	int
    //   53	463	5	i2	int
    //   41	540	6	i3	int
    //   47	540	7	i4	int
    //   1	690	8	i5	int
    //   390	121	9	i6	int
    //   24	653	10	localpV	pV
    //   31	587	11	localpY	pY
    // Exception table:
    //   from	to	target	type
    //   49	55	192	qr
    //   133	146	192	qr
    //   161	172	192	qr
    //   181	189	192	qr
    //   252	262	192	qr
    //   271	279	192	qr
    //   322	333	192	qr
    //   350	367	192	qr
    //   382	392	192	qr
    //   414	421	192	qr
    //   430	441	192	qr
    //   458	465	192	qr
    //   477	494	192	qr
    //   509	515	192	qr
    //   530	540	192	qr
    //   549	557	192	qr
    //   569	579	192	qr
    //   588	596	192	qr
    //   49	55	203	finally
    //   133	146	203	finally
    //   161	172	203	finally
    //   181	189	203	finally
    //   197	203	203	finally
    //   252	262	203	finally
    //   271	279	203	finally
    //   287	303	203	finally
    //   322	333	203	finally
    //   350	367	203	finally
    //   382	392	203	finally
    //   414	421	203	finally
    //   430	441	203	finally
    //   458	465	203	finally
    //   477	494	203	finally
    //   509	515	203	finally
    //   530	540	203	finally
    //   549	557	203	finally
    //   569	579	203	finally
    //   588	596	203	finally
    //   49	55	282	java/io/IOException
    //   133	146	282	java/io/IOException
    //   161	172	282	java/io/IOException
    //   181	189	282	java/io/IOException
    //   252	262	282	java/io/IOException
    //   271	279	282	java/io/IOException
    //   322	333	282	java/io/IOException
    //   350	367	282	java/io/IOException
    //   382	392	282	java/io/IOException
    //   414	421	282	java/io/IOException
    //   430	441	282	java/io/IOException
    //   458	465	282	java/io/IOException
    //   477	494	282	java/io/IOException
    //   509	515	282	java/io/IOException
    //   530	540	282	java/io/IOException
    //   549	557	282	java/io/IOException
    //   569	579	282	java/io/IOException
    //   588	596	282	java/io/IOException
    //   617	622	636	java/io/IOException
    //   617	622	649	finally
    //   223	228	661	java/io/IOException
    //   223	228	674	finally
  }
  
  private ed(qh paramqh)
  {
    super(paramqh);
    d = paramqh.r();
  }
  
  private ed(boolean paramBoolean)
  {
    d = pT.a;
  }
  
  public static ed a()
  {
    return c;
  }
  
  public static ef a(ed paramed)
  {
    return r().a(paramed);
  }
  
  public static ef r()
  {
    return ef.k();
  }
  
  private void u()
  {
    f = Collections.emptyList();
    g = 0;
    h = 0;
    i = false;
    j = false;
  }
  
  public ed b()
  {
    return c;
  }
  
  public qC<ed> c()
  {
    return a;
  }
  
  public List<Integer> d()
  {
    return f;
  }
  
  public int e()
  {
    return f.size();
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
    int n;
    label43:
    label60:
    int i1;
    if (d().equals(((ed)paramObject).d()))
    {
      n = 1;
      if ((n == 0) || (f() != ((ed)paramObject).f())) {
        break label220;
      }
      n = 1;
      i1 = n;
      if (f())
      {
        if ((n == 0) || (g() != ((ed)paramObject).g())) {
          break label225;
        }
        i1 = 1;
      }
      label86:
      if ((i1 == 0) || (h() != ((ed)paramObject).h())) {
        break label230;
      }
      n = 1;
      label103:
      i1 = n;
      if (h())
      {
        if ((n == 0) || (i() != ((ed)paramObject).i())) {
          break label235;
        }
        i1 = 1;
      }
      label129:
      if ((i1 == 0) || (k() != ((ed)paramObject).k())) {
        break label240;
      }
      n = 1;
      label146:
      i1 = n;
      if (k())
      {
        if ((n == 0) || (l() != ((ed)paramObject).l())) {
          break label245;
        }
        i1 = 1;
      }
      label172:
      if ((i1 == 0) || (m() != ((ed)paramObject).m())) {
        break label250;
      }
    }
    label220:
    label225:
    label230:
    label235:
    label240:
    label245:
    label250:
    for (boolean bool = true;; bool = false)
    {
      if (!m()) {
        break label256;
      }
      if ((bool) && (q() == ((ed)paramObject).q())) {
        break;
      }
      return false;
      n = 0;
      break label43;
      n = 0;
      break label60;
      i1 = 0;
      break label86;
      n = 0;
      break label103;
      i1 = 0;
      break label129;
      n = 0;
      break label146;
      i1 = 0;
      break label172;
    }
    label256:
    return bool;
  }
  
  public boolean f()
  {
    return (e & 0x1) == 1;
  }
  
  public int g()
  {
    return g;
  }
  
  public boolean h()
  {
    return (e & 0x2) == 2;
  }
  
  public int hashCode()
  {
    if (b != 0) {
      return b;
    }
    int i1 = ed.class.hashCode() + 779;
    int n = i1;
    if (e() > 0) {
      n = (i1 * 37 + 3) * 53 + d().hashCode();
    }
    i1 = n;
    if (f()) {
      i1 = (n * 37 + 2) * 53 + g();
    }
    n = i1;
    if (h()) {
      n = (i1 * 37 + 4) * 53 + i();
    }
    i1 = n;
    if (k()) {
      i1 = (n * 37 + 6) * 53 + qo.a(l());
    }
    n = i1;
    if (m()) {
      n = (i1 * 37 + 1) * 53 + qo.a(q());
    }
    n = n * 29 + d.hashCode();
    b = n;
    return n;
  }
  
  public int i()
  {
    return h;
  }
  
  public final boolean j()
  {
    int n = k;
    if (n != -1) {
      return n == 1;
    }
    if (!f())
    {
      k = 0;
      return false;
    }
    k = 1;
    return true;
  }
  
  public boolean k()
  {
    return (e & 0x4) == 4;
  }
  
  public boolean l()
  {
    return i;
  }
  
  public boolean m()
  {
    return (e & 0x8) == 8;
  }
  
  public boolean q()
  {
    return j;
  }
  
  public ef s()
  {
    return r();
  }
  
  public ef t()
  {
    return a(this);
  }
}

/* Location:
 * Qualified Name:     ed
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */