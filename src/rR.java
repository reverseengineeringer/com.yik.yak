import android.annotation.SuppressLint;
import java.io.PrintStream;
import java.net.InetSocketAddress;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.channels.SelectionKey;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

@SuppressLint({"Assert"})
public class rr
  implements rn
{
  public static int a;
  public static boolean b;
  public static final List<rw> c;
  public SelectionKey d;
  public ByteChannel e;
  public final BlockingQueue<ByteBuffer> f;
  public final BlockingQueue<ByteBuffer> g;
  private volatile boolean i = false;
  private ro j = ro.a;
  private final rs k;
  private List<rw> l;
  private rw m = null;
  private rp n;
  private rP o = null;
  private ByteBuffer p = ByteBuffer.allocate(0);
  private rR q = null;
  private String r = null;
  private Integer s = null;
  private Boolean t = null;
  private String u = null;
  
  static
  {
    if (!rr.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      h = bool;
      a = 16384;
      b = false;
      c = new ArrayList(4);
      c.add(new rB());
      c.add(new rz());
      c.add(new rD());
      c.add(new rC());
      return;
    }
  }
  
  public rr(rs paramrs, rw paramrw)
  {
    if ((paramrs == null) || ((paramrw == null) && (n == rp.b))) {
      throw new IllegalArgumentException("parameters must not be null");
    }
    f = new LinkedBlockingQueue();
    g = new LinkedBlockingQueue();
    k = paramrs;
    n = rp.a;
    if (paramrw != null) {
      m = paramrw.c();
    }
  }
  
  private void a(Collection<rO> paramCollection)
  {
    if (!c()) {
      throw new rK();
    }
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext()) {
      a((rO)paramCollection.next());
    }
  }
  
  private void a(List<ByteBuffer> paramList)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      e((ByteBuffer)paramList.next());
    }
  }
  
  private void a(rW paramrW)
  {
    if (b) {
      System.out.println("open using draft: " + m.getClass().getSimpleName());
    }
    j = ro.c;
    try
    {
      k.a(this, paramrW);
      return;
    }
    catch (RuntimeException paramrW)
    {
      k.a(this, paramrW);
    }
  }
  
  private boolean b(ByteBuffer paramByteBuffer)
  {
    ByteBuffer localByteBuffer;
    if (p.capacity() == 0) {
      localByteBuffer = paramByteBuffer;
    }
    for (;;)
    {
      localByteBuffer.mark();
      try
      {
        Object localObject2;
        if (m == null)
        {
          ry localry = d(localByteBuffer);
          localObject2 = ry.a;
          if (localry == localObject2) {
            try
            {
              e(ByteBuffer.wrap(sc.a(k.a(this))));
              a(-3, "");
              return false;
              if (p.remaining() < paramByteBuffer.remaining())
              {
                localByteBuffer = ByteBuffer.allocate(p.capacity() + paramByteBuffer.remaining());
                p.flip();
                localByteBuffer.put(p);
                p = localByteBuffer;
              }
              p.put(paramByteBuffer);
              p.flip();
              localByteBuffer = p;
            }
            catch (rF localrF1)
            {
              for (;;)
              {
                c(1006, "remote peer closed connection before flashpolicy could be transmitted", true);
              }
            }
          }
        }
        int i2;
        int i1;
        label228:
        Object localObject1;
        Object localObject3;
        rZ localrZ;
        return false;
      }
      catch (rE localrE)
      {
        if (p.capacity() == 0)
        {
          localByteBuffer.reset();
          i2 = localrE.a();
          if (i2 == 0)
          {
            i1 = localByteBuffer.capacity() + 16;
            p = ByteBuffer.allocate(i1);
            p.put(paramByteBuffer);
            return false;
          }
        }
        for (;;)
        {
          try
          {
            if (n == rp.b) {
              if (m == null)
              {
                localObject1 = l.iterator();
                if (((Iterator)localObject1).hasNext()) {
                  localObject2 = ((rw)((Iterator)localObject1).next()).c();
                }
              }
            }
          }
          catch (rH localrH1)
          {
            a(localrH1);
          }
          try
          {
            ((rw)localObject2).a(n);
            localByteBuffer.reset();
            localObject3 = ((rw)localObject2).d(localByteBuffer);
            if (!(localObject3 instanceof rR))
            {
              b(1002, "wrong http function", false);
              return false;
            }
            localObject3 = (rR)localObject3;
            if (((rw)localObject2).a((rR)localObject3) != ry.a) {
              continue;
            }
            u = ((rR)localObject3).a();
            try
            {
              localrZ = k.a(this, (rw)localObject2, (rR)localObject3);
              a(((rw)localObject2).a(((rw)localObject2).a((rR)localObject3, localrZ), n));
              m = ((rw)localObject2);
              a((rW)localObject3);
              return true;
            }
            catch (rF localrF2)
            {
              b(localrF2.a(), localrF2.getMessage(), false);
              return false;
            }
            catch (RuntimeException localRuntimeException)
            {
              k.a(this, localRuntimeException);
              b(-1, localRuntimeException.getMessage(), false);
              return false;
            }
            if (m != null) {
              break label757;
            }
            a(1002, "no draft matches");
          }
          catch (rH localrH2) {}
          localObject1 = m.d(localByteBuffer);
          if (!(localObject1 instanceof rR))
          {
            b(1002, "wrong http function", false);
            return false;
          }
          localObject1 = (rR)localObject1;
          if (m.a((rR)localObject1) == ry.a)
          {
            a((rW)localObject1);
            return true;
          }
          a(1002, "the handshake did finaly not match");
          return false;
          if (n != rp.a) {
            break label228;
          }
          m.a(n);
          localObject1 = m.d(localByteBuffer);
          if (!(localObject1 instanceof rY))
          {
            b(1002, "wrong http function", false);
            return false;
          }
          localObject1 = (rY)localObject1;
          if (m.a(q, (rY)localObject1) == ry.a)
          {
            a((rW)localObject1);
            return true;
          }
          a(1002, "draft " + m + " refuses handshake");
          break label228;
          break label228;
          i1 = i2;
          if (h) {
            break;
          }
          i1 = i2;
          if (localrH1.a() >= localByteBuffer.remaining()) {
            break;
          }
          throw new AssertionError();
          p.position(p.limit());
          p.limit(p.capacity());
          break label228;
        }
      }
    }
  }
  
  private void c(int paramInt, String paramString, boolean paramBoolean)
  {
    if ((j != ro.d) && (j != ro.e))
    {
      if (j != ro.c) {
        break label158;
      }
      if (paramInt == 1006)
      {
        if ((!h) && (paramBoolean)) {
          throw new AssertionError();
        }
        j = ro.d;
        b(paramInt, paramString, false);
      }
    }
    else
    {
      return;
    }
    if (m.b() != rx.a) {}
    for (;;)
    {
      try
      {
        a(new rM(paramInt, paramString));
        b(paramInt, paramString, paramBoolean);
        if (paramInt == 1002) {
          b(paramInt, paramString, paramBoolean);
        }
        j = ro.d;
        p = null;
        return;
      }
      catch (rF localrF)
      {
        k.a(this, localrF);
        b(1006, "generated frame is invalid", false);
        continue;
      }
      label158:
      if (paramInt == -3)
      {
        if ((!h) && (!paramBoolean)) {
          throw new AssertionError();
        }
        b(-3, paramString, true);
      }
      else
      {
        b(-1, paramString, false);
      }
    }
  }
  
  private void c(ByteBuffer paramByteBuffer)
  {
    for (;;)
    {
      rP localrP1;
      boolean bool;
      int i1;
      try
      {
        Iterator localIterator = m.c(paramByteBuffer).iterator();
        if (localIterator.hasNext())
        {
          paramByteBuffer = (rO)localIterator.next();
          if (b) {
            System.out.println("matched frame: " + paramByteBuffer);
          }
          localrP1 = paramByteBuffer.f();
          bool = paramByteBuffer.d();
          if (localrP1 != rP.f) {
            break label188;
          }
          if (!(paramByteBuffer instanceof rL)) {
            break label414;
          }
          paramByteBuffer = (rL)paramByteBuffer;
          i1 = paramByteBuffer.a();
          paramByteBuffer = paramByteBuffer.b();
          if (j == ro.d) {
            a(i1, paramByteBuffer, true);
          }
        }
        else
        {
          return;
        }
      }
      catch (rF paramByteBuffer)
      {
        k.a(this, paramByteBuffer);
        a(paramByteBuffer);
      }
      if (m.b() == rx.c)
      {
        c(i1, paramByteBuffer, true);
      }
      else
      {
        b(i1, paramByteBuffer, false);
        continue;
        label188:
        if (localrP1 == rP.d) {
          k.a(this, paramByteBuffer);
        } else if (localrP1 != rP.e) {
          if ((!bool) || (localrP1 == rP.a))
          {
            if (localrP1 != rP.a)
            {
              if (o != null) {
                throw new rF(1002, "Previous continuous frame sequence not completed.");
              }
              o = localrP1;
            }
            else if (bool)
            {
              if (o == null) {
                throw new rF(1002, "Continuous frame sequence was not started.");
              }
              o = null;
            }
            else if (o == null)
            {
              throw new rF(1002, "Continuous frame sequence was not started.");
            }
          }
          else
          {
            if (o != null) {
              throw new rF(1002, "Continuous frame sequence not completed.");
            }
            rP localrP2 = rP.b;
            if (localrP1 == localrP2)
            {
              try
              {
                k.a(this, sc.a(paramByteBuffer.c()));
              }
              catch (RuntimeException paramByteBuffer)
              {
                k.a(this, paramByteBuffer);
              }
            }
            else if (localrP1 != rP.c)
            {
              throw new rF(1002, "non control or continious frame expected");
              label414:
              paramByteBuffer = "";
              i1 = 1005;
            }
          }
        }
      }
    }
  }
  
  private ry d(ByteBuffer paramByteBuffer)
  {
    paramByteBuffer.mark();
    if (paramByteBuffer.limit() > rw.c.length) {
      return ry.b;
    }
    if (paramByteBuffer.limit() < rw.c.length) {
      throw new rE(rw.c.length);
    }
    int i1 = 0;
    while (paramByteBuffer.hasRemaining())
    {
      if (rw.c[i1] != paramByteBuffer.get())
      {
        paramByteBuffer.reset();
        return ry.b;
      }
      i1 += 1;
    }
    return ry.a;
  }
  
  private void e(ByteBuffer paramByteBuffer)
  {
    PrintStream localPrintStream;
    StringBuilder localStringBuilder;
    if (b)
    {
      localPrintStream = System.out;
      localStringBuilder = new StringBuilder().append("write(").append(paramByteBuffer.remaining()).append("): {");
      if (paramByteBuffer.remaining() <= 1000) {
        break label83;
      }
    }
    label83:
    for (String str = "too big to display";; str = new String(paramByteBuffer.array()))
    {
      localPrintStream.println(str + "}");
      f.add(paramByteBuffer);
      return;
    }
  }
  
  public InetSocketAddress a()
  {
    return k.b(this);
  }
  
  public void a(int paramInt, String paramString)
  {
    c(paramInt, paramString, false);
  }
  
  /* Error */
  protected void a(int paramInt, String paramString, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 100	rr:j	Lro;
    //   6: astore 4
    //   8: getstatic 361	ro:e	Lro;
    //   11: astore 5
    //   13: aload 4
    //   15: aload 5
    //   17: if_acmpne +6 -> 23
    //   20: aload_0
    //   21: monitorexit
    //   22: return
    //   23: aload_0
    //   24: getfield 473	rr:d	Ljava/nio/channels/SelectionKey;
    //   27: ifnull +10 -> 37
    //   30: aload_0
    //   31: getfield 473	rr:d	Ljava/nio/channels/SelectionKey;
    //   34: invokevirtual 478	java/nio/channels/SelectionKey:cancel	()V
    //   37: aload_0
    //   38: getfield 480	rr:e	Ljava/nio/channels/ByteChannel;
    //   41: astore 4
    //   43: aload 4
    //   45: ifnull +12 -> 57
    //   48: aload_0
    //   49: getfield 480	rr:e	Ljava/nio/channels/ByteChannel;
    //   52: invokeinterface 485 1 0
    //   57: aload_0
    //   58: getfield 144	rr:k	Lrs;
    //   61: aload_0
    //   62: iload_1
    //   63: aload_2
    //   64: iload_3
    //   65: invokeinterface 488 5 0
    //   70: aload_0
    //   71: getfield 102	rr:m	Lrw;
    //   74: ifnull +10 -> 84
    //   77: aload_0
    //   78: getfield 102	rr:m	Lrw;
    //   81: invokevirtual 490	rw:a	()V
    //   84: aload_0
    //   85: aconst_null
    //   86: putfield 114	rr:q	LrR;
    //   89: aload_0
    //   90: getstatic 361	ro:e	Lro;
    //   93: putfield 100	rr:j	Lro;
    //   96: aload_0
    //   97: getfield 140	rr:f	Ljava/util/concurrent/BlockingQueue;
    //   100: invokeinterface 493 1 0
    //   105: goto -85 -> 20
    //   108: astore_2
    //   109: aload_0
    //   110: monitorexit
    //   111: aload_2
    //   112: athrow
    //   113: astore 4
    //   115: aload_0
    //   116: getfield 144	rr:k	Lrs;
    //   119: aload_0
    //   120: aload 4
    //   122: invokeinterface 229 3 0
    //   127: goto -70 -> 57
    //   130: astore_2
    //   131: aload_0
    //   132: getfield 144	rr:k	Lrs;
    //   135: aload_0
    //   136: aload_2
    //   137: invokeinterface 229 3 0
    //   142: goto -72 -> 70
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	145	0	this	rr
    //   0	145	1	paramInt	int
    //   0	145	2	paramString	String
    //   0	145	3	paramBoolean	boolean
    //   6	38	4	localObject	Object
    //   113	8	4	localIOException	java.io.IOException
    //   11	5	5	localro	ro
    // Exception table:
    //   from	to	target	type
    //   2	13	108	finally
    //   23	37	108	finally
    //   37	43	108	finally
    //   48	57	108	finally
    //   57	70	108	finally
    //   70	84	108	finally
    //   84	105	108	finally
    //   115	127	108	finally
    //   131	142	108	finally
    //   48	57	113	java/io/IOException
    //   57	70	130	java/lang/RuntimeException
  }
  
  protected void a(int paramInt, boolean paramBoolean)
  {
    a(paramInt, "", paramBoolean);
  }
  
  public void a(ByteBuffer paramByteBuffer)
  {
    if ((!h) && (!paramByteBuffer.hasRemaining())) {
      throw new AssertionError();
    }
    String str;
    if (b)
    {
      PrintStream localPrintStream = System.out;
      StringBuilder localStringBuilder = new StringBuilder().append("process(").append(paramByteBuffer.remaining()).append("): {");
      if (paramByteBuffer.remaining() > 1000)
      {
        str = "too big to display";
        localPrintStream.println(str + "}");
      }
    }
    else
    {
      if (j == ro.a) {
        break label165;
      }
      c(paramByteBuffer);
    }
    for (;;)
    {
      if ((h) || (d()) || (e()) || (!paramByteBuffer.hasRemaining())) {
        return;
      }
      throw new AssertionError();
      str = new String(paramByteBuffer.array(), paramByteBuffer.position(), paramByteBuffer.remaining());
      break;
      label165:
      if (b(paramByteBuffer))
      {
        if ((!h) && (p.hasRemaining() == paramByteBuffer.hasRemaining()) && (paramByteBuffer.hasRemaining())) {
          throw new AssertionError();
        }
        if (paramByteBuffer.hasRemaining()) {
          c(paramByteBuffer);
        } else if (p.hasRemaining()) {
          c(p);
        }
      }
    }
  }
  
  public void a(rF paramrF)
  {
    c(paramrF.a(), paramrF.getMessage(), false);
  }
  
  public void a(rO paramrO)
  {
    if (b) {
      System.out.println("send frame: " + paramrO);
    }
    e(m.a(paramrO));
  }
  
  public void a(rP paramrP, ByteBuffer paramByteBuffer, boolean paramBoolean)
  {
    a(m.a(paramrP, paramByteBuffer, paramBoolean));
  }
  
  public void a(rS paramrS)
  {
    if ((!h) && (j == ro.b)) {
      throw new AssertionError("shall only be called once");
    }
    q = m.a(paramrS);
    u = paramrS.a();
    if ((!h) && (u == null)) {
      throw new AssertionError();
    }
    a(m.a(q, n));
  }
  
  public void b()
  {
    if (g() == ro.a)
    {
      a(-1, true);
      return;
    }
    if (i)
    {
      a(s.intValue(), r, t.booleanValue());
      return;
    }
    if (m.b() == rx.a)
    {
      a(1000, true);
      return;
    }
    if (m.b() == rx.b)
    {
      if (n == rp.b)
      {
        a(1006, true);
        return;
      }
      a(1000, true);
      return;
    }
    a(1006, true);
  }
  
  public void b(int paramInt, String paramString)
  {
    a(paramInt, paramString, false);
  }
  
  /* Error */
  protected void b(int paramInt, String paramString, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 94	rr:i	Z
    //   6: istore 4
    //   8: iload 4
    //   10: ifeq +6 -> 16
    //   13: aload_0
    //   14: monitorexit
    //   15: return
    //   16: aload_0
    //   17: iload_1
    //   18: invokestatic 554	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   21: putfield 118	rr:s	Ljava/lang/Integer;
    //   24: aload_0
    //   25: aload_2
    //   26: putfield 116	rr:r	Ljava/lang/String;
    //   29: aload_0
    //   30: iload_3
    //   31: invokestatic 557	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   34: putfield 120	rr:t	Ljava/lang/Boolean;
    //   37: aload_0
    //   38: iconst_1
    //   39: putfield 94	rr:i	Z
    //   42: aload_0
    //   43: getfield 102	rr:m	Lrw;
    //   46: ifnull +10 -> 56
    //   49: aload_0
    //   50: getfield 102	rr:m	Lrw;
    //   53: invokevirtual 490	rw:a	()V
    //   56: aload_0
    //   57: aconst_null
    //   58: putfield 114	rr:q	LrR;
    //   61: goto -48 -> 13
    //   64: astore_2
    //   65: aload_0
    //   66: monitorexit
    //   67: aload_2
    //   68: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	69	0	this	rr
    //   0	69	1	paramInt	int
    //   0	69	2	paramString	String
    //   0	69	3	paramBoolean	boolean
    //   6	3	4	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	8	64	finally
    //   16	56	64	finally
    //   56	61	64	finally
  }
  
  public boolean c()
  {
    if ((h) || (j != ro.c) || (!i))
    {
      if (j == ro.c) {
        return true;
      }
    }
    else {
      throw new AssertionError();
    }
    return false;
  }
  
  public boolean d()
  {
    return j == ro.d;
  }
  
  public boolean e()
  {
    return i;
  }
  
  public boolean f()
  {
    return j == ro.e;
  }
  
  public ro g()
  {
    return j;
  }
  
  public int hashCode()
  {
    return super.hashCode();
  }
  
  public String toString()
  {
    return super.toString();
  }
}

/* Location:
 * Qualified Name:     rr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */