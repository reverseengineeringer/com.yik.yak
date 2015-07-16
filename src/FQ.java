public class fq
{
  private static fn a;
  
  public static void a(String paramString)
  {
    fr localfr = b();
    if (localfr != null) {
      localfr.d(paramString);
    }
  }
  
  public static boolean a()
  {
    if (b() != null) {
      return fs.a.equals(b().a());
    }
    return false;
  }
  
  private static fr b()
  {
    if (a == null) {
      a = fn.a();
    }
    if (a != null) {
      return a.d();
    }
    return null;
  }
  
  public static void b(String paramString)
  {
    fr localfr = b();
    if (localfr != null) {
      localfr.b(paramString);
    }
  }
  
  public static void c(String paramString)
  {
    fr localfr = b();
    if (localfr != null) {
      localfr.a(paramString);
    }
  }
  
  public static void d(String paramString)
  {
    fr localfr = b();
    if (localfr != null) {
      localfr.c(paramString);
    }
  }
}

/* Location:
 * Qualified Name:     fq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */