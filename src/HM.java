class hm
  implements gL<fY>
{
  private final fY a = new fY();
  
  public void a(String paramString, int paramInt)
  {
    if ("ga_dispatchPeriod".equals(paramString))
    {
      a.d = paramInt;
      return;
    }
    gc.d("int configuration name not recognized:  " + paramString);
  }
  
  public void a(String paramString1, String paramString2)
  {
    if ("ga_appName".equals(paramString1))
    {
      a.a = paramString2;
      return;
    }
    if ("ga_appVersion".equals(paramString1))
    {
      a.b = paramString2;
      return;
    }
    if ("ga_logLevel".equals(paramString1))
    {
      a.c = paramString2;
      return;
    }
    gc.d("string configuration name not recognized:  " + paramString1);
  }
  
  public void a(String paramString, boolean paramBoolean)
  {
    if ("ga_dryRun".equals(paramString))
    {
      paramString = a;
      if (paramBoolean) {}
      for (int i = 1;; i = 0)
      {
        e = i;
        return;
      }
    }
    gc.d("bool configuration name not recognized:  " + paramString);
  }
  
  public fY b()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     hm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */