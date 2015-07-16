final class ze
{
  private static final String[] a;
  private static final String[] b;
  private static final String[] c;
  
  static
  {
    int k = 0;
    a = new String[] { "DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION" };
    b = new String[64];
    c = new String['Ā'];
    int i = 0;
    while (i < c.length)
    {
      c[i] = String.format("%8s", new Object[] { Integer.toBinaryString(i) }).replace(' ', '0');
      i += 1;
    }
    b[0] = "";
    b[1] = "END_STREAM";
    int[] arrayOfInt1 = new int[1];
    arrayOfInt1[0] = 1;
    b[8] = "PADDED";
    int j = arrayOfInt1.length;
    i = 0;
    while (i < j)
    {
      m = arrayOfInt1[i];
      b[(m | 0x8)] = (b[m] + "|PADDED");
      i += 1;
    }
    b[4] = "END_HEADERS";
    b[32] = "PRIORITY";
    b[36] = "END_HEADERS|PRIORITY";
    int[] arrayOfInt2 = new int[3];
    int[] tmp242_240 = arrayOfInt2;
    tmp242_240[0] = 4;
    int[] tmp246_242 = tmp242_240;
    tmp246_242[1] = 32;
    int[] tmp251_246 = tmp246_242;
    tmp251_246[2] = 36;
    tmp251_246;
    int m = arrayOfInt2.length;
    i = 0;
    for (;;)
    {
      j = k;
      if (i >= m) {
        break;
      }
      int n = arrayOfInt2[i];
      int i1 = arrayOfInt1.length;
      j = 0;
      while (j < i1)
      {
        int i2 = arrayOfInt1[j];
        b[(i2 | n)] = (b[i2] + '|' + b[n]);
        b[(i2 | n | 0x8)] = (b[i2] + '|' + b[n] + "|PADDED");
        j += 1;
      }
      i += 1;
    }
    while (j < b.length)
    {
      if (b[j] == null) {
        b[j] = c[j];
      }
      j += 1;
    }
  }
  
  static String a(byte paramByte1, byte paramByte2)
  {
    Object localObject;
    if (paramByte2 == 0) {
      localObject = "";
    }
    String str;
    do
    {
      do
      {
        return (String)localObject;
        switch (paramByte1)
        {
        case 5: 
        default: 
          if (paramByte2 >= b.length) {
            break;
          }
        }
        for (str = b[paramByte2]; (paramByte1 == 5) && ((paramByte2 & 0x4) != 0); str = c[paramByte2])
        {
          return str.replace("HEADERS", "PUSH_PROMISE");
          if (paramByte2 == 1) {
            return "ACK";
          }
          return c[paramByte2];
          return c[paramByte2];
        }
        localObject = str;
      } while (paramByte1 != 0);
      localObject = str;
    } while ((paramByte2 & 0x20) == 0);
    return str.replace("PRIORITY", "COMPRESSED");
  }
  
  static String a(boolean paramBoolean, int paramInt1, int paramInt2, byte paramByte1, byte paramByte2)
  {
    String str1;
    String str3;
    if (paramByte1 < a.length)
    {
      str1 = a[paramByte1];
      str3 = a(paramByte1, paramByte2);
      if (!paramBoolean) {
        break label91;
      }
    }
    label91:
    for (String str2 = "<<";; str2 = ">>")
    {
      return String.format("%s 0x%08x %5d %-13s %s", new Object[] { str2, Integer.valueOf(paramInt1), Integer.valueOf(paramInt2), str1, str3 });
      str1 = String.format("0x%02x", new Object[] { Byte.valueOf(paramByte1) });
      break;
    }
  }
}

/* Location:
 * Qualified Name:     ze
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */