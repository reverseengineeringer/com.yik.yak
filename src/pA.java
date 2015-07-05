import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

class pa
{
  static String a(String paramString)
  {
    return URLEncoder.encode(paramString, "UTF-8").replaceAll("\\+", "%20");
  }
  
  private static oz<hK> a(oz<hK> paramoz)
  {
    try
    {
      oz localoz = new oz(oY.c(a(oY.a((hK)paramoz.a()))), paramoz.b());
      return localoz;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      op.a("Escape URI: unsupported encoding", localUnsupportedEncodingException);
    }
    return paramoz;
  }
  
  private static oz<hK> a(oz<hK> paramoz, int paramInt)
  {
    if (!a((hK)paramoz.a()))
    {
      op.a("Escaping can only be applied to strings.");
      return paramoz;
    }
    switch (paramInt)
    {
    default: 
      op.a("Unsupported Value Escaping: " + paramInt);
      return paramoz;
    }
    return a(paramoz);
  }
  
  static oz<hK> a(oz<hK> paramoz, int... paramVarArgs)
  {
    int j = paramVarArgs.length;
    int i = 0;
    while (i < j)
    {
      paramoz = a(paramoz, paramVarArgs[i]);
      i += 1;
    }
    return paramoz;
  }
  
  private static boolean a(hK paramhK)
  {
    return oY.c(paramhK) instanceof String;
  }
}

/* Location:
 * Qualified Name:     pa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */