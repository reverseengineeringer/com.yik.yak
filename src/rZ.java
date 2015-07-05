import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;
import java.util.Random;

public class rz
  extends ry
{
  private static final byte[] j = { -1, 0 };
  private boolean i = false;
  private final Random k = new Random();
  
  private static byte[] a(String paramString)
  {
    long l2;
    try
    {
      l1 = Long.parseLong(paramString.replaceAll("[^0-9]", ""));
      l2 = paramString.split(" ").length - 1;
      if (l2 == 0L) {
        throw new rD("invalid Sec-WebSocket-Key (/key2/)");
      }
    }
    catch (NumberFormatException paramString)
    {
      throw new rD("invalid Sec-WebSocket-Key (/key1/ or /key2/)");
    }
    long l1 = new Long(l1 / l2).longValue();
    int m = (byte)(int)(l1 >> 24);
    int n = (byte)(int)(l1 << 8 >> 24);
    int i1 = (byte)(int)(l1 << 16 >> 24);
    int i2 = (byte)(int)(l1 << 24 >> 24);
    return new byte[] { m, n, i1, i2 };
  }
  
  public static byte[] a(String paramString1, String paramString2, byte[] paramArrayOfByte)
  {
    paramString1 = a(paramString1);
    paramString2 = a(paramString2);
    int m = paramString1[0];
    int n = paramString1[1];
    int i1 = paramString1[2];
    int i2 = paramString1[3];
    int i3 = paramString2[0];
    int i4 = paramString2[1];
    int i5 = paramString2[2];
    int i6 = paramString2[3];
    int i7 = paramArrayOfByte[0];
    int i8 = paramArrayOfByte[1];
    int i9 = paramArrayOfByte[2];
    int i10 = paramArrayOfByte[3];
    int i11 = paramArrayOfByte[4];
    int i12 = paramArrayOfByte[5];
    int i13 = paramArrayOfByte[6];
    int i14 = paramArrayOfByte[7];
    try
    {
      paramString1 = MessageDigest.getInstance("MD5");
      return paramString1.digest(new byte[] { m, n, i1, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11, i12, i13, i14 });
    }
    catch (NoSuchAlgorithmException paramString1)
    {
      throw new RuntimeException(paramString1);
    }
  }
  
  private static String e()
  {
    Random localRandom = new Random();
    long l = localRandom.nextInt(12) + 1;
    String str = Long.toString((localRandom.nextInt(Math.abs(new Long(4294967295L / l).intValue())) + 1) * l);
    int n = localRandom.nextInt(12);
    int m = 0;
    while (m < n + 1)
    {
      int i1 = Math.abs(localRandom.nextInt(str.length()));
      char c2 = (char)(localRandom.nextInt(95) + 33);
      char c1 = c2;
      if (c2 >= '0')
      {
        c1 = c2;
        if (c2 <= '9') {
          c1 = (char)(c2 - '\017');
        }
      }
      str = new StringBuilder(str).insert(i1, c1).toString();
      m += 1;
    }
    m = 0;
    while (m < l)
    {
      n = Math.abs(localRandom.nextInt(str.length() - 1) + 1);
      str = new StringBuilder(str).insert(n, " ").toString();
      m += 1;
    }
    return str;
  }
  
  public ByteBuffer a(rK paramrK)
  {
    if (paramrK.f() == rL.f) {
      return ByteBuffer.wrap(j);
    }
    return super.a(paramrK);
  }
  
  public rO a(rO paramrO)
  {
    paramrO.a("Upgrade", "WebSocket");
    paramrO.a("Connection", "Upgrade");
    paramrO.a("Sec-WebSocket-Key1", e());
    paramrO.a("Sec-WebSocket-Key2", e());
    if (!paramrO.c("Origin")) {
      paramrO.a("Origin", "random" + k.nextInt());
    }
    byte[] arrayOfByte = new byte[8];
    k.nextBytes(arrayOfByte);
    paramrO.a(arrayOfByte);
    return paramrO;
  }
  
  public rP a(rN paramrN, rV paramrV)
  {
    paramrV.a("WebSocket Protocol Handshake");
    paramrV.a("Upgrade", "WebSocket");
    paramrV.a("Connection", paramrN.b("Connection"));
    paramrV.a("Sec-WebSocket-Origin", paramrN.b("Origin"));
    paramrV.a("Sec-WebSocket-Location", "ws://" + paramrN.b("Host") + paramrN.a());
    String str1 = paramrN.b("Sec-WebSocket-Key1");
    String str2 = paramrN.b("Sec-WebSocket-Key2");
    paramrN = paramrN.c();
    if ((str1 == null) || (str2 == null) || (paramrN == null) || (paramrN.length != 8)) {
      throw new rD("Bad keys");
    }
    paramrV.a(a(str1, str2, paramrN));
    return paramrV;
  }
  
  public ru a(rN paramrN)
  {
    if ((paramrN.b("Upgrade").equals("WebSocket")) && (paramrN.b("Connection").contains("Upgrade")) && (paramrN.b("Sec-WebSocket-Key1").length() > 0) && (!paramrN.b("Sec-WebSocket-Key2").isEmpty()) && (paramrN.c("Origin"))) {
      return ru.a;
    }
    return ru.b;
  }
  
  public ru a(rN paramrN, rU paramrU)
  {
    if (i) {
      return ru.b;
    }
    try
    {
      if ((!paramrU.b("Sec-WebSocket-Origin").equals(paramrN.b("Origin"))) || (!a(paramrU))) {
        return ru.b;
      }
      paramrU = paramrU.c();
      if ((paramrU == null) || (paramrU.length == 0)) {
        throw new rA();
      }
    }
    catch (rD paramrN)
    {
      throw new RuntimeException("bad handshakerequest", paramrN);
    }
    if (Arrays.equals(paramrU, a(paramrN.b("Sec-WebSocket-Key1"), paramrN.b("Sec-WebSocket-Key2"), paramrN.c()))) {
      return ru.a;
    }
    paramrN = ru.b;
    return paramrN;
  }
  
  public rt b()
  {
    return rt.b;
  }
  
  public List<rK> c(ByteBuffer paramByteBuffer)
  {
    paramByteBuffer.mark();
    List localList2 = super.e(paramByteBuffer);
    List localList1 = localList2;
    if (localList2 == null)
    {
      paramByteBuffer.reset();
      localList1 = g;
      f = true;
      if (h == null)
      {
        h = ByteBuffer.allocate(2);
        if (paramByteBuffer.remaining() > h.remaining()) {
          throw new rC();
        }
      }
      else
      {
        throw new rC();
      }
      h.put(paramByteBuffer);
      if (h.hasRemaining()) {
        break label139;
      }
      if (Arrays.equals(h.array(), j)) {
        localList1.add(new rI(1000));
      }
    }
    else
    {
      return localList1;
    }
    throw new rC();
    label139:
    g = new LinkedList();
    return localList1;
  }
  
  public rs c()
  {
    return new rz();
  }
  
  public rS d(ByteBuffer paramByteBuffer)
  {
    rP localrP = a(paramByteBuffer, d);
    if (((localrP.c("Sec-WebSocket-Key1")) || (d == rl.a)) && (!localrP.c("Sec-WebSocket-Version"))) {
      if (d != rl.b) {
        break label77;
      }
    }
    for (int m = 8;; m = 16)
    {
      byte[] arrayOfByte = new byte[m];
      try
      {
        paramByteBuffer.get(arrayOfByte);
        localrP.a(arrayOfByte);
        return localrP;
      }
      catch (BufferUnderflowException localBufferUnderflowException)
      {
        label77:
        throw new rA(paramByteBuffer.capacity() + 16);
      }
    }
  }
}

/* Location:
 * Qualified Name:     rz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */