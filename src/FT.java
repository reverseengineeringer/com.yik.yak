public class ft
{
  private static fq a;
  
  public static void a(String paramString)
  {
    fu localfu = b();
    if (localfu != null) {
      localfu.d(paramString);
    }
  }
  
  public static boolean a()
  {
    if (b() != null) {
      return fv.a.equals(b().a());
    }
    return false;
  }
  
  private static fu b()
  {
    if (a == null) {
      a = fq.a();
    }
    if (a != null) {
      return a.d();
    }
    return null;
  }
  
  public static void b(String paramString)
  {
    fu localfu = b();
    if (localfu != null) {
      localfu.b(paramString);
    }
  }
  
  public static void c(String paramString)
  {
    fu localfu = b();
    if (localfu != null) {
      localfu.a(paramString);
    }
  }
  
  public static void d(String paramString)
  {
    fu localfu = b();
    if (localfu != null) {
      localfu.c(paramString);
    }
  }
}

/* Location:
 * Qualified Name:     ft
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */