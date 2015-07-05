import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

public abstract class rs
{
  public static int a = 1000;
  public static int b = 64;
  public static final byte[] c = rY.a("<policy-file-request/>\000");
  protected rl d = null;
  protected rL e = null;
  
  public static ByteBuffer a(ByteBuffer paramByteBuffer)
  {
    ByteBuffer localByteBuffer = ByteBuffer.allocate(paramByteBuffer.remaining());
    byte b1;
    for (int i = 48;; i = b1) {
      if (paramByteBuffer.hasRemaining())
      {
        b1 = paramByteBuffer.get();
        localByteBuffer.put(b1);
        if ((i == 13) && (b1 == 10))
        {
          localByteBuffer.limit(localByteBuffer.position() - 2);
          localByteBuffer.position(0);
          return localByteBuffer;
        }
      }
      else
      {
        paramByteBuffer.position(paramByteBuffer.position() - localByteBuffer.position());
        return null;
      }
    }
  }
  
  public static rP a(ByteBuffer paramByteBuffer, rl paramrl)
  {
    Object localObject = b(paramByteBuffer);
    if (localObject == null) {
      throw new rA(paramByteBuffer.capacity() + 128);
    }
    localObject = ((String)localObject).split(" ", 3);
    if (localObject.length != 3) {
      throw new rD();
    }
    if (paramrl == rl.a)
    {
      paramrl = new rR();
      rV localrV = (rV)paramrl;
      localrV.a(Short.parseShort(localObject[1]));
      localrV.a(localObject[2]);
    }
    for (localObject = b(paramByteBuffer);; localObject = b(paramByteBuffer))
    {
      if ((localObject == null) || (((String)localObject).length() <= 0)) {
        break label175;
      }
      localObject = ((String)localObject).split(":", 2);
      if (localObject.length != 2)
      {
        throw new rD("not an http header");
        paramrl = new rQ();
        paramrl.a(localObject[1]);
        break;
      }
      paramrl.a(localObject[0], localObject[1].replaceFirst("^ +", ""));
    }
    label175:
    if (localObject == null) {
      throw new rA();
    }
    return paramrl;
  }
  
  public static String b(ByteBuffer paramByteBuffer)
  {
    paramByteBuffer = a(paramByteBuffer);
    if (paramByteBuffer == null) {
      return null;
    }
    return rY.a(paramByteBuffer.array(), 0, paramByteBuffer.limit());
  }
  
  public int a(int paramInt)
  {
    if (paramInt < 0) {
      throw new rB(1002, "Negative count");
    }
    return paramInt;
  }
  
  public abstract ByteBuffer a(rK paramrK);
  
  public List<rK> a(rL paramrL, ByteBuffer paramByteBuffer, boolean paramBoolean)
  {
    if ((paramrL != rL.c) && (paramrL != rL.b) && (paramrL != rL.b)) {
      throw new IllegalArgumentException("Only Opcode.BINARY or  Opcode.TEXT are allowed");
    }
    rM localrM;
    if (e != null)
    {
      e = rL.a;
      localrM = new rM(e);
    }
    for (;;)
    {
      try
      {
        localrM.a(paramByteBuffer);
        localrM.a(paramBoolean);
        if (!paramBoolean) {
          break label107;
        }
        e = null;
        return Collections.singletonList(localrM);
      }
      catch (rB paramrL)
      {
        throw new RuntimeException(paramrL);
      }
      e = paramrL;
      break;
      label107:
      e = paramrL;
    }
  }
  
  public List<ByteBuffer> a(rS paramrS, rl paramrl)
  {
    return a(paramrS, paramrl, true);
  }
  
  public List<ByteBuffer> a(rS paramrS, rl paramrl, boolean paramBoolean)
  {
    paramrl = new StringBuilder(100);
    if ((paramrS instanceof rN))
    {
      paramrl.append("GET ");
      paramrl.append(((rN)paramrS).a());
      paramrl.append(" HTTP/1.1");
    }
    Object localObject;
    for (;;)
    {
      paramrl.append("\r\n");
      localObject = paramrS.b();
      while (((Iterator)localObject).hasNext())
      {
        String str1 = (String)((Iterator)localObject).next();
        String str2 = paramrS.b(str1);
        paramrl.append(str1);
        paramrl.append(": ");
        paramrl.append(str2);
        paramrl.append("\r\n");
      }
      if (!(paramrS instanceof rU)) {
        break;
      }
      paramrl.append("HTTP/1.1 101 " + ((rU)paramrS).a());
    }
    throw new RuntimeException("unknow role");
    paramrl.append("\r\n");
    paramrl = rY.b(paramrl.toString());
    if (paramBoolean)
    {
      paramrS = paramrS.c();
      if (paramrS != null) {
        break label253;
      }
    }
    label253:
    for (int i = 0;; i = paramrS.length)
    {
      localObject = ByteBuffer.allocate(i + paramrl.length);
      ((ByteBuffer)localObject).put(paramrl);
      if (paramrS != null) {
        ((ByteBuffer)localObject).put(paramrS);
      }
      ((ByteBuffer)localObject).flip();
      return Collections.singletonList(localObject);
      paramrS = null;
      break;
    }
  }
  
  public abstract rO a(rO paramrO);
  
  public abstract rP a(rN paramrN, rV paramrV);
  
  public abstract ru a(rN paramrN);
  
  public abstract ru a(rN paramrN, rU paramrU);
  
  public abstract void a();
  
  public void a(rl paramrl)
  {
    d = paramrl;
  }
  
  protected boolean a(rS paramrS)
  {
    return (paramrS.b("Upgrade").equalsIgnoreCase("websocket")) && (paramrS.b("Connection").toLowerCase(Locale.ENGLISH).contains("upgrade"));
  }
  
  public abstract rt b();
  
  public abstract List<rK> c(ByteBuffer paramByteBuffer);
  
  public abstract rs c();
  
  public rS d(ByteBuffer paramByteBuffer)
  {
    return a(paramByteBuffer, d);
  }
}

/* Location:
 * Qualified Name:     rs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */