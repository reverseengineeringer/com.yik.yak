import java.io.IOException;
import java.util.logging.Logger;

public final class zc
  implements zM
{
  private static final Logger a = Logger.getLogger(ze.class.getName());
  private static final KC b = KC.a("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");
  
  private static int b(int paramInt, byte paramByte, short paramShort)
  {
    short s = paramInt;
    if ((paramByte & 0x8) != 0) {
      s = paramInt - 1;
    }
    if (paramShort > s) {
      throw d("PROTOCOL_ERROR padding %s > remaining length %s", new Object[] { Short.valueOf(paramShort), Integer.valueOf(s) });
    }
    return (short)(s - paramShort);
  }
  
  private static int b(KB paramKB)
  {
    return (paramKB.k() & 0xFF) << 16 | (paramKB.k() & 0xFF) << 8 | paramKB.k() & 0xFF;
  }
  
  private static void b(KA paramKA, int paramInt)
  {
    paramKA.g(paramInt >>> 16 & 0xFF);
    paramKA.g(paramInt >>> 8 & 0xFF);
    paramKA.g(paramInt & 0xFF);
  }
  
  private static IllegalArgumentException c(String paramString, Object... paramVarArgs)
  {
    throw new IllegalArgumentException(String.format(paramString, paramVarArgs));
  }
  
  private static IOException d(String paramString, Object... paramVarArgs)
  {
    throw new IOException(String.format(paramString, paramVarArgs));
  }
  
  public yU a(KB paramKB, boolean paramBoolean)
  {
    return new zf(paramKB, 4096, paramBoolean);
  }
  
  public yW a(KA paramKA, boolean paramBoolean)
  {
    return new zg(paramKA, paramBoolean);
  }
}

/* Location:
 * Qualified Name:     zc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */