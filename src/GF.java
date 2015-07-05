public class gf
{
  private static fQ a;
  private static volatile boolean b = false;
  private static fW c;
  
  public static void a(String paramString)
  {
    fW localfW = b();
    if (localfW != null) {
      localfW.d(paramString);
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
  
  static fW b()
  {
    try
    {
      fW localfW;
      if (b)
      {
        if (c == null) {
          c = new gQ();
        }
        localfW = c;
        return localfW;
      }
      if (a == null) {
        a = fQ.a();
      }
      if (a != null)
      {
        localfW = a.d();
        return localfW;
      }
    }
    finally {}
    return null;
  }
  
  public static void b(String paramString)
  {
    fW localfW = b();
    if (localfW != null) {
      localfW.b(paramString);
    }
  }
  
  public static void c(String paramString)
  {
    fW localfW = b();
    if (localfW != null) {
      localfW.a(paramString);
    }
  }
  
  public static void d(String paramString)
  {
    fW localfW = b();
    if (localfW != null) {
      localfW.c(paramString);
    }
  }
}

/* Location:
 * Qualified Name:     gf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */