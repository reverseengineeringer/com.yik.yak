import java.io.File;
import java.util.Iterator;
import java.util.List;

class bw
  extends HS
  implements Js
{
  private final String b;
  
  public bw(HK paramHK, String paramString1, String paramString2, JI paramJI, String paramString3)
  {
    this(paramHK, paramString1, paramString2, paramJI, paramString3, Jz.b);
  }
  
  bw(HK paramHK, String paramString1, String paramString2, JI paramJI, String paramString3, Jz paramJz)
  {
    super(paramHK, paramString1, paramString2, paramJI, paramJz);
    b = paramString3;
  }
  
  private JA a(JA paramJA, String paramString)
  {
    return paramJA.a("X-CRASHLYTICS-API-CLIENT-TYPE", "android").a("X-CRASHLYTICS-API-CLIENT-VERSION", bs.b().d()).a("X-CRASHLYTICS-API-KEY", paramString);
  }
  
  private JA a(JA paramJA, List<File> paramList)
  {
    paramList = paramList.iterator();
    int i = 0;
    while (paramList.hasNext())
    {
      File localFile = (File)paramList.next();
      Ie.a(bs.b().C(), "Adding analytics session file " + localFile.getName() + " to multipart POST");
      paramJA.a("session_analytics_file_" + i, localFile.getName(), "application/vnd.crashlytics.android.events", localFile);
      i += 1;
    }
    return paramJA;
  }
  
  public boolean a(List<File> paramList)
  {
    JA localJA = a(a(b(), b), paramList);
    Ie.a(bs.b().C(), "Sending " + paramList.size() + " analytics files to " + a());
    int i = localJA.b();
    Ie.a(bs.b().C(), "Response code for analytics file send is " + i);
    return Iz.a(i) == 0;
  }
}

/* Location:
 * Qualified Name:     bw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */