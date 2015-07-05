public final class yv
{
  public static boolean a(String paramString)
  {
    return (paramString.equals("POST")) || (paramString.equals("PATCH")) || (paramString.equals("PUT")) || (paramString.equals("DELETE"));
  }
  
  public static boolean b(String paramString)
  {
    return (paramString.equals("POST")) || (paramString.equals("PUT")) || (paramString.equals("PATCH"));
  }
  
  public static boolean c(String paramString)
  {
    return (b(paramString)) || (paramString.equals("DELETE"));
  }
}

/* Location:
 * Qualified Name:     yv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */