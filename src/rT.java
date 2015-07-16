import android.annotation.SuppressLint;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Socket;
import java.net.URI;
import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.CountDownLatch;

@SuppressLint({"Assert"})
public abstract class rt
  extends rq
  implements Runnable, rn
{
  protected URI a = null;
  private rr c = null;
  private Socket d = null;
  private InputStream e;
  private OutputStream f;
  private Proxy g = Proxy.NO_PROXY;
  private Thread h;
  private rw i;
  private Map<String, String> j;
  private CountDownLatch k = new CountDownLatch(1);
  private CountDownLatch l = new CountDownLatch(1);
  private int m = 0;
  
  static
  {
    if (!rt.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      b = bool;
      return;
    }
  }
  
  public rt(URI paramURI, rw paramrw, Map<String, String> paramMap, int paramInt)
  {
    if (paramURI == null) {
      throw new IllegalArgumentException();
    }
    if (paramrw == null) {
      throw new IllegalArgumentException("null as draft is permitted for `WebSocketServer` only!");
    }
    a = paramURI;
    i = paramrw;
    j = paramMap;
    m = paramInt;
    c = new rr(this, paramrw);
  }
  
  private int g()
  {
    int i1 = a.getPort();
    int n = i1;
    String str;
    if (i1 == -1)
    {
      str = a.getScheme();
      if (str.equals("wss")) {
        n = 443;
      }
    }
    else
    {
      return n;
    }
    if (str.equals("ws")) {
      return 80;
    }
    throw new RuntimeException("unkonow scheme" + str);
  }
  
  private void h()
  {
    Object localObject2 = a.getPath();
    Object localObject3 = a.getQuery();
    if (localObject2 != null)
    {
      localObject1 = localObject2;
      if (((String)localObject2).length() != 0) {}
    }
    else
    {
      localObject1 = "/";
    }
    localObject2 = localObject1;
    if (localObject3 != null) {
      localObject2 = (String)localObject1 + "?" + (String)localObject3;
    }
    int n = g();
    localObject3 = new StringBuilder().append(a.getHost());
    if (n != 80) {}
    for (Object localObject1 = ":" + n;; localObject1 = "")
    {
      localObject3 = (String)localObject1;
      localObject1 = new rU();
      ((rU)localObject1).a((String)localObject2);
      ((rU)localObject1).a("Host", (String)localObject3);
      if (j == null) {
        break;
      }
      localObject2 = j.entrySet().iterator();
      while (((Iterator)localObject2).hasNext())
      {
        localObject3 = (Map.Entry)((Iterator)localObject2).next();
        ((rU)localObject1).a((String)((Map.Entry)localObject3).getKey(), (String)((Map.Entry)localObject3).getValue());
      }
    }
    c.a((rS)localObject1);
  }
  
  public InetSocketAddress a()
  {
    return c.a();
  }
  
  public abstract void a(int paramInt, String paramString, boolean paramBoolean);
  
  public abstract void a(Exception paramException);
  
  public abstract void a(String paramString);
  
  public void a(Socket paramSocket)
  {
    if (d != null) {
      throw new IllegalStateException("socket has already been set");
    }
    d = paramSocket;
  }
  
  public void a(rO paramrO)
  {
    c.a(paramrO);
  }
  
  public void a(rP paramrP, ByteBuffer paramByteBuffer, boolean paramBoolean)
  {
    c.a(paramrP, paramByteBuffer, paramBoolean);
  }
  
  public abstract void a(rY paramrY);
  
  public final void a(rn paramrn, int paramInt, String paramString, boolean paramBoolean)
  {
    k.countDown();
    l.countDown();
    if (h != null) {
      h.interrupt();
    }
    try
    {
      if (d != null) {
        d.close();
      }
      a(paramInt, paramString, paramBoolean);
      return;
    }
    catch (IOException paramrn)
    {
      for (;;)
      {
        a(this, paramrn);
      }
    }
  }
  
  public final void a(rn paramrn, Exception paramException)
  {
    a(paramException);
  }
  
  public final void a(rn paramrn, String paramString)
  {
    a(paramString);
  }
  
  public final void a(rn paramrn, rW paramrW)
  {
    k.countDown();
    a((rY)paramrW);
  }
  
  public InetSocketAddress b(rn paramrn)
  {
    if (d != null) {
      return (InetSocketAddress)d.getLocalSocketAddress();
    }
    return null;
  }
  
  public void b()
  {
    if (h != null) {
      throw new IllegalStateException("WebSocketClient objects are not reuseable");
    }
    h = new Thread(this);
    h.start();
  }
  
  public boolean c()
  {
    b();
    k.await();
    return c.c();
  }
  
  public boolean d()
  {
    return c.e();
  }
  
  public boolean e()
  {
    return c.f();
  }
  
  public boolean f()
  {
    return c.d();
  }
  
  /* Error */
  public void run()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 58	rt:d	Ljava/net/Socket;
    //   4: ifnonnull +185 -> 189
    //   7: aload_0
    //   8: new 234	java/net/Socket
    //   11: dup
    //   12: aload_0
    //   13: getfield 65	rt:g	Ljava/net/Proxy;
    //   16: invokespecial 285	java/net/Socket:<init>	(Ljava/net/Proxy;)V
    //   19: putfield 58	rt:d	Ljava/net/Socket;
    //   22: aload_0
    //   23: getfield 58	rt:d	Ljava/net/Socket;
    //   26: invokevirtual 288	java/net/Socket:isBound	()Z
    //   29: ifne +32 -> 61
    //   32: aload_0
    //   33: getfield 58	rt:d	Ljava/net/Socket;
    //   36: new 258	java/net/InetSocketAddress
    //   39: dup
    //   40: aload_0
    //   41: getfield 54	rt:a	Ljava/net/URI;
    //   44: invokevirtual 152	java/net/URI:getHost	()Ljava/lang/String;
    //   47: aload_0
    //   48: invokespecial 149	rt:g	()I
    //   51: invokespecial 291	java/net/InetSocketAddress:<init>	(Ljava/lang/String;I)V
    //   54: aload_0
    //   55: getfield 76	rt:m	I
    //   58: invokevirtual 295	java/net/Socket:connect	(Ljava/net/SocketAddress;I)V
    //   61: aload_0
    //   62: aload_0
    //   63: getfield 58	rt:d	Ljava/net/Socket;
    //   66: invokevirtual 299	java/net/Socket:getInputStream	()Ljava/io/InputStream;
    //   69: putfield 301	rt:e	Ljava/io/InputStream;
    //   72: aload_0
    //   73: aload_0
    //   74: getfield 58	rt:d	Ljava/net/Socket;
    //   77: invokevirtual 305	java/net/Socket:getOutputStream	()Ljava/io/OutputStream;
    //   80: putfield 99	rt:f	Ljava/io/OutputStream;
    //   83: aload_0
    //   84: invokespecial 307	rt:h	()V
    //   87: aload_0
    //   88: new 229	java/lang/Thread
    //   91: dup
    //   92: new 309	rv
    //   95: dup
    //   96: aload_0
    //   97: aconst_null
    //   98: invokespecial 312	rv:<init>	(Lrt;Lru;)V
    //   101: invokespecial 263	java/lang/Thread:<init>	(Ljava/lang/Runnable;)V
    //   104: putfield 227	rt:h	Ljava/lang/Thread;
    //   107: aload_0
    //   108: getfield 227	rt:h	Ljava/lang/Thread;
    //   111: invokevirtual 266	java/lang/Thread:start	()V
    //   114: getstatic 314	rr:a	I
    //   117: newarray <illegal type>
    //   119: astore_2
    //   120: aload_0
    //   121: invokevirtual 315	rt:e	()Z
    //   124: ifne +106 -> 230
    //   127: aload_0
    //   128: getfield 301	rt:e	Ljava/io/InputStream;
    //   131: aload_2
    //   132: invokevirtual 321	java/io/InputStream:read	([B)I
    //   135: istore_1
    //   136: iload_1
    //   137: iconst_m1
    //   138: if_icmpeq +92 -> 230
    //   141: aload_0
    //   142: getfield 56	rt:c	Lrr;
    //   145: aload_2
    //   146: iconst_0
    //   147: iload_1
    //   148: invokestatic 327	java/nio/ByteBuffer:wrap	([BII)Ljava/nio/ByteBuffer;
    //   151: invokevirtual 330	rr:a	(Ljava/nio/ByteBuffer;)V
    //   154: goto -34 -> 120
    //   157: astore_2
    //   158: aload_0
    //   159: getfield 56	rt:c	Lrr;
    //   162: invokevirtual 331	rr:b	()V
    //   165: getstatic 47	rt:b	Z
    //   168: ifne +61 -> 229
    //   171: aload_0
    //   172: getfield 58	rt:d	Ljava/net/Socket;
    //   175: invokevirtual 334	java/net/Socket:isClosed	()Z
    //   178: ifne +51 -> 229
    //   181: new 336	java/lang/AssertionError
    //   184: dup
    //   185: invokespecial 337	java/lang/AssertionError:<init>	()V
    //   188: athrow
    //   189: aload_0
    //   190: getfield 58	rt:d	Ljava/net/Socket;
    //   193: invokevirtual 334	java/net/Socket:isClosed	()Z
    //   196: ifeq -174 -> 22
    //   199: new 222	java/io/IOException
    //   202: dup
    //   203: invokespecial 338	java/io/IOException:<init>	()V
    //   206: athrow
    //   207: astore_2
    //   208: aload_0
    //   209: aload_0
    //   210: getfield 56	rt:c	Lrr;
    //   213: aload_2
    //   214: invokevirtual 242	rt:a	(Lrn;Ljava/lang/Exception;)V
    //   217: aload_0
    //   218: getfield 56	rt:c	Lrr;
    //   221: iconst_m1
    //   222: aload_2
    //   223: invokevirtual 341	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   226: invokevirtual 344	rr:b	(ILjava/lang/String;)V
    //   229: return
    //   230: aload_0
    //   231: getfield 56	rt:c	Lrr;
    //   234: invokevirtual 331	rr:b	()V
    //   237: goto -72 -> 165
    //   240: astore_2
    //   241: aload_0
    //   242: aload_2
    //   243: invokevirtual 244	rt:a	(Ljava/lang/Exception;)V
    //   246: aload_0
    //   247: getfield 56	rt:c	Lrr;
    //   250: sipush 1006
    //   253: aload_2
    //   254: invokevirtual 345	java/lang/RuntimeException:getMessage	()Ljava/lang/String;
    //   257: invokevirtual 344	rr:b	(ILjava/lang/String;)V
    //   260: goto -95 -> 165
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	263	0	this	rt
    //   135	13	1	n	int
    //   119	27	2	arrayOfByte	byte[]
    //   157	1	2	localIOException	IOException
    //   207	16	2	localException	Exception
    //   240	14	2	localRuntimeException	RuntimeException
    // Exception table:
    //   from	to	target	type
    //   120	136	157	java/io/IOException
    //   141	154	157	java/io/IOException
    //   230	237	157	java/io/IOException
    //   0	22	207	java/lang/Exception
    //   22	61	207	java/lang/Exception
    //   61	87	207	java/lang/Exception
    //   189	207	207	java/lang/Exception
    //   120	136	240	java/lang/RuntimeException
    //   141	154	240	java/lang/RuntimeException
    //   230	237	240	java/lang/RuntimeException
  }
}

/* Location:
 * Qualified Name:     rt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */