import java.nio.ByteBuffer;
import java.util.LinkedList;
import java.util.List;
import java.util.Random;

public class ry
  extends rs
{
  protected boolean f = false;
  protected List<rK> g = new LinkedList();
  protected ByteBuffer h;
  private final Random i = new Random();
  
  public ByteBuffer a(rK paramrK)
  {
    if (paramrK.f() != rL.b) {
      throw new RuntimeException("only text frames supported");
    }
    paramrK = paramrK.c();
    ByteBuffer localByteBuffer = ByteBuffer.allocate(paramrK.remaining() + 2);
    localByteBuffer.put((byte)0);
    paramrK.mark();
    localByteBuffer.put(paramrK);
    paramrK.reset();
    localByteBuffer.put((byte)-1);
    localByteBuffer.flip();
    return localByteBuffer;
  }
  
  public rO a(rO paramrO)
  {
    paramrO.a("Upgrade", "WebSocket");
    paramrO.a("Connection", "Upgrade");
    if (!paramrO.c("Origin")) {
      paramrO.a("Origin", "random" + i.nextInt());
    }
    return paramrO;
  }
  
  public rP a(rN paramrN, rV paramrV)
  {
    paramrV.a("Web Socket Protocol Handshake");
    paramrV.a("Upgrade", "WebSocket");
    paramrV.a("Connection", paramrN.b("Connection"));
    paramrV.a("WebSocket-Origin", paramrN.b("Origin"));
    paramrV.a("WebSocket-Location", "ws://" + paramrN.b("Host") + paramrN.a());
    return paramrV;
  }
  
  public ru a(rN paramrN)
  {
    if ((paramrN.c("Origin")) && (a(paramrN))) {
      return ru.a;
    }
    return ru.b;
  }
  
  public ru a(rN paramrN, rU paramrU)
  {
    if ((paramrN.b("WebSocket-Origin").equals(paramrU.b("Origin"))) && (a(paramrU))) {
      return ru.a;
    }
    return ru.b;
  }
  
  public void a()
  {
    f = false;
    h = null;
  }
  
  public rt b()
  {
    return rt.a;
  }
  
  public List<rK> c(ByteBuffer paramByteBuffer)
  {
    paramByteBuffer = e(paramByteBuffer);
    if (paramByteBuffer == null) {
      throw new rB(1002);
    }
    return paramByteBuffer;
  }
  
  public rs c()
  {
    return new ry();
  }
  
  public ByteBuffer d()
  {
    return ByteBuffer.allocate(b);
  }
  
  protected List<rK> e(ByteBuffer paramByteBuffer)
  {
    Object localObject2 = null;
    while (paramByteBuffer.hasRemaining())
    {
      byte b = paramByteBuffer.get();
      if (b == 0)
      {
        if (f) {
          throw new rC("unexpected START_OF_FRAME");
        }
        f = true;
      }
      else if (b == -1)
      {
        if (!f) {
          throw new rC("unexpected END_OF_FRAME");
        }
        if (h != null)
        {
          h.flip();
          localObject1 = new rM();
          ((rM)localObject1).a(h);
          ((rM)localObject1).a(true);
          ((rM)localObject1).a(rL.b);
          g.add(localObject1);
          h = null;
          paramByteBuffer.mark();
        }
        f = false;
      }
      else
      {
        localObject1 = localObject2;
        if (!f) {
          return localObject1;
        }
        if (h == null) {
          h = d();
        }
        for (;;)
        {
          h.put(b);
          break;
          if (!h.hasRemaining()) {
            h = f(h);
          }
        }
      }
    }
    Object localObject1 = g;
    g = new LinkedList();
    return (List<rK>)localObject1;
  }
  
  public ByteBuffer f(ByteBuffer paramByteBuffer)
  {
    paramByteBuffer.flip();
    ByteBuffer localByteBuffer = ByteBuffer.allocate(a(paramByteBuffer.capacity() * 2));
    localByteBuffer.put(paramByteBuffer);
    return localByteBuffer;
  }
}

/* Location:
 * Qualified Name:     ry
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */