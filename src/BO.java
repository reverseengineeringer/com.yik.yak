import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.Context;
import android.os.Build.VERSION;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class bo
{
  private static final ab a = ab.a("0");
  private ActivityManager.RunningAppProcessInfo b;
  private Thread[] c;
  private List<StackTraceElement[]> d;
  private StackTraceElement[] e;
  private final Context f;
  private final ab g;
  private final ab h;
  private final int i = 8;
  
  public bo(Context paramContext, String paramString1, String paramString2)
  {
    f = paramContext;
    g = ab.a(paramString2);
    if (paramString1 == null) {}
    for (paramContext = null;; paramContext = ab.a(paramString1.replace("-", "")))
    {
      h = paramContext;
      return;
    }
  }
  
  private int a()
  {
    return 0 + af.b(1, ab.a(new Ic().a(f)));
  }
  
  private int a(float paramFloat, int paramInt1, boolean paramBoolean, int paramInt2, long paramLong1, long paramLong2)
  {
    return 0 + af.b(1, paramFloat) + af.h(2, paramInt1) + af.b(3, paramBoolean) + af.f(4, paramInt2) + af.b(5, paramLong1) + af.b(6, paramLong2);
  }
  
  private int a(int paramInt1, ab paramab1, ab paramab2, int paramInt2, long paramLong1, long paramLong2, boolean paramBoolean, Map<Ir, String> paramMap, int paramInt3, ab paramab3, ab paramab4)
  {
    int j = af.b(1, paramab1);
    int k = af.g(3, paramInt1);
    if (paramab2 == null) {}
    for (paramInt1 = 0;; paramInt1 = af.b(4, paramab2))
    {
      paramInt1 = paramInt1 + (k + (0 + j)) + af.f(5, paramInt2) + af.b(6, paramLong1) + af.b(7, paramLong2) + af.b(10, paramBoolean);
      if (paramMap == null) {
        break;
      }
      paramab1 = paramMap.entrySet().iterator();
      for (;;)
      {
        paramInt2 = paramInt1;
        if (!paramab1.hasNext()) {
          break;
        }
        paramab2 = (Map.Entry)paramab1.next();
        paramInt2 = a((Ir)paramab2.getKey(), (String)paramab2.getValue());
        paramInt1 = paramInt2 + (af.j(11) + af.l(paramInt2)) + paramInt1;
      }
    }
    paramInt2 = paramInt1;
    j = af.f(12, paramInt3);
    if (paramab3 == null)
    {
      paramInt1 = 0;
      if (paramab4 != null) {
        break label203;
      }
    }
    label203:
    for (paramInt3 = 0;; paramInt3 = af.b(14, paramab4))
    {
      return paramInt3 + (paramInt2 + j + paramInt1);
      paramInt1 = af.b(13, paramab3);
      break;
    }
  }
  
  private int a(Ir paramIr, String paramString)
  {
    return af.g(1, h) + af.b(2, ab.a(paramString));
  }
  
  private int a(ab paramab)
  {
    return af.b(1, paramab);
  }
  
  private int a(ab paramab1, ab paramab2, ab paramab3, ab paramab4, int paramInt)
  {
    int j = af.b(1, paramab1);
    int k = af.b(2, paramab2);
    int m = af.b(3, paramab3);
    int n = a();
    return 0 + j + k + m + (n + (af.j(5) + af.l(n))) + af.b(6, paramab4) + af.g(10, paramInt);
  }
  
  private int a(ab paramab1, ab paramab2, boolean paramBoolean)
  {
    return 0 + af.g(1, 3) + af.b(2, paramab1) + af.b(3, paramab2) + af.b(4, paramBoolean);
  }
  
  private int a(StackTraceElement paramStackTraceElement, boolean paramBoolean)
  {
    int j;
    int k;
    if (paramStackTraceElement.isNativeMethod())
    {
      j = af.b(1, Math.max(paramStackTraceElement.getLineNumber(), 0)) + 0;
      k = j + af.b(2, ab.a(paramStackTraceElement.getClassName() + "." + paramStackTraceElement.getMethodName()));
      j = k;
      if (paramStackTraceElement.getFileName() != null) {
        j = k + af.b(3, ab.a(paramStackTraceElement.getFileName()));
      }
      if ((paramStackTraceElement.isNativeMethod()) || (paramStackTraceElement.getLineNumber() <= 0)) {
        break label147;
      }
      j += af.b(4, paramStackTraceElement.getLineNumber());
    }
    label147:
    for (;;)
    {
      if (paramBoolean) {}
      for (k = 2;; k = 0)
      {
        return af.f(5, k) + j;
        j = af.b(1, 0L) + 0;
        break;
      }
    }
  }
  
  private int a(String paramString1, String paramString2)
  {
    int j = af.b(1, ab.a(paramString1));
    paramString1 = paramString2;
    if (paramString2 == null) {
      paramString1 = "";
    }
    return j + af.b(2, ab.a(paramString1));
  }
  
  private int a(Thread paramThread, Throwable paramThrowable)
  {
    int j = a(paramThread, e, 4, true);
    int n = af.j(1);
    int i1 = af.l(j);
    int m = c.length;
    int k = 0;
    j = j + (n + i1) + 0;
    while (k < m)
    {
      n = a(c[k], (StackTraceElement[])d.get(k), 0, false);
      j += n + (af.j(1) + af.l(n));
      k += 1;
    }
    k = a(paramThrowable, 1);
    m = af.j(2);
    n = af.l(k);
    i1 = c();
    int i2 = af.j(3);
    int i3 = af.l(i1);
    int i4 = b();
    return k + (m + n) + j + (i1 + (i2 + i3)) + (i4 + (af.j(3) + af.l(i4)));
  }
  
  private int a(Thread paramThread, Throwable paramThrowable, int paramInt, Map<String, String> paramMap)
  {
    int j = a(paramThread, paramThrowable);
    j = j + (af.j(1) + af.l(j)) + 0;
    if (paramMap != null)
    {
      paramThread = paramMap.entrySet().iterator();
      for (;;)
      {
        k = j;
        if (!paramThread.hasNext()) {
          break;
        }
        paramThrowable = (Map.Entry)paramThread.next();
        k = a((String)paramThrowable.getKey(), (String)paramThrowable.getValue());
        j = k + (af.j(2) + af.l(k)) + j;
      }
    }
    int k = j;
    j = k;
    if (b != null) {
      if (b.importance == 100) {
        break label161;
      }
    }
    label161:
    for (boolean bool = true;; bool = false)
    {
      j = k + af.b(3, bool);
      return af.f(4, paramInt) + j;
    }
  }
  
  private int a(Thread paramThread, Throwable paramThrowable, String paramString, long paramLong1, Map<String, String> paramMap, float paramFloat, int paramInt1, boolean paramBoolean, int paramInt2, long paramLong2, long paramLong3, ab paramab)
  {
    int j = af.b(1, paramLong1);
    int k = af.b(2, ab.a(paramString));
    int m = a(paramThread, paramThrowable, paramInt2, paramMap);
    int n = af.j(3);
    int i1 = af.l(m);
    paramInt1 = a(paramFloat, paramInt1, paramBoolean, paramInt2, paramLong2, paramLong3);
    paramInt2 = 0 + j + k + (m + (n + i1)) + (paramInt1 + (af.j(5) + af.l(paramInt1)));
    paramInt1 = paramInt2;
    if (paramab != null)
    {
      paramInt1 = a(paramab);
      paramInt1 = paramInt2 + (paramInt1 + (af.j(6) + af.l(paramInt1)));
    }
    return paramInt1;
  }
  
  private int a(Thread paramThread, StackTraceElement[] paramArrayOfStackTraceElement, int paramInt, boolean paramBoolean)
  {
    int j = af.b(1, ab.a(paramThread.getName()));
    j = af.f(2, paramInt) + j;
    int k = paramArrayOfStackTraceElement.length;
    paramInt = 0;
    while (paramInt < k)
    {
      int m = a(paramArrayOfStackTraceElement[paramInt], paramBoolean);
      j += m + (af.j(3) + af.l(m));
      paramInt += 1;
    }
    return j;
  }
  
  private int a(Throwable paramThrowable, int paramInt)
  {
    int m = 0;
    int k = af.b(1, ab.a(paramThrowable.getClass().getName())) + 0;
    Object localObject = paramThrowable.getLocalizedMessage();
    int j = k;
    if (localObject != null) {
      j = k + af.b(3, ab.a((String)localObject));
    }
    localObject = paramThrowable.getStackTrace();
    int n = localObject.length;
    k = 0;
    while (k < n)
    {
      int i1 = a(localObject[k], true);
      int i2 = af.j(4);
      int i3 = af.l(i1);
      k += 1;
      j = i1 + (i2 + i3) + j;
    }
    localObject = paramThrowable.getCause();
    k = j;
    if (localObject != null)
    {
      k = m;
      paramThrowable = (Throwable)localObject;
      if (paramInt < i)
      {
        paramInt = a((Throwable)localObject, paramInt + 1);
        k = j + (paramInt + (af.j(6) + af.l(paramInt)));
      }
    }
    else
    {
      return k;
    }
    while (paramThrowable != null)
    {
      paramThrowable = paramThrowable.getCause();
      k += 1;
    }
    return j + af.f(7, k);
  }
  
  private ab a(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    return ab.a(paramString);
  }
  
  private void a(af paramaf, float paramFloat, int paramInt1, boolean paramBoolean, int paramInt2, long paramLong1, long paramLong2)
  {
    paramaf.i(5, 2);
    paramaf.k(a(paramFloat, paramInt1, paramBoolean, paramInt2, paramLong1, paramLong2));
    paramaf.a(1, paramFloat);
    paramaf.d(2, paramInt1);
    paramaf.a(3, paramBoolean);
    paramaf.b(4, paramInt2);
    paramaf.a(5, paramLong1);
    paramaf.a(6, paramLong2);
  }
  
  private void a(af paramaf, int paramInt, StackTraceElement paramStackTraceElement, boolean paramBoolean)
  {
    int j = 4;
    paramaf.i(paramInt, 2);
    paramaf.k(a(paramStackTraceElement, paramBoolean));
    if (paramStackTraceElement.isNativeMethod())
    {
      paramaf.a(1, Math.max(paramStackTraceElement.getLineNumber(), 0));
      paramaf.a(2, ab.a(paramStackTraceElement.getClassName() + "." + paramStackTraceElement.getMethodName()));
      if (paramStackTraceElement.getFileName() != null) {
        paramaf.a(3, ab.a(paramStackTraceElement.getFileName()));
      }
      if ((!paramStackTraceElement.isNativeMethod()) && (paramStackTraceElement.getLineNumber() > 0)) {
        paramaf.a(4, paramStackTraceElement.getLineNumber());
      }
      if (!paramBoolean) {
        break label145;
      }
    }
    label145:
    for (paramInt = j;; paramInt = 0)
    {
      paramaf.b(5, paramInt);
      return;
      paramaf.a(1, 0L);
      break;
    }
  }
  
  private void a(af paramaf, ab paramab)
  {
    if (paramab != null)
    {
      paramaf.i(6, 2);
      paramaf.k(a(paramab));
      paramaf.a(1, paramab);
    }
  }
  
  private void a(af paramaf, Thread paramThread, Throwable paramThrowable)
  {
    paramaf.i(1, 2);
    paramaf.k(a(paramThread, paramThrowable));
    a(paramaf, paramThread, e, 4, true);
    int k = c.length;
    int j = 0;
    while (j < k)
    {
      a(paramaf, c[j], (StackTraceElement[])d.get(j), 0, false);
      j += 1;
    }
    a(paramaf, paramThrowable, 1, 2);
    paramaf.i(3, 2);
    paramaf.k(c());
    paramaf.a(1, a);
    paramaf.a(2, a);
    paramaf.a(3, 0L);
    paramaf.i(4, 2);
    paramaf.k(b());
    paramaf.a(1, 0L);
    paramaf.a(2, 0L);
    paramaf.a(3, g);
    if (h != null) {
      paramaf.a(4, h);
    }
  }
  
  private void a(af paramaf, Thread paramThread, Throwable paramThrowable, int paramInt, Map<String, String> paramMap)
  {
    paramaf.i(3, 2);
    paramaf.k(a(paramThread, paramThrowable, paramInt, paramMap));
    a(paramaf, paramThread, paramThrowable);
    if ((paramMap != null) && (!paramMap.isEmpty())) {
      a(paramaf, paramMap);
    }
    if (b != null) {
      if (b.importance == 100) {
        break label86;
      }
    }
    label86:
    for (boolean bool = true;; bool = false)
    {
      paramaf.a(3, bool);
      paramaf.b(4, paramInt);
      return;
    }
  }
  
  private void a(af paramaf, Thread paramThread, StackTraceElement[] paramArrayOfStackTraceElement, int paramInt, boolean paramBoolean)
  {
    paramaf.i(1, 2);
    paramaf.k(a(paramThread, paramArrayOfStackTraceElement, paramInt, paramBoolean));
    paramaf.a(1, ab.a(paramThread.getName()));
    paramaf.b(2, paramInt);
    int j = paramArrayOfStackTraceElement.length;
    paramInt = 0;
    while (paramInt < j)
    {
      a(paramaf, 3, paramArrayOfStackTraceElement[paramInt], paramBoolean);
      paramInt += 1;
    }
  }
  
  private void a(af paramaf, Throwable paramThrowable, int paramInt1, int paramInt2)
  {
    int j = 0;
    paramaf.i(paramInt2, 2);
    paramaf.k(a(paramThrowable, 1));
    paramaf.a(1, ab.a(paramThrowable.getClass().getName()));
    Object localObject = paramThrowable.getLocalizedMessage();
    if (localObject != null) {
      paramaf.a(3, ab.a((String)localObject));
    }
    localObject = paramThrowable.getStackTrace();
    int k = localObject.length;
    paramInt2 = 0;
    while (paramInt2 < k)
    {
      a(paramaf, 4, localObject[paramInt2], true);
      paramInt2 += 1;
    }
    localObject = paramThrowable.getCause();
    if (localObject != null)
    {
      paramInt2 = j;
      paramThrowable = (Throwable)localObject;
      if (paramInt1 < i) {
        a(paramaf, (Throwable)localObject, paramInt1 + 1, 6);
      }
    }
    else
    {
      return;
    }
    while (paramThrowable != null)
    {
      paramThrowable = paramThrowable.getCause();
      paramInt2 += 1;
    }
    paramaf.b(7, paramInt2);
  }
  
  private void a(af paramaf, Map<String, String> paramMap)
  {
    Iterator localIterator = paramMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      paramMap = (Map.Entry)localIterator.next();
      paramaf.i(2, 2);
      paramaf.k(a((String)paramMap.getKey(), (String)paramMap.getValue()));
      paramaf.a(1, ab.a((String)paramMap.getKey()));
      String str = (String)paramMap.getValue();
      paramMap = str;
      if (str == null) {
        paramMap = "";
      }
      paramaf.a(2, ab.a(paramMap));
    }
  }
  
  private int b()
  {
    int k = 0 + af.b(1, 0L) + af.b(2, 0L) + af.b(3, g);
    int j = k;
    if (h != null) {
      j = k + af.b(4, h);
    }
    return j;
  }
  
  private int c()
  {
    return 0 + af.b(1, a) + af.b(2, a) + af.b(3, 0L);
  }
  
  public void a(af paramaf, long paramLong1, Thread paramThread, Throwable paramThrowable, String paramString, Thread[] paramArrayOfThread, float paramFloat, int paramInt1, boolean paramBoolean, int paramInt2, long paramLong2, long paramLong3, ActivityManager.RunningAppProcessInfo paramRunningAppProcessInfo, List<StackTraceElement[]> paramList, StackTraceElement[] paramArrayOfStackTraceElement, Iu paramIu, Map<String, String> paramMap)
  {
    b = paramRunningAppProcessInfo;
    d = paramList;
    e = paramArrayOfStackTraceElement;
    c = paramArrayOfThread;
    paramArrayOfThread = aV.a(paramIu);
    if (paramArrayOfThread == null) {
      HA.g();
    }
    Ie.a(paramIu, "There was a problem closing the Crashlytics log file.");
    paramaf.i(10, 2);
    paramaf.k(a(paramThread, paramThrowable, paramString, paramLong1, paramMap, paramFloat, paramInt1, paramBoolean, paramInt2, paramLong2, paramLong3, paramArrayOfThread));
    paramaf.a(1, paramLong1);
    paramaf.a(2, ab.a(paramString));
    a(paramaf, paramThread, paramThrowable, paramInt2, paramMap);
    a(paramaf, paramFloat, paramInt1, paramBoolean, paramInt2, paramLong2, paramLong3);
    a(paramaf, paramArrayOfThread);
  }
  
  public void a(af paramaf, String paramString1, int paramInt1, String paramString2, int paramInt2, long paramLong1, long paramLong2, boolean paramBoolean, Map<Ir, String> paramMap, int paramInt3, String paramString3, String paramString4)
  {
    paramString1 = ab.a(paramString1);
    ab localab = a(paramString2);
    paramString2 = a(paramString4);
    paramString3 = a(paramString3);
    paramaf.i(9, 2);
    paramaf.k(a(paramInt1, paramString1, localab, paramInt2, paramLong1, paramLong2, paramBoolean, paramMap, paramInt3, paramString3, paramString2));
    paramaf.a(1, paramString1);
    paramaf.c(3, paramInt1);
    paramaf.a(4, localab);
    paramaf.b(5, paramInt2);
    paramaf.a(6, paramLong1);
    paramaf.a(7, paramLong2);
    paramaf.a(10, paramBoolean);
    paramString1 = paramMap.entrySet().iterator();
    while (paramString1.hasNext())
    {
      paramMap = (Map.Entry)paramString1.next();
      paramaf.i(11, 2);
      paramaf.k(a((Ir)paramMap.getKey(), (String)paramMap.getValue()));
      paramaf.c(1, getKeyh);
      paramaf.a(2, ab.a((String)paramMap.getValue()));
    }
    paramaf.b(12, paramInt3);
    if (paramString3 != null) {
      paramaf.a(13, paramString3);
    }
    if (paramString2 != null) {
      paramaf.a(14, paramString2);
    }
  }
  
  public void a(af paramaf, String paramString1, String paramString2, long paramLong)
  {
    paramaf.a(1, ab.a(paramString2));
    paramaf.a(2, ab.a(paramString1));
    paramaf.a(3, paramLong);
  }
  
  public void a(af paramaf, String paramString1, String paramString2, String paramString3)
  {
    Object localObject = paramString1;
    if (paramString1 == null) {
      localObject = "";
    }
    paramString1 = ab.a((String)localObject);
    localObject = a(paramString2);
    ab localab = a(paramString3);
    int k = 0 + af.b(1, paramString1);
    int j = k;
    if (paramString2 != null) {
      j = k + af.b(2, (ab)localObject);
    }
    k = j;
    if (paramString3 != null) {
      k = j + af.b(3, localab);
    }
    paramaf.i(6, 2);
    paramaf.k(k);
    paramaf.a(1, paramString1);
    if (paramString2 != null) {
      paramaf.a(2, (ab)localObject);
    }
    if (paramString3 != null) {
      paramaf.a(3, localab);
    }
  }
  
  public void a(af paramaf, String paramString1, String paramString2, String paramString3, String paramString4, int paramInt)
  {
    paramString1 = ab.a(paramString1);
    paramString2 = ab.a(paramString2);
    paramString3 = ab.a(paramString3);
    paramString4 = ab.a(paramString4);
    paramaf.i(7, 2);
    paramaf.k(a(paramString1, paramString2, paramString3, paramString4, paramInt));
    paramaf.a(1, paramString1);
    paramaf.a(2, paramString2);
    paramaf.a(3, paramString3);
    paramaf.i(5, 2);
    paramaf.k(a());
    paramaf.a(1, new Ic().a(f));
    paramaf.a(6, paramString4);
    paramaf.c(10, paramInt);
  }
  
  public void a(af paramaf, boolean paramBoolean)
  {
    ab localab1 = ab.a(Build.VERSION.RELEASE);
    ab localab2 = ab.a(Build.VERSION.CODENAME);
    paramaf.i(8, 2);
    paramaf.k(a(localab1, localab2, paramBoolean));
    paramaf.c(1, 3);
    paramaf.a(2, localab1);
    paramaf.a(3, localab2);
    paramaf.a(4, paramBoolean);
  }
}

/* Location:
 * Qualified Name:     bo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */