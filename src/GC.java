public class gc
{
  private static fN a;
  private static volatile boolean b = false;
  private static fT c;
  
  public static void a(String paramString)
  {
    fT localfT = b();
    if (localfT != null) {
      localfT.d(paramString);
    }
  }
  
  public static boolean a()
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (b() != null)
    {
      bool1 = bool2;
      if (b().a() == 0) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  static fT b()
  {
    try
    {
      fT localfT;
      if (b)
      {
        if (c == null) {
          c = new gN();
        }
        localfT = c;
        return localfT;
      }
      if (a == null) {
        a = fN.a();
      }
      if (a != null)
      {
        localfT = a.d();
        return localfT;
      }
    }
    finally {}
    return null;
  }
  
  public static void b(String paramString)
  {
    fT localfT = b();
    if (localfT != null) {
      localfT.b(paramString);
    }
  }
  
  public static void c(String paramString)
  {
    fT localfT = b();
    if (localfT != null) {
      localfT.a(paramString);
    }
  }
  
  public static void d(String paramString)
  {
    fT localfT = b();
    if (localfT != null) {
      localfT.c(paramString);
    }
  }
}

/* Location:
 * Qualified Name:     gc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */