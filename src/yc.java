import java.io.PrintStream;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.URI;
import java.net.URL;
import java.util.List;
import javax.net.ssl.SSLSocket;

public class yc
{
  private static final yc a = ;
  
  public static yc a()
  {
    return a;
  }
  
  static byte[] a(List<xC> paramList)
  {
    Kx localKx = new Kx();
    int j = paramList.size();
    int i = 0;
    if (i < j)
    {
      xC localxC = (xC)paramList.get(i);
      if (localxC == xC.a) {}
      for (;;)
      {
        i += 1;
        break;
        localKx.a(localxC.toString().length());
        localKx.a(localxC.toString());
      }
    }
    return localKx.r();
  }
  
  /* Error */
  private static yc c()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: ldc 64
    //   4: invokestatic 70	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   7: pop
    //   8: ldc 72
    //   10: invokestatic 70	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   13: astore_2
    //   14: aload_2
    //   15: ldc 74
    //   17: iconst_1
    //   18: anewarray 66	java/lang/Class
    //   21: dup
    //   22: iconst_0
    //   23: ldc 76
    //   25: aastore
    //   26: invokevirtual 80	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   29: astore_0
    //   30: aload_2
    //   31: ldc 82
    //   33: iconst_1
    //   34: anewarray 66	java/lang/Class
    //   37: dup
    //   38: iconst_0
    //   39: ldc 76
    //   41: aastore
    //   42: invokevirtual 80	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   45: astore_2
    //   46: aload_2
    //   47: astore_1
    //   48: new 84	ye
    //   51: dup
    //   52: aload_0
    //   53: aload_1
    //   54: aconst_null
    //   55: invokespecial 87	ye:<init>	(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lyd;)V
    //   58: areturn
    //   59: astore_0
    //   60: ldc 89
    //   62: invokestatic 70	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   65: pop
    //   66: goto -58 -> 8
    //   69: astore_0
    //   70: ldc 91
    //   72: invokestatic 70	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   75: astore_0
    //   76: new 93	java/lang/StringBuilder
    //   79: dup
    //   80: invokespecial 94	java/lang/StringBuilder:<init>	()V
    //   83: ldc 91
    //   85: invokevirtual 98	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   88: ldc 100
    //   90: invokevirtual 98	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   93: invokevirtual 101	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   96: invokestatic 70	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   99: astore_1
    //   100: new 93	java/lang/StringBuilder
    //   103: dup
    //   104: invokespecial 94	java/lang/StringBuilder:<init>	()V
    //   107: ldc 91
    //   109: invokevirtual 98	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   112: ldc 103
    //   114: invokevirtual 98	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   117: invokevirtual 101	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   120: invokestatic 70	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   123: astore_2
    //   124: new 93	java/lang/StringBuilder
    //   127: dup
    //   128: invokespecial 94	java/lang/StringBuilder:<init>	()V
    //   131: ldc 91
    //   133: invokevirtual 98	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   136: ldc 105
    //   138: invokevirtual 98	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   141: invokevirtual 101	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   144: invokestatic 70	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   147: astore_3
    //   148: new 107	yf
    //   151: dup
    //   152: aload_0
    //   153: ldc 109
    //   155: iconst_2
    //   156: anewarray 66	java/lang/Class
    //   159: dup
    //   160: iconst_0
    //   161: ldc 111
    //   163: aastore
    //   164: dup
    //   165: iconst_1
    //   166: aload_1
    //   167: aastore
    //   168: invokevirtual 80	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   171: aload_0
    //   172: ldc 112
    //   174: iconst_1
    //   175: anewarray 66	java/lang/Class
    //   178: dup
    //   179: iconst_0
    //   180: ldc 111
    //   182: aastore
    //   183: invokevirtual 80	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   186: aload_0
    //   187: ldc 114
    //   189: iconst_1
    //   190: anewarray 66	java/lang/Class
    //   193: dup
    //   194: iconst_0
    //   195: ldc 111
    //   197: aastore
    //   198: invokevirtual 80	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   201: aload_2
    //   202: aload_3
    //   203: invokespecial 117	yf:<init>	(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;)V
    //   206: astore_0
    //   207: aload_0
    //   208: areturn
    //   209: astore_0
    //   210: new 2	yc
    //   213: dup
    //   214: invokespecial 118	yc:<init>	()V
    //   217: areturn
    //   218: astore_0
    //   219: aconst_null
    //   220: astore_0
    //   221: goto -173 -> 48
    //   224: astore_0
    //   225: aconst_null
    //   226: astore_0
    //   227: goto -179 -> 48
    //   230: astore_0
    //   231: goto -21 -> 210
    //   234: astore_2
    //   235: goto -8 -> 227
    //   238: astore_2
    //   239: goto -18 -> 221
    // Local variable table:
    //   start	length	slot	name	signature
    //   29	24	0	localMethod	java.lang.reflect.Method
    //   59	1	0	localClassNotFoundException1	ClassNotFoundException
    //   69	1	0	localClassNotFoundException2	ClassNotFoundException
    //   75	133	0	localObject1	Object
    //   209	1	0	localClassNotFoundException3	ClassNotFoundException
    //   218	1	0	localClassNotFoundException4	ClassNotFoundException
    //   220	1	0	localObject2	Object
    //   224	1	0	localNoSuchMethodException1	NoSuchMethodException
    //   226	1	0	localObject3	Object
    //   230	1	0	localNoSuchMethodException2	NoSuchMethodException
    //   1	166	1	localObject4	Object
    //   13	189	2	localObject5	Object
    //   234	1	2	localNoSuchMethodException3	NoSuchMethodException
    //   238	1	2	localClassNotFoundException5	ClassNotFoundException
    //   147	56	3	localClass	Class
    // Exception table:
    //   from	to	target	type
    //   2	8	59	java/lang/ClassNotFoundException
    //   48	59	69	java/lang/ClassNotFoundException
    //   60	66	69	java/lang/ClassNotFoundException
    //   70	207	209	java/lang/ClassNotFoundException
    //   8	30	218	java/lang/ClassNotFoundException
    //   8	30	224	java/lang/NoSuchMethodException
    //   70	207	230	java/lang/NoSuchMethodException
    //   30	46	234	java/lang/NoSuchMethodException
    //   30	46	238	java/lang/ClassNotFoundException
  }
  
  public URI a(URL paramURL)
  {
    return paramURL.toURI();
  }
  
  public void a(String paramString)
  {
    System.out.println(paramString);
  }
  
  public void a(Socket paramSocket) {}
  
  public void a(Socket paramSocket, InetSocketAddress paramInetSocketAddress, int paramInt)
  {
    paramSocket.connect(paramInetSocketAddress, paramInt);
  }
  
  public void a(SSLSocket paramSSLSocket) {}
  
  public void a(SSLSocket paramSSLSocket, String paramString, List<xC> paramList) {}
  
  public String b()
  {
    return "OkHttp";
  }
  
  public String b(SSLSocket paramSSLSocket)
  {
    return null;
  }
  
  public void b(Socket paramSocket) {}
}

/* Location:
 * Qualified Name:     yc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */