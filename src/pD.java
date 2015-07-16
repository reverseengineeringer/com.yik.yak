import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

class pd
{
  static String a(String paramString)
  {
    return URLEncoder.encode(paramString, "UTF-8").replaceAll("\\+", "%20");
  }
  
  private static oC<hH> a(oC<hH> paramoC)
  {
    try
    {
      oC localoC = new oC(pb.c(a(pb.a((hH)paramoC.a()))), paramoC.b());
      return localoC;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      os.a("Escape URI: unsupported encoding", localUnsupportedEncodingException);
    }
    return paramoC;
  }
  
  private static oC<hH> a(oC<hH> paramoC, int paramInt)
  {
    if (!a((hH)paramoC.a()))
    {
      os.a("Escaping can only be applied to strings.");
      return paramoC;
    }
    switch (paramInt)
    {
    default: 
      os.a("Unsupported Value Escaping: " + paramInt);
      return paramoC;
    }
    return a(paramoC);
  }
  
  static oC<hH> a(oC<hH> paramoC, int... paramVarArgs)
  {
    int j = paramVarArgs.length;
    int i = 0;
    while (i < j)
    {
      paramoC = a(paramoC, paramVarArgs[i]);
      i += 1;
    }
    return paramoC;
  }
  
  private static boolean a(hH paramhH)
  {
    return pb.c(paramhH) instanceof String;
  }
}

/* Location:
 * Qualified Name:     pd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */