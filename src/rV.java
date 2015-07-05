import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.Random;

public class rv
  extends rs
{
  private ByteBuffer g;
  private rK h = null;
  private final Random i = new Random();
  
  static
  {
    if (!rv.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      f = bool;
      return;
    }
  }
  
  private byte a(rL paramrL)
  {
    if (paramrL == rL.a) {
      return 0;
    }
    if (paramrL == rL.b) {
      return 1;
    }
    if (paramrL == rL.c) {
      return 2;
    }
    if (paramrL == rL.f) {
      return 8;
    }
    if (paramrL == rL.d) {
      return 9;
    }
    if (paramrL == rL.e) {
      return 10;
    }
    throw new RuntimeException("Don't know how to handle " + paramrL.toString());
  }
  
  private String a(String paramString)
  {
    paramString = paramString.trim();
    paramString = paramString + "258EAFA5-E914-47DA-95CA-C5AB0DC85B11";
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("SHA1");
      return rW.a(localMessageDigest.digest(paramString.getBytes()));
    }
    catch (NoSuchAlgorithmException paramString)
    {
      throw new RuntimeException(paramString);
    }
  }
  
  private rL a(byte paramByte)
  {
    switch (paramByte)
    {
    case 3: 
    case 4: 
    case 5: 
    case 6: 
    case 7: 
    default: 
      throw new rC("unknow optcode " + (short)paramByte);
    case 0: 
      return rL.a;
    case 1: 
      return rL.b;
    case 2: 
      return rL.c;
    case 8: 
      return rL.f;
    case 9: 
      return rL.d;
    }
    return rL.e;
  }
  
  private byte[] a(long paramLong, int paramInt)
  {
    byte[] arrayOfByte = new byte[paramInt];
    int j = 0;
    while (j < paramInt)
    {
      arrayOfByte[j] = ((byte)(int)(paramLong >>> paramInt * 8 - 8 - j * 8));
      j += 1;
    }
    return arrayOfByte;
  }
  
  public static int b(rS paramrS)
  {
    int j = -1;
    paramrS = paramrS.b("Sec-WebSocket-Version");
    if (paramrS.length() > 0) {}
    try
    {
      j = new Integer(paramrS.trim()).intValue();
      return j;
    }
    catch (NumberFormatException paramrS) {}
    return -1;
  }
  
  public ByteBuffer a(rK paramrK)
  {
    int k = -128;
    int i2 = 0;
    ByteBuffer localByteBuffer1 = paramrK.c();
    int m;
    int j;
    label39:
    label49:
    int i1;
    label57:
    ByteBuffer localByteBuffer2;
    if (d == rl.a)
    {
      m = 1;
      if (localByteBuffer1.remaining() > 125) {
        break label151;
      }
      j = 1;
      if (j <= 1) {
        break label172;
      }
      n = j + 1;
      if (m == 0) {
        break label178;
      }
      i1 = 4;
      localByteBuffer2 = ByteBuffer.allocate(i1 + (n + 1) + localByteBuffer1.remaining());
      i1 = a(paramrK.f());
      if (!paramrK.d()) {
        break label184;
      }
    }
    label151:
    label172:
    label178:
    label184:
    for (int n = -128;; n = 0)
    {
      localByteBuffer2.put((byte)((byte)n | i1));
      paramrK = a(localByteBuffer1.remaining(), j);
      if ((f) || (paramrK.length == j)) {
        break label190;
      }
      throw new AssertionError();
      m = 0;
      break;
      if (localByteBuffer1.remaining() <= 65535)
      {
        j = 2;
        break label39;
      }
      j = 8;
      break label39;
      n = j;
      break label49;
      i1 = 0;
      break label57;
    }
    label190:
    if (j == 1)
    {
      j = paramrK[0];
      if (m != 0) {}
      for (;;)
      {
        localByteBuffer2.put((byte)(j | k));
        if (m == 0) {
          break;
        }
        paramrK = ByteBuffer.allocate(4);
        paramrK.putInt(i.nextInt());
        localByteBuffer2.put(paramrK.array());
        j = i2;
        while (localByteBuffer1.hasRemaining())
        {
          localByteBuffer2.put((byte)(localByteBuffer1.get() ^ paramrK.get(j % 4)));
          j += 1;
        }
        k = 0;
      }
    }
    if (j == 2)
    {
      if (m != 0) {}
      for (;;)
      {
        localByteBuffer2.put((byte)(k | 0x7E));
        localByteBuffer2.put(paramrK);
        break;
        k = 0;
      }
    }
    if (j == 8)
    {
      if (m != 0) {}
      for (;;)
      {
        localByteBuffer2.put((byte)(k | 0x7F));
        localByteBuffer2.put(paramrK);
        break;
        k = 0;
      }
    }
    throw new RuntimeException("Size representation not supported/specified");
    localByteBuffer2.put(localByteBuffer1);
    if ((!f) && (localByteBuffer2.remaining() != 0)) {
      throw new AssertionError(localByteBuffer2.remaining());
    }
    localByteBuffer2.flip();
    return localByteBuffer2;
  }
  
  public rO a(rO paramrO)
  {
    paramrO.a("Upgrade", "websocket");
    paramrO.a("Connection", "Upgrade");
    paramrO.a("Sec-WebSocket-Version", "8");
    byte[] arrayOfByte = new byte[16];
    i.nextBytes(arrayOfByte);
    paramrO.a("Sec-WebSocket-Key", rW.a(arrayOfByte));
    return paramrO;
  }
  
  public rP a(rN paramrN, rV paramrV)
  {
    paramrV.a("Upgrade", "websocket");
    paramrV.a("Connection", paramrN.b("Connection"));
    paramrV.a("Switching Protocols");
    paramrN = paramrN.b("Sec-WebSocket-Key");
    if (paramrN == null) {
      throw new rD("missing Sec-WebSocket-Key");
    }
    paramrV.a("Sec-WebSocket-Accept", a(paramrN));
    return paramrV;
  }
  
  public ru a(rN paramrN)
  {
    int j = b(paramrN);
    if ((j == 7) || (j == 8))
    {
      if (a(paramrN)) {
        return ru.a;
      }
      return ru.b;
    }
    return ru.b;
  }
  
  public ru a(rN paramrN, rU paramrU)
  {
    if ((!paramrN.c("Sec-WebSocket-Key")) || (!paramrU.c("Sec-WebSocket-Accept"))) {
      return ru.b;
    }
    paramrU = paramrU.b("Sec-WebSocket-Accept");
    if (a(paramrN.b("Sec-WebSocket-Key")).equals(paramrU)) {
      return ru.a;
    }
    return ru.b;
  }
  
  public void a()
  {
    g = null;
  }
  
  public rt b()
  {
    return rt.c;
  }
  
  public List<rK> c(ByteBuffer paramByteBuffer)
  {
    LinkedList localLinkedList = new LinkedList();
    if (g != null) {}
    try
    {
      paramByteBuffer.mark();
      int j = paramByteBuffer.remaining();
      int k = g.remaining();
      if (k > j)
      {
        g.put(paramByteBuffer.array(), paramByteBuffer.position(), j);
        paramByteBuffer.position(j + paramByteBuffer.position());
        return Collections.emptyList();
      }
      g.put(paramByteBuffer.array(), paramByteBuffer.position(), k);
      paramByteBuffer.position(paramByteBuffer.position() + k);
      localLinkedList.add(e((ByteBuffer)g.duplicate().position(0)));
      g = null;
      while (paramByteBuffer.hasRemaining())
      {
        paramByteBuffer.mark();
        try
        {
          localLinkedList.add(e(paramByteBuffer));
        }
        catch (rw localrw2)
        {
          paramByteBuffer.reset();
          g = ByteBuffer.allocate(a(localrw2.a()));
          g.put(paramByteBuffer);
        }
      }
      return localLinkedList;
    }
    catch (rw localrw1)
    {
      g.limit();
      ByteBuffer localByteBuffer = ByteBuffer.allocate(a(localrw1.a()));
      if ((!f) && (localByteBuffer.limit() <= g.limit())) {
        throw new AssertionError();
      }
      g.rewind();
      localByteBuffer.put(g);
      g = localByteBuffer;
    }
    return c(paramByteBuffer);
  }
  
  public rs c()
  {
    return new rv();
  }
  
  public rK e(ByteBuffer paramByteBuffer)
  {
    int k = 2;
    int i1 = 0;
    int i2 = paramByteBuffer.remaining();
    if (i2 < 2) {
      throw new rw(this, 2);
    }
    int n = paramByteBuffer.get();
    if (n >> 8 != 0) {}
    for (boolean bool = true;; bool = false)
    {
      j = (byte)((n & 0x7F) >> 4);
      if (j == 0) {
        break;
      }
      throw new rC("bad rsv " + j);
    }
    int j = paramByteBuffer.get();
    if ((j & 0xFFFFFF80) != 0) {}
    rL localrL;
    for (int m = 1;; m = 0)
    {
      j = (byte)(j & 0x7F);
      localrL = a((byte)(n & 0xF));
      if ((bool) || ((localrL != rL.d) && (localrL != rL.e) && (localrL != rL.f))) {
        break;
      }
      throw new rC("control frames may no be fragmented");
    }
    if ((j >= 0) && (j <= 125)) {
      if (m == 0) {
        break label398;
      }
    }
    label398:
    for (n = 4;; n = 0)
    {
      k = n + k + j;
      if (i2 >= k) {
        break label404;
      }
      throw new rw(this, k);
      if ((localrL == rL.d) || (localrL == rL.e) || (localrL == rL.f)) {
        throw new rC("more than 125 octets");
      }
      if (j == 126)
      {
        if (i2 < 4) {
          throw new rw(this, 4);
        }
        localObject = new byte[3];
        localObject[1] = paramByteBuffer.get();
        localObject[2] = paramByteBuffer.get();
        j = new BigInteger((byte[])localObject).intValue();
        k = 4;
        break;
      }
      if (i2 < 10) {
        throw new rw(this, 10);
      }
      localObject = new byte[8];
      j = 0;
      while (j < 8)
      {
        localObject[j] = paramByteBuffer.get();
        j += 1;
      }
      long l = new BigInteger((byte[])localObject).longValue();
      if (l > 2147483647L) {
        throw new rE("Payloadsize is to big...");
      }
      j = (int)l;
      k = 10;
      break;
    }
    label404:
    Object localObject = ByteBuffer.allocate(a(j));
    if (m != 0)
    {
      byte[] arrayOfByte = new byte[4];
      paramByteBuffer.get(arrayOfByte);
      k = i1;
      while (k < j)
      {
        ((ByteBuffer)localObject).put((byte)(paramByteBuffer.get() ^ arrayOfByte[(k % 4)]));
        k += 1;
      }
    }
    ((ByteBuffer)localObject).put(paramByteBuffer.array(), paramByteBuffer.position(), ((ByteBuffer)localObject).limit());
    paramByteBuffer.position(paramByteBuffer.position() + ((ByteBuffer)localObject).limit());
    if (localrL == rL.f) {
      paramByteBuffer = new rI();
    }
    for (;;)
    {
      ((ByteBuffer)localObject).flip();
      paramByteBuffer.a((ByteBuffer)localObject);
      return paramByteBuffer;
      paramByteBuffer = new rM();
      paramByteBuffer.a(bool);
      paramByteBuffer.a(localrL);
    }
  }
}

/* Location:
 * Qualified Name:     rv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */