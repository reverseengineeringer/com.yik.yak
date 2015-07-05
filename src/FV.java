public enum fv
{
  private fv() {}
  
  public static fv a(String paramString)
  {
    return (fv)Enum.valueOf(fv.class, paramString);
  }
}

/* Location:
 * Qualified Name:     fv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */