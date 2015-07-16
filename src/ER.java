import java.util.Collections;
import java.util.List;

public final class er
  extends qm<er>
  implements ey
{
  public static qF<er> a = new es();
  private static final er c;
  private static volatile qE t = null;
  private final pW d;
  private int e;
  private ew f;
  private Object g;
  private List<er> h;
  private List<er> i;
  private List<er> j;
  private Object k;
  private Object l;
  private long m;
  private boolean n;
  private List<er> o;
  private List<eu> p;
  private boolean q;
  private byte r = -1;
  private int s = -1;
  
  static
  {
    c = new er(true);
    c.J();
  }
  
  /* Error */
  private er(pZ parampZ, qd paramqd)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 65	qm:<init>	()V
    //   4: aload_0
    //   5: iconst_m1
    //   6: putfield 67	er:r	B
    //   9: aload_0
    //   10: iconst_m1
    //   11: putfield 69	er:s	I
    //   14: aload_0
    //   15: invokespecial 58	er:J	()V
    //   18: iconst_0
    //   19: istore_3
    //   20: invokestatic 74	pW:i	()LpY;
    //   23: astore 11
    //   25: aload 11
    //   27: invokestatic 79	qb:a	(Ljava/io/OutputStream;)Lqb;
    //   30: astore 12
    //   32: iconst_0
    //   33: istore 4
    //   35: iload 4
    //   37: ifne +1273 -> 1310
    //   40: iload_3
    //   41: istore 5
    //   43: aload_1
    //   44: invokevirtual 84	pZ:a	()I
    //   47: istore 9
    //   49: iload 9
    //   51: lookupswitch	default:+1476->1527, 0:+1492->1543, 8:+149->200, 18:+241->292, 26:+285->336, 34:+350->401, 42:+418->469, 50:+486->537, 58:+530->581, 64:+575->626, 72:+613->664, 80:+651->702, 82:+773->824, 90:+1150->1201, 96:+1221->1272
    //   172: iload_3
    //   173: istore 5
    //   175: aload_0
    //   176: aload_1
    //   177: aload 12
    //   179: aload_2
    //   180: iload 9
    //   182: invokevirtual 87	er:a	(LpZ;Lqb;Lqd;I)Z
    //   185: ifne +1112 -> 1297
    //   188: iconst_1
    //   189: istore 5
    //   191: iload_3
    //   192: istore 4
    //   194: iload 5
    //   196: istore_3
    //   197: goto +1333 -> 1530
    //   200: iload_3
    //   201: istore 5
    //   203: aload_1
    //   204: invokevirtual 89	pZ:n	()I
    //   207: istore 6
    //   209: iload_3
    //   210: istore 5
    //   212: iload 6
    //   214: invokestatic 94	ew:a	(I)Lew;
    //   217: astore 13
    //   219: aload 13
    //   221: ifnonnull +36 -> 257
    //   224: iload_3
    //   225: istore 5
    //   227: aload 12
    //   229: iload 9
    //   231: invokevirtual 97	qb:d	(I)V
    //   234: iload_3
    //   235: istore 5
    //   237: aload 12
    //   239: iload 6
    //   241: invokevirtual 97	qb:d	(I)V
    //   244: iload_3
    //   245: istore 5
    //   247: iload 4
    //   249: istore_3
    //   250: iload 5
    //   252: istore 4
    //   254: goto +1276 -> 1530
    //   257: iload_3
    //   258: istore 5
    //   260: aload_0
    //   261: aload_0
    //   262: getfield 99	er:e	I
    //   265: iconst_1
    //   266: ior
    //   267: putfield 99	er:e	I
    //   270: iload_3
    //   271: istore 5
    //   273: aload_0
    //   274: aload 13
    //   276: putfield 101	er:f	Lew;
    //   279: iload_3
    //   280: istore 5
    //   282: iload 4
    //   284: istore_3
    //   285: iload 5
    //   287: istore 4
    //   289: goto +1241 -> 1530
    //   292: iload_3
    //   293: istore 5
    //   295: aload_1
    //   296: invokevirtual 104	pZ:l	()LpW;
    //   299: astore 13
    //   301: iload_3
    //   302: istore 5
    //   304: aload_0
    //   305: aload_0
    //   306: getfield 99	er:e	I
    //   309: iconst_2
    //   310: ior
    //   311: putfield 99	er:e	I
    //   314: iload_3
    //   315: istore 5
    //   317: aload_0
    //   318: aload 13
    //   320: putfield 106	er:g	Ljava/lang/Object;
    //   323: iload_3
    //   324: istore 5
    //   326: iload 4
    //   328: istore_3
    //   329: iload 5
    //   331: istore 4
    //   333: goto +1197 -> 1530
    //   336: iload_3
    //   337: iconst_4
    //   338: iand
    //   339: iconst_4
    //   340: if_icmpeq +1181 -> 1521
    //   343: iload_3
    //   344: istore 5
    //   346: aload_0
    //   347: new 108	java/util/ArrayList
    //   350: dup
    //   351: invokespecial 109	java/util/ArrayList:<init>	()V
    //   354: putfield 111	er:h	Ljava/util/List;
    //   357: iload_3
    //   358: iconst_4
    //   359: ior
    //   360: istore 7
    //   362: iload 7
    //   364: istore_3
    //   365: iload 7
    //   367: istore 5
    //   369: iload 7
    //   371: istore 6
    //   373: aload_0
    //   374: getfield 111	er:h	Ljava/util/List;
    //   377: aload_1
    //   378: getstatic 49	er:a	LqF;
    //   381: aload_2
    //   382: invokevirtual 114	pZ:a	(LqF;Lqd;)LqB;
    //   385: invokeinterface 120 2 0
    //   390: pop
    //   391: iload 4
    //   393: istore_3
    //   394: iload 7
    //   396: istore 4
    //   398: goto +1132 -> 1530
    //   401: iload_3
    //   402: bipush 8
    //   404: iand
    //   405: bipush 8
    //   407: if_icmpeq +1108 -> 1515
    //   410: iload_3
    //   411: istore 5
    //   413: aload_0
    //   414: new 108	java/util/ArrayList
    //   417: dup
    //   418: invokespecial 109	java/util/ArrayList:<init>	()V
    //   421: putfield 122	er:i	Ljava/util/List;
    //   424: iload_3
    //   425: bipush 8
    //   427: ior
    //   428: istore 7
    //   430: iload 7
    //   432: istore_3
    //   433: iload 7
    //   435: istore 5
    //   437: iload 7
    //   439: istore 6
    //   441: aload_0
    //   442: getfield 122	er:i	Ljava/util/List;
    //   445: aload_1
    //   446: getstatic 49	er:a	LqF;
    //   449: aload_2
    //   450: invokevirtual 114	pZ:a	(LqF;Lqd;)LqB;
    //   453: invokeinterface 120 2 0
    //   458: pop
    //   459: iload 4
    //   461: istore_3
    //   462: iload 7
    //   464: istore 4
    //   466: goto +1064 -> 1530
    //   469: iload_3
    //   470: bipush 16
    //   472: iand
    //   473: bipush 16
    //   475: if_icmpeq +1034 -> 1509
    //   478: iload_3
    //   479: istore 5
    //   481: aload_0
    //   482: new 108	java/util/ArrayList
    //   485: dup
    //   486: invokespecial 109	java/util/ArrayList:<init>	()V
    //   489: putfield 124	er:j	Ljava/util/List;
    //   492: iload_3
    //   493: bipush 16
    //   495: ior
    //   496: istore 7
    //   498: iload 7
    //   500: istore_3
    //   501: iload 7
    //   503: istore 5
    //   505: iload 7
    //   507: istore 6
    //   509: aload_0
    //   510: getfield 124	er:j	Ljava/util/List;
    //   513: aload_1
    //   514: getstatic 49	er:a	LqF;
    //   517: aload_2
    //   518: invokevirtual 114	pZ:a	(LqF;Lqd;)LqB;
    //   521: invokeinterface 120 2 0
    //   526: pop
    //   527: iload 4
    //   529: istore_3
    //   530: iload 7
    //   532: istore 4
    //   534: goto +996 -> 1530
    //   537: iload_3
    //   538: istore 5
    //   540: aload_1
    //   541: invokevirtual 104	pZ:l	()LpW;
    //   544: astore 13
    //   546: iload_3
    //   547: istore 5
    //   549: aload_0
    //   550: aload_0
    //   551: getfield 99	er:e	I
    //   554: iconst_4
    //   555: ior
    //   556: putfield 99	er:e	I
    //   559: iload_3
    //   560: istore 5
    //   562: aload_0
    //   563: aload 13
    //   565: putfield 126	er:k	Ljava/lang/Object;
    //   568: iload_3
    //   569: istore 5
    //   571: iload 4
    //   573: istore_3
    //   574: iload 5
    //   576: istore 4
    //   578: goto +952 -> 1530
    //   581: iload_3
    //   582: istore 5
    //   584: aload_1
    //   585: invokevirtual 104	pZ:l	()LpW;
    //   588: astore 13
    //   590: iload_3
    //   591: istore 5
    //   593: aload_0
    //   594: aload_0
    //   595: getfield 99	er:e	I
    //   598: bipush 8
    //   600: ior
    //   601: putfield 99	er:e	I
    //   604: iload_3
    //   605: istore 5
    //   607: aload_0
    //   608: aload 13
    //   610: putfield 128	er:l	Ljava/lang/Object;
    //   613: iload_3
    //   614: istore 5
    //   616: iload 4
    //   618: istore_3
    //   619: iload 5
    //   621: istore 4
    //   623: goto +907 -> 1530
    //   626: iload_3
    //   627: istore 5
    //   629: aload_0
    //   630: aload_0
    //   631: getfield 99	er:e	I
    //   634: bipush 16
    //   636: ior
    //   637: putfield 99	er:e	I
    //   640: iload_3
    //   641: istore 5
    //   643: aload_0
    //   644: aload_1
    //   645: invokevirtual 131	pZ:e	()J
    //   648: putfield 133	er:m	J
    //   651: iload_3
    //   652: istore 5
    //   654: iload 4
    //   656: istore_3
    //   657: iload 5
    //   659: istore 4
    //   661: goto +869 -> 1530
    //   664: iload_3
    //   665: istore 5
    //   667: aload_0
    //   668: aload_0
    //   669: getfield 99	er:e	I
    //   672: bipush 64
    //   674: ior
    //   675: putfield 99	er:e	I
    //   678: iload_3
    //   679: istore 5
    //   681: aload_0
    //   682: aload_1
    //   683: invokevirtual 136	pZ:i	()Z
    //   686: putfield 138	er:q	Z
    //   689: iload_3
    //   690: istore 5
    //   692: iload 4
    //   694: istore_3
    //   695: iload 5
    //   697: istore 4
    //   699: goto +831 -> 1530
    //   702: iload_3
    //   703: istore 5
    //   705: aload_1
    //   706: invokevirtual 89	pZ:n	()I
    //   709: istore 6
    //   711: iload_3
    //   712: istore 5
    //   714: iload 6
    //   716: invokestatic 143	eu:a	(I)Leu;
    //   719: astore 13
    //   721: aload 13
    //   723: ifnonnull +36 -> 759
    //   726: iload_3
    //   727: istore 5
    //   729: aload 12
    //   731: iload 9
    //   733: invokevirtual 97	qb:d	(I)V
    //   736: iload_3
    //   737: istore 5
    //   739: aload 12
    //   741: iload 6
    //   743: invokevirtual 97	qb:d	(I)V
    //   746: iload_3
    //   747: istore 5
    //   749: iload 4
    //   751: istore_3
    //   752: iload 5
    //   754: istore 4
    //   756: goto +774 -> 1530
    //   759: iload_3
    //   760: sipush 1024
    //   763: iand
    //   764: sipush 1024
    //   767: if_icmpeq +736 -> 1503
    //   770: iload_3
    //   771: istore 5
    //   773: aload_0
    //   774: new 108	java/util/ArrayList
    //   777: dup
    //   778: invokespecial 109	java/util/ArrayList:<init>	()V
    //   781: putfield 145	er:p	Ljava/util/List;
    //   784: iload_3
    //   785: sipush 1024
    //   788: ior
    //   789: istore 7
    //   791: iload 7
    //   793: istore_3
    //   794: iload 7
    //   796: istore 5
    //   798: iload 7
    //   800: istore 6
    //   802: aload_0
    //   803: getfield 145	er:p	Ljava/util/List;
    //   806: aload 13
    //   808: invokeinterface 120 2 0
    //   813: pop
    //   814: iload 4
    //   816: istore_3
    //   817: iload 7
    //   819: istore 4
    //   821: goto +709 -> 1530
    //   824: iload_3
    //   825: istore 5
    //   827: aload_1
    //   828: aload_1
    //   829: invokevirtual 147	pZ:s	()I
    //   832: invokevirtual 150	pZ:c	(I)I
    //   835: istore 10
    //   837: iload_3
    //   838: istore 7
    //   840: iload 7
    //   842: istore_3
    //   843: iload 7
    //   845: istore 5
    //   847: iload 7
    //   849: istore 6
    //   851: aload_1
    //   852: invokevirtual 153	pZ:w	()I
    //   855: ifle +319 -> 1174
    //   858: iload 7
    //   860: istore_3
    //   861: iload 7
    //   863: istore 5
    //   865: iload 7
    //   867: istore 6
    //   869: aload_1
    //   870: invokevirtual 89	pZ:n	()I
    //   873: istore 8
    //   875: iload 7
    //   877: istore_3
    //   878: iload 7
    //   880: istore 5
    //   882: iload 7
    //   884: istore 6
    //   886: iload 8
    //   888: invokestatic 143	eu:a	(I)Leu;
    //   891: astore 13
    //   893: aload 13
    //   895: ifnonnull +180 -> 1075
    //   898: iload 7
    //   900: istore_3
    //   901: iload 7
    //   903: istore 5
    //   905: iload 7
    //   907: istore 6
    //   909: aload 12
    //   911: iload 9
    //   913: invokevirtual 97	qb:d	(I)V
    //   916: iload 7
    //   918: istore_3
    //   919: iload 7
    //   921: istore 5
    //   923: iload 7
    //   925: istore 6
    //   927: aload 12
    //   929: iload 8
    //   931: invokevirtual 97	qb:d	(I)V
    //   934: goto -94 -> 840
    //   937: astore_1
    //   938: iload_3
    //   939: istore 5
    //   941: aload_1
    //   942: aload_0
    //   943: invokevirtual 156	qu:a	(LqB;)Lqu;
    //   946: athrow
    //   947: astore_1
    //   948: iload 5
    //   950: iconst_4
    //   951: iand
    //   952: iconst_4
    //   953: if_icmpne +14 -> 967
    //   956: aload_0
    //   957: aload_0
    //   958: getfield 111	er:h	Ljava/util/List;
    //   961: invokestatic 162	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
    //   964: putfield 111	er:h	Ljava/util/List;
    //   967: iload 5
    //   969: bipush 8
    //   971: iand
    //   972: bipush 8
    //   974: if_icmpne +14 -> 988
    //   977: aload_0
    //   978: aload_0
    //   979: getfield 122	er:i	Ljava/util/List;
    //   982: invokestatic 162	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
    //   985: putfield 122	er:i	Ljava/util/List;
    //   988: iload 5
    //   990: bipush 16
    //   992: iand
    //   993: bipush 16
    //   995: if_icmpne +14 -> 1009
    //   998: aload_0
    //   999: aload_0
    //   1000: getfield 124	er:j	Ljava/util/List;
    //   1003: invokestatic 162	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
    //   1006: putfield 124	er:j	Ljava/util/List;
    //   1009: iload 5
    //   1011: sipush 1024
    //   1014: iand
    //   1015: sipush 1024
    //   1018: if_icmpne +14 -> 1032
    //   1021: aload_0
    //   1022: aload_0
    //   1023: getfield 145	er:p	Ljava/util/List;
    //   1026: invokestatic 162	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
    //   1029: putfield 145	er:p	Ljava/util/List;
    //   1032: iload 5
    //   1034: sipush 512
    //   1037: iand
    //   1038: sipush 512
    //   1041: if_icmpne +14 -> 1055
    //   1044: aload_0
    //   1045: aload_0
    //   1046: getfield 164	er:o	Ljava/util/List;
    //   1049: invokestatic 162	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
    //   1052: putfield 164	er:o	Ljava/util/List;
    //   1055: aload 12
    //   1057: invokevirtual 166	qb:a	()V
    //   1060: aload_0
    //   1061: aload 11
    //   1063: invokevirtual 170	pY:a	()LpW;
    //   1066: putfield 172	er:d	LpW;
    //   1069: aload_0
    //   1070: invokevirtual 175	er:R	()V
    //   1073: aload_1
    //   1074: athrow
    //   1075: iload 7
    //   1077: istore 8
    //   1079: iload 7
    //   1081: sipush 1024
    //   1084: iand
    //   1085: sipush 1024
    //   1088: if_icmpeq +33 -> 1121
    //   1091: iload 7
    //   1093: istore_3
    //   1094: iload 7
    //   1096: istore 5
    //   1098: iload 7
    //   1100: istore 6
    //   1102: aload_0
    //   1103: new 108	java/util/ArrayList
    //   1106: dup
    //   1107: invokespecial 109	java/util/ArrayList:<init>	()V
    //   1110: putfield 145	er:p	Ljava/util/List;
    //   1113: iload 7
    //   1115: sipush 1024
    //   1118: ior
    //   1119: istore 8
    //   1121: iload 8
    //   1123: istore_3
    //   1124: iload 8
    //   1126: istore 5
    //   1128: iload 8
    //   1130: istore 6
    //   1132: aload_0
    //   1133: getfield 145	er:p	Ljava/util/List;
    //   1136: aload 13
    //   1138: invokeinterface 120 2 0
    //   1143: pop
    //   1144: iload 8
    //   1146: istore 7
    //   1148: goto -308 -> 840
    //   1151: astore_1
    //   1152: iload 5
    //   1154: istore_3
    //   1155: iload_3
    //   1156: istore 5
    //   1158: new 62	qu
    //   1161: dup
    //   1162: aload_1
    //   1163: invokevirtual 179	java/io/IOException:getMessage	()Ljava/lang/String;
    //   1166: invokespecial 182	qu:<init>	(Ljava/lang/String;)V
    //   1169: aload_0
    //   1170: invokevirtual 156	qu:a	(LqB;)Lqu;
    //   1173: athrow
    //   1174: iload 7
    //   1176: istore_3
    //   1177: iload 7
    //   1179: istore 5
    //   1181: iload 7
    //   1183: istore 6
    //   1185: aload_1
    //   1186: iload 10
    //   1188: invokevirtual 183	pZ:d	(I)V
    //   1191: iload 4
    //   1193: istore_3
    //   1194: iload 7
    //   1196: istore 4
    //   1198: goto +332 -> 1530
    //   1201: iload_3
    //   1202: sipush 512
    //   1205: iand
    //   1206: sipush 512
    //   1209: if_icmpeq +288 -> 1497
    //   1212: iload_3
    //   1213: istore 5
    //   1215: aload_0
    //   1216: new 108	java/util/ArrayList
    //   1219: dup
    //   1220: invokespecial 109	java/util/ArrayList:<init>	()V
    //   1223: putfield 164	er:o	Ljava/util/List;
    //   1226: iload_3
    //   1227: sipush 512
    //   1230: ior
    //   1231: istore 7
    //   1233: iload 7
    //   1235: istore_3
    //   1236: iload 7
    //   1238: istore 5
    //   1240: iload 7
    //   1242: istore 6
    //   1244: aload_0
    //   1245: getfield 164	er:o	Ljava/util/List;
    //   1248: aload_1
    //   1249: getstatic 49	er:a	LqF;
    //   1252: aload_2
    //   1253: invokevirtual 114	pZ:a	(LqF;Lqd;)LqB;
    //   1256: invokeinterface 120 2 0
    //   1261: pop
    //   1262: iload 4
    //   1264: istore_3
    //   1265: iload 7
    //   1267: istore 4
    //   1269: goto +261 -> 1530
    //   1272: iload_3
    //   1273: istore 5
    //   1275: aload_0
    //   1276: aload_0
    //   1277: getfield 99	er:e	I
    //   1280: bipush 32
    //   1282: ior
    //   1283: putfield 99	er:e	I
    //   1286: iload_3
    //   1287: istore 5
    //   1289: aload_0
    //   1290: aload_1
    //   1291: invokevirtual 136	pZ:i	()Z
    //   1294: putfield 185	er:n	Z
    //   1297: iload_3
    //   1298: istore 5
    //   1300: iload 4
    //   1302: istore_3
    //   1303: iload 5
    //   1305: istore 4
    //   1307: goto +223 -> 1530
    //   1310: iload_3
    //   1311: iconst_4
    //   1312: iand
    //   1313: iconst_4
    //   1314: if_icmpne +14 -> 1328
    //   1317: aload_0
    //   1318: aload_0
    //   1319: getfield 111	er:h	Ljava/util/List;
    //   1322: invokestatic 162	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
    //   1325: putfield 111	er:h	Ljava/util/List;
    //   1328: iload_3
    //   1329: bipush 8
    //   1331: iand
    //   1332: bipush 8
    //   1334: if_icmpne +14 -> 1348
    //   1337: aload_0
    //   1338: aload_0
    //   1339: getfield 122	er:i	Ljava/util/List;
    //   1342: invokestatic 162	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
    //   1345: putfield 122	er:i	Ljava/util/List;
    //   1348: iload_3
    //   1349: bipush 16
    //   1351: iand
    //   1352: bipush 16
    //   1354: if_icmpne +14 -> 1368
    //   1357: aload_0
    //   1358: aload_0
    //   1359: getfield 124	er:j	Ljava/util/List;
    //   1362: invokestatic 162	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
    //   1365: putfield 124	er:j	Ljava/util/List;
    //   1368: iload_3
    //   1369: sipush 1024
    //   1372: iand
    //   1373: sipush 1024
    //   1376: if_icmpne +14 -> 1390
    //   1379: aload_0
    //   1380: aload_0
    //   1381: getfield 145	er:p	Ljava/util/List;
    //   1384: invokestatic 162	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
    //   1387: putfield 145	er:p	Ljava/util/List;
    //   1390: iload_3
    //   1391: sipush 512
    //   1394: iand
    //   1395: sipush 512
    //   1398: if_icmpne +14 -> 1412
    //   1401: aload_0
    //   1402: aload_0
    //   1403: getfield 164	er:o	Ljava/util/List;
    //   1406: invokestatic 162	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
    //   1409: putfield 164	er:o	Ljava/util/List;
    //   1412: aload 12
    //   1414: invokevirtual 166	qb:a	()V
    //   1417: aload_0
    //   1418: aload 11
    //   1420: invokevirtual 170	pY:a	()LpW;
    //   1423: putfield 172	er:d	LpW;
    //   1426: aload_0
    //   1427: invokevirtual 175	er:R	()V
    //   1430: return
    //   1431: astore_1
    //   1432: aload_0
    //   1433: aload 11
    //   1435: invokevirtual 170	pY:a	()LpW;
    //   1438: putfield 172	er:d	LpW;
    //   1441: goto -15 -> 1426
    //   1444: astore_1
    //   1445: aload_0
    //   1446: aload 11
    //   1448: invokevirtual 170	pY:a	()LpW;
    //   1451: putfield 172	er:d	LpW;
    //   1454: aload_1
    //   1455: athrow
    //   1456: astore_2
    //   1457: aload_0
    //   1458: aload 11
    //   1460: invokevirtual 170	pY:a	()LpW;
    //   1463: putfield 172	er:d	LpW;
    //   1466: goto -397 -> 1069
    //   1469: astore_1
    //   1470: aload_0
    //   1471: aload 11
    //   1473: invokevirtual 170	pY:a	()LpW;
    //   1476: putfield 172	er:d	LpW;
    //   1479: aload_1
    //   1480: athrow
    //   1481: astore_1
    //   1482: iload 6
    //   1484: istore 5
    //   1486: goto -538 -> 948
    //   1489: astore_1
    //   1490: goto -335 -> 1155
    //   1493: astore_1
    //   1494: goto -556 -> 938
    //   1497: iload_3
    //   1498: istore 7
    //   1500: goto -267 -> 1233
    //   1503: iload_3
    //   1504: istore 7
    //   1506: goto -715 -> 791
    //   1509: iload_3
    //   1510: istore 7
    //   1512: goto -1014 -> 498
    //   1515: iload_3
    //   1516: istore 7
    //   1518: goto -1088 -> 430
    //   1521: iload_3
    //   1522: istore 7
    //   1524: goto -1162 -> 362
    //   1527: goto -1355 -> 172
    //   1530: iload 4
    //   1532: istore 5
    //   1534: iload_3
    //   1535: istore 4
    //   1537: iload 5
    //   1539: istore_3
    //   1540: goto -1505 -> 35
    //   1543: iconst_1
    //   1544: istore 5
    //   1546: iload_3
    //   1547: istore 4
    //   1549: iload 5
    //   1551: istore_3
    //   1552: goto -22 -> 1530
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1555	0	this	er
    //   0	1555	1	parampZ	pZ
    //   0	1555	2	paramqd	qd
    //   19	1533	3	i1	int
    //   33	1515	4	i2	int
    //   41	1509	5	i3	int
    //   207	1276	6	i4	int
    //   360	1163	7	i5	int
    //   873	272	8	i6	int
    //   47	865	9	i7	int
    //   835	352	10	i8	int
    //   23	1449	11	localpY	pY
    //   30	1383	12	localqb	qb
    //   217	920	13	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   373	391	937	qu
    //   441	459	937	qu
    //   509	527	937	qu
    //   802	814	937	qu
    //   851	858	937	qu
    //   869	875	937	qu
    //   886	893	937	qu
    //   909	916	937	qu
    //   927	934	937	qu
    //   1102	1113	937	qu
    //   1132	1144	937	qu
    //   1185	1191	937	qu
    //   1244	1262	937	qu
    //   43	49	947	finally
    //   175	188	947	finally
    //   203	209	947	finally
    //   212	219	947	finally
    //   227	234	947	finally
    //   237	244	947	finally
    //   260	270	947	finally
    //   273	279	947	finally
    //   295	301	947	finally
    //   304	314	947	finally
    //   317	323	947	finally
    //   346	357	947	finally
    //   413	424	947	finally
    //   481	492	947	finally
    //   540	546	947	finally
    //   549	559	947	finally
    //   562	568	947	finally
    //   584	590	947	finally
    //   593	604	947	finally
    //   607	613	947	finally
    //   629	640	947	finally
    //   643	651	947	finally
    //   667	678	947	finally
    //   681	689	947	finally
    //   705	711	947	finally
    //   714	721	947	finally
    //   729	736	947	finally
    //   739	746	947	finally
    //   773	784	947	finally
    //   827	837	947	finally
    //   941	947	947	finally
    //   1158	1174	947	finally
    //   1215	1226	947	finally
    //   1275	1286	947	finally
    //   1289	1297	947	finally
    //   373	391	1151	java/io/IOException
    //   441	459	1151	java/io/IOException
    //   509	527	1151	java/io/IOException
    //   802	814	1151	java/io/IOException
    //   851	858	1151	java/io/IOException
    //   869	875	1151	java/io/IOException
    //   886	893	1151	java/io/IOException
    //   909	916	1151	java/io/IOException
    //   927	934	1151	java/io/IOException
    //   1102	1113	1151	java/io/IOException
    //   1132	1144	1151	java/io/IOException
    //   1185	1191	1151	java/io/IOException
    //   1244	1262	1151	java/io/IOException
    //   1412	1417	1431	java/io/IOException
    //   1412	1417	1444	finally
    //   1055	1060	1456	java/io/IOException
    //   1055	1060	1469	finally
    //   373	391	1481	finally
    //   441	459	1481	finally
    //   509	527	1481	finally
    //   802	814	1481	finally
    //   851	858	1481	finally
    //   869	875	1481	finally
    //   886	893	1481	finally
    //   909	916	1481	finally
    //   927	934	1481	finally
    //   1102	1113	1481	finally
    //   1132	1144	1481	finally
    //   1185	1191	1481	finally
    //   1244	1262	1481	finally
    //   43	49	1489	java/io/IOException
    //   175	188	1489	java/io/IOException
    //   203	209	1489	java/io/IOException
    //   212	219	1489	java/io/IOException
    //   227	234	1489	java/io/IOException
    //   237	244	1489	java/io/IOException
    //   260	270	1489	java/io/IOException
    //   273	279	1489	java/io/IOException
    //   295	301	1489	java/io/IOException
    //   304	314	1489	java/io/IOException
    //   317	323	1489	java/io/IOException
    //   346	357	1489	java/io/IOException
    //   413	424	1489	java/io/IOException
    //   481	492	1489	java/io/IOException
    //   540	546	1489	java/io/IOException
    //   549	559	1489	java/io/IOException
    //   562	568	1489	java/io/IOException
    //   584	590	1489	java/io/IOException
    //   593	604	1489	java/io/IOException
    //   607	613	1489	java/io/IOException
    //   629	640	1489	java/io/IOException
    //   643	651	1489	java/io/IOException
    //   667	678	1489	java/io/IOException
    //   681	689	1489	java/io/IOException
    //   705	711	1489	java/io/IOException
    //   714	721	1489	java/io/IOException
    //   729	736	1489	java/io/IOException
    //   739	746	1489	java/io/IOException
    //   773	784	1489	java/io/IOException
    //   827	837	1489	java/io/IOException
    //   1215	1226	1489	java/io/IOException
    //   1275	1286	1489	java/io/IOException
    //   1289	1297	1489	java/io/IOException
    //   43	49	1493	qu
    //   175	188	1493	qu
    //   203	209	1493	qu
    //   212	219	1493	qu
    //   227	234	1493	qu
    //   237	244	1493	qu
    //   260	270	1493	qu
    //   273	279	1493	qu
    //   295	301	1493	qu
    //   304	314	1493	qu
    //   317	323	1493	qu
    //   346	357	1493	qu
    //   413	424	1493	qu
    //   481	492	1493	qu
    //   540	546	1493	qu
    //   549	559	1493	qu
    //   562	568	1493	qu
    //   584	590	1493	qu
    //   593	604	1493	qu
    //   607	613	1493	qu
    //   629	640	1493	qu
    //   643	651	1493	qu
    //   667	678	1493	qu
    //   681	689	1493	qu
    //   705	711	1493	qu
    //   714	721	1493	qu
    //   729	736	1493	qu
    //   739	746	1493	qu
    //   773	784	1493	qu
    //   827	837	1493	qu
    //   1215	1226	1493	qu
    //   1275	1286	1493	qu
    //   1289	1297	1493	qu
  }
  
  private er(ql<er, ?> paramql)
  {
    super(paramql);
    d = paramql.r();
  }
  
  private er(boolean paramBoolean)
  {
    d = pW.a;
  }
  
  public static et F()
  {
    return et.q();
  }
  
  private void J()
  {
    f = ew.a;
    g = "";
    h = Collections.emptyList();
    i = Collections.emptyList();
    j = Collections.emptyList();
    k = "";
    l = "";
    m = 0L;
    n = false;
    o = Collections.emptyList();
    p = Collections.emptyList();
    q = false;
  }
  
  public static er a()
  {
    return c;
  }
  
  public static et a(er paramer)
  {
    return F().a(paramer);
  }
  
  public int A()
  {
    return o.size();
  }
  
  public List<eu> B()
  {
    return p;
  }
  
  public int C()
  {
    return p.size();
  }
  
  public boolean D()
  {
    return (e & 0x40) == 64;
  }
  
  public boolean E()
  {
    return q;
  }
  
  public et G()
  {
    return F();
  }
  
  public et H()
  {
    return a(this);
  }
  
  public er a(int paramInt)
  {
    return (er)h.get(paramInt);
  }
  
  public er b()
  {
    return c;
  }
  
  public er b(int paramInt)
  {
    return (er)i.get(paramInt);
  }
  
  public er c(int paramInt)
  {
    return (er)j.get(paramInt);
  }
  
  public qF<er> c()
  {
    return a;
  }
  
  public er d(int paramInt)
  {
    return (er)o.get(paramInt);
  }
  
  public boolean d()
  {
    return (e & 0x1) == 1;
  }
  
  public ew e()
  {
    return f;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof er)) {
      return super.equals(paramObject);
    }
    paramObject = (er)paramObject;
    int i1;
    label38:
    int i2;
    if (d() == ((er)paramObject).d())
    {
      i1 = 1;
      i2 = i1;
      if (d())
      {
        if ((i1 == 0) || (e() != ((er)paramObject).e())) {
          break label447;
        }
        i2 = 1;
      }
      label64:
      if ((i2 == 0) || (f() != ((er)paramObject).f())) {
        break label452;
      }
      i1 = 1;
      label81:
      i2 = i1;
      if (f())
      {
        if ((i1 == 0) || (!g().equals(((er)paramObject).g()))) {
          break label457;
        }
        i2 = 1;
      }
      label110:
      if ((i2 == 0) || (!h().equals(((er)paramObject).h()))) {
        break label462;
      }
      i1 = 1;
      label132:
      if ((i1 == 0) || (!k().equals(((er)paramObject).k()))) {
        break label467;
      }
      i1 = 1;
      label154:
      if ((i1 == 0) || (!m().equals(((er)paramObject).m()))) {
        break label472;
      }
      i1 = 1;
      label176:
      if ((i1 == 0) || (r() != ((er)paramObject).r())) {
        break label477;
      }
      i1 = 1;
      label193:
      i2 = i1;
      if (r())
      {
        if ((i1 == 0) || (!s().equals(((er)paramObject).s()))) {
          break label482;
        }
        i2 = 1;
      }
      label222:
      if ((i2 == 0) || (t() != ((er)paramObject).t())) {
        break label487;
      }
      i1 = 1;
      label239:
      i2 = i1;
      if (t())
      {
        if ((i1 == 0) || (!u().equals(((er)paramObject).u()))) {
          break label492;
        }
        i2 = 1;
      }
      label268:
      if ((i2 == 0) || (v() != ((er)paramObject).v())) {
        break label497;
      }
      i1 = 1;
      label285:
      i2 = i1;
      if (v())
      {
        if ((i1 == 0) || (w() != ((er)paramObject).w())) {
          break label502;
        }
        i2 = 1;
      }
      label312:
      if ((i2 == 0) || (x() != ((er)paramObject).x())) {
        break label507;
      }
      i1 = 1;
      label329:
      i2 = i1;
      if (x())
      {
        if ((i1 == 0) || (y() != ((er)paramObject).y())) {
          break label512;
        }
        i2 = 1;
      }
      label355:
      if ((i2 == 0) || (!z().equals(((er)paramObject).z()))) {
        break label517;
      }
      i1 = 1;
      label377:
      if ((i1 == 0) || (!B().equals(((er)paramObject).B()))) {
        break label522;
      }
      i1 = 1;
      label399:
      if ((i1 == 0) || (D() != ((er)paramObject).D())) {
        break label527;
      }
    }
    label447:
    label452:
    label457:
    label462:
    label467:
    label472:
    label477:
    label482:
    label487:
    label492:
    label497:
    label502:
    label507:
    label512:
    label517:
    label522:
    label527:
    for (boolean bool = true;; bool = false)
    {
      if (!D()) {
        break label533;
      }
      if ((bool) && (E() == ((er)paramObject).E())) {
        break;
      }
      return false;
      i1 = 0;
      break label38;
      i2 = 0;
      break label64;
      i1 = 0;
      break label81;
      i2 = 0;
      break label110;
      i1 = 0;
      break label132;
      i1 = 0;
      break label154;
      i1 = 0;
      break label176;
      i1 = 0;
      break label193;
      i2 = 0;
      break label222;
      i1 = 0;
      break label239;
      i2 = 0;
      break label268;
      i1 = 0;
      break label285;
      i2 = 0;
      break label312;
      i1 = 0;
      break label329;
      i2 = 0;
      break label355;
      i1 = 0;
      break label377;
      i1 = 0;
      break label399;
    }
    label533:
    return bool;
  }
  
  public boolean f()
  {
    return (e & 0x2) == 2;
  }
  
  public String g()
  {
    Object localObject = g;
    if ((localObject instanceof String)) {
      return (String)localObject;
    }
    localObject = (pW)localObject;
    String str = ((pW)localObject).f();
    if (((pW)localObject).g()) {
      g = str;
    }
    return str;
  }
  
  public List<er> h()
  {
    return h;
  }
  
  public int hashCode()
  {
    if (b != 0) {
      return b;
    }
    int i2 = er.class.hashCode() + 779;
    int i1 = i2;
    if (d()) {
      i1 = (i2 * 37 + 1) * 53 + qr.a(e());
    }
    i2 = i1;
    if (f()) {
      i2 = (i1 * 37 + 2) * 53 + g().hashCode();
    }
    i1 = i2;
    if (i() > 0) {
      i1 = (i2 * 37 + 3) * 53 + h().hashCode();
    }
    i2 = i1;
    if (l() > 0) {
      i2 = (i1 * 37 + 4) * 53 + k().hashCode();
    }
    i1 = i2;
    if (q() > 0) {
      i1 = (i2 * 37 + 5) * 53 + m().hashCode();
    }
    i2 = i1;
    if (r()) {
      i2 = (i1 * 37 + 6) * 53 + s().hashCode();
    }
    i1 = i2;
    if (t()) {
      i1 = (i2 * 37 + 7) * 53 + u().hashCode();
    }
    i2 = i1;
    if (v()) {
      i2 = (i1 * 37 + 8) * 53 + qr.a(w());
    }
    i1 = i2;
    if (x()) {
      i1 = (i2 * 37 + 12) * 53 + qr.a(y());
    }
    i2 = i1;
    if (A() > 0) {
      i2 = (i1 * 37 + 11) * 53 + z().hashCode();
    }
    i1 = i2;
    if (C() > 0) {
      i1 = (i2 * 37 + 10) * 53 + qr.a(B());
    }
    i2 = i1;
    if (D()) {
      i2 = (i1 * 37 + 9) * 53 + qr.a(E());
    }
    i1 = i2 * 29 + d.hashCode();
    b = i1;
    return i1;
  }
  
  public int i()
  {
    return h.size();
  }
  
  public final boolean j()
  {
    boolean bool = true;
    int i1 = r;
    if (i1 != -1)
    {
      if (i1 == 1) {}
      for (;;)
      {
        return bool;
        bool = false;
      }
    }
    if (!d())
    {
      r = 0;
      return false;
    }
    i1 = 0;
    while (i1 < i())
    {
      if (!a(i1).j())
      {
        r = 0;
        return false;
      }
      i1 += 1;
    }
    i1 = 0;
    while (i1 < l())
    {
      if (!b(i1).j())
      {
        r = 0;
        return false;
      }
      i1 += 1;
    }
    i1 = 0;
    while (i1 < q())
    {
      if (!c(i1).j())
      {
        r = 0;
        return false;
      }
      i1 += 1;
    }
    i1 = 0;
    while (i1 < A())
    {
      if (!d(i1).j())
      {
        r = 0;
        return false;
      }
      i1 += 1;
    }
    if (!I())
    {
      r = 0;
      return false;
    }
    r = 1;
    return true;
  }
  
  public List<er> k()
  {
    return i;
  }
  
  public int l()
  {
    return i.size();
  }
  
  public List<er> m()
  {
    return j;
  }
  
  public int q()
  {
    return j.size();
  }
  
  public boolean r()
  {
    return (e & 0x4) == 4;
  }
  
  public String s()
  {
    Object localObject = k;
    if ((localObject instanceof String)) {
      return (String)localObject;
    }
    localObject = (pW)localObject;
    String str = ((pW)localObject).f();
    if (((pW)localObject).g()) {
      k = str;
    }
    return str;
  }
  
  public boolean t()
  {
    return (e & 0x8) == 8;
  }
  
  public String u()
  {
    Object localObject = l;
    if ((localObject instanceof String)) {
      return (String)localObject;
    }
    localObject = (pW)localObject;
    String str = ((pW)localObject).f();
    if (((pW)localObject).g()) {
      l = str;
    }
    return str;
  }
  
  public boolean v()
  {
    return (e & 0x10) == 16;
  }
  
  public long w()
  {
    return m;
  }
  
  public boolean x()
  {
    return (e & 0x20) == 32;
  }
  
  public boolean y()
  {
    return n;
  }
  
  public List<er> z()
  {
    return o;
  }
}

/* Location:
 * Qualified Name:     er
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */