import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.Context;
import android.os.Build.VERSION;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class bs
{
  private static final af a = af.a("0");
  private ActivityManager.RunningAppProcessInfo b;
  private Thread[] c;
  private List<StackTraceElement[]> d;
  private StackTraceElement[] e;
  private final Context f;
  private final af g;
  private final af h;
  private final int i = 8;
  
  public bs(Context paramContext, String paramString1, String paramString2)
  {
    f = paramContext;
    g = af.a(paramString2);
    if (paramString1 == null) {}
    for (paramContext = null;; paramContext = af.a(paramString1.replace("-", "")))
    {
      h = paramContext;
      return;
    }
  }
  
  private int a()
  {
    return 0 + aj.b(1, af.a(new Hu().a(f)));
  }
  
  private int a(float paramFloat, int paramInt1, boolean paramBoolean, int paramInt2, long paramLong1, long paramLong2)
  {
    return 0 + aj.b(1, paramFloat) + aj.h(2, paramInt1) + aj.b(3, paramBoolean) + aj.f(4, paramInt2) + aj.b(5, paramLong1) + aj.b(6, paramLong2);
  }
  
  private int a(int paramInt1, af paramaf1, af paramaf2, int paramInt2, long paramLong1, long paramLong2, boolean paramBoolean, Map<HJ, String> paramMap, int paramInt3, af paramaf3, af paramaf4)
  {
    int j = aj.b(1, paramaf1);
    int k = aj.g(3, paramInt1);
    if (paramaf2 == null) {}
    for (paramInt1 = 0;; paramInt1 = aj.b(4, paramaf2))
    {
      paramInt1 = paramInt1 + (k + (0 + j)) + aj.f(5, paramInt2) + aj.b(6, paramLong1) + aj.b(7, paramLong2) + aj.b(10, paramBoolean);
      if (paramMap == null) {
        break;
      }
      paramaf1 = paramMap.entrySet().iterator();
      for (;;)
      {
        paramInt2 = paramInt1;
        if (!paramaf1.hasNext()) {
          break;
        }
        paramaf2 = (Map.Entry)paramaf1.next();
        paramInt2 = a((HJ)paramaf2.getKey(), (String)paramaf2.getValue());
        paramInt1 = paramInt2 + (aj.j(11) + aj.l(paramInt2)) + paramInt1;
      }
    }
    paramInt2 = paramInt1;
    j = aj.f(12, paramInt3);
    if (paramaf3 == null)
    {
      paramInt1 = 0;
      if (paramaf4 != null) {
        break label203;
      }
    }
    label203:
    for (paramInt3 = 0;; paramInt3 = aj.b(14, paramaf4))
    {
      return paramInt3 + (paramInt2 + j + paramInt1);
      paramInt1 = aj.b(13, paramaf3);
      break;
    }
  }
  
  private int a(HJ paramHJ, String paramString)
  {
    return aj.g(1, h) + aj.b(2, af.a(paramString));
  }
  
  private int a(af paramaf)
  {
    return aj.b(1, paramaf);
  }
  
  private int a(af paramaf1, af paramaf2, af paramaf3, af paramaf4, int paramInt)
  {
    int j = aj.b(1, paramaf1);
    int k = aj.b(2, paramaf2);
    int m = aj.b(3, paramaf3);
    int n = a();
    return 0 + j + k + m + (n + (aj.j(5) + aj.l(n))) + aj.b(6, paramaf4) + aj.g(10, paramInt);
  }
  
  private int a(af paramaf1, af paramaf2, boolean paramBoolean)
  {
    return 0 + aj.g(1, 3) + aj.b(2, paramaf1) + aj.b(3, paramaf2) + aj.b(4, paramBoolean);
  }
  
  private int a(StackTraceElement paramStackTraceElement, boolean paramBoolean)
  {
    int j;
    int k;
    if (paramStackTraceElement.isNativeMethod())
    {
      j = aj.b(1, Math.max(paramStackTraceElement.getLineNumber(), 0)) + 0;
      k = j + aj.b(2, af.a(paramStackTraceElement.getClassName() + "." + paramStackTraceElement.getMethodName()));
      j = k;
      if (paramStackTraceElement.getFileName() != null) {
        j = k + aj.b(3, af.a(paramStackTraceElement.getFileName()));
      }
      if ((paramStackTraceElement.isNativeMethod()) || (paramStackTraceElement.getLineNumber() <= 0)) {
        break label147;
      }
      j += aj.b(4, paramStackTraceElement.getLineNumber());
    }
    label147:
    for (;;)
    {
      if (paramBoolean) {}
      for (k = 2;; k = 0)
      {
        return aj.f(5, k) + j;
        j = aj.b(1, 0L) + 0;
        break;
      }
    }
  }
  
  private int a(String paramString1, String paramString2)
  {
    int j = aj.b(1, af.a(paramString1));
    paramString1 = paramString2;
    if (paramString2 == null) {
      paramString1 = "";
    }
    return j + aj.b(2, af.a(paramString1));
  }
  
  private int a(Thread paramThread, Throwable paramThrowable)
  {
    int j = a(paramThread, e, 4, true);
    int n = aj.j(1);
    int i1 = aj.l(j);
    int m = c.length;
    int k = 0;
    j = j + (n + i1) + 0;
    while (k < m)
    {
      n = a(c[k], (StackTraceElement[])d.get(k), 0, false);
      j += n + (aj.j(1) + aj.l(n));
      k += 1;
    }
    k = a(paramThrowable, 1);
    m = aj.j(2);
    n = aj.l(k);
    i1 = c();
    int i2 = aj.j(3);
    int i3 = aj.l(i1);
    int i4 = b();
    return k + (m + n) + j + (i1 + (i2 + i3)) + (i4 + (aj.j(3) + aj.l(i4)));
  }
  
  private int a(Thread paramThread, Throwable paramThrowable, int paramInt, Map<String, String> paramMap)
  {
    int j = a(paramThread, paramThrowable);
    j = j + (aj.j(1) + aj.l(j)) + 0;
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
        j = k + (aj.j(2) + aj.l(k)) + j;
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
      j = k + aj.b(3, bool);
      return aj.f(4, paramInt) + j;
    }
  }
  
  private int a(Thread paramThread, Throwable paramThrowable, String paramString, long paramLong1, Map<String, String> paramMap, float paramFloat, int paramInt1, boolean paramBoolean, int paramInt2, long paramLong2, long paramLong3, af paramaf)
  {
    int j = aj.b(1, paramLong1);
    int k = aj.b(2, af.a(paramString));
    int m = a(paramThread, paramThrowable, paramInt2, paramMap);
    int n = aj.j(3);
    int i1 = aj.l(m);
    paramInt1 = a(paramFloat, paramInt1, paramBoolean, paramInt2, paramLong2, paramLong3);
    paramInt2 = 0 + j + k + (m + (n + i1)) + (paramInt1 + (aj.j(5) + aj.l(paramInt1)));
    paramInt1 = paramInt2;
    if (paramaf != null)
    {
      paramInt1 = a(paramaf);
      paramInt1 = paramInt2 + (paramInt1 + (aj.j(6) + aj.l(paramInt1)));
    }
    return paramInt1;
  }
  
  private int a(Thread paramThread, StackTraceElement[] paramArrayOfStackTraceElement, int paramInt, boolean paramBoolean)
  {
    int j = aj.b(1, af.a(paramThread.getName()));
    j = aj.f(2, paramInt) + j;
    int k = paramArrayOfStackTraceElement.length;
    paramInt = 0;
    while (paramInt < k)
    {
      int m = a(paramArrayOfStackTraceElement[paramInt], paramBoolean);
      j += m + (aj.j(3) + aj.l(m));
      paramInt += 1;
    }
    return j;
  }
  
  private int a(Throwable paramThrowable, int paramInt)
  {
    int m = 0;
    int k = aj.b(1, af.a(paramThrowable.getClass().getName())) + 0;
    Object localObject = paramThrowable.getLocalizedMessage();
    int j = k;
    if (localObject != null) {
      j = k + aj.b(3, af.a((String)localObject));
    }
    localObject = paramThrowable.getStackTrace();
    int n = localObject.length;
    k = 0;
    while (k < n)
    {
      int i1 = a(localObject[k], true);
      int i2 = aj.j(4);
      int i3 = aj.l(i1);
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
        k = j + (paramInt + (aj.j(6) + aj.l(paramInt)));
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
    return j + aj.f(7, k);
  }
  
  private af a(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    return af.a(paramString);
  }
  
  private void a(aj paramaj, float paramFloat, int paramInt1, boolean paramBoolean, int paramInt2, long paramLong1, long paramLong2)
  {
    paramaj.i(5, 2);
    paramaj.k(a(paramFloat, paramInt1, paramBoolean, paramInt2, paramLong1, paramLong2));
    paramaj.a(1, paramFloat);
    paramaj.d(2, paramInt1);
    paramaj.a(3, paramBoolean);
    paramaj.b(4, paramInt2);
    paramaj.a(5, paramLong1);
    paramaj.a(6, paramLong2);
  }
  
  private void a(aj paramaj, int paramInt, StackTraceElement paramStackTraceElement, boolean paramBoolean)
  {
    int j = 4;
    paramaj.i(paramInt, 2);
    paramaj.k(a(paramStackTraceElement, paramBoolean));
    if (paramStackTraceElement.isNativeMethod())
    {
      paramaj.a(1, Math.max(paramStackTraceElement.getLineNumber(), 0));
      paramaj.a(2, af.a(paramStackTraceElement.getClassName() + "." + paramStackTraceElement.getMethodName()));
      if (paramStackTraceElement.getFileName() != null) {
        paramaj.a(3, af.a(paramStackTraceElement.getFileName()));
      }
      if ((!paramStackTraceElement.isNativeMethod()) && (paramStackTraceElement.getLineNumber() > 0)) {
        paramaj.a(4, paramStackTraceElement.getLineNumber());
      }
      if (!paramBoolean) {
        break label145;
      }
    }
    label145:
    for (paramInt = j;; paramInt = 0)
    {
      paramaj.b(5, paramInt);
      return;
      paramaj.a(1, 0L);
      break;
    }
  }
  
  private void a(aj paramaj, af paramaf)
  {
    if (paramaf != null)
    {
      paramaj.i(6, 2);
      paramaj.k(a(paramaf));
      paramaj.a(1, paramaf);
    }
  }
  
  private void a(aj paramaj, Thread paramThread, Throwable paramThrowable)
  {
    paramaj.i(1, 2);
    paramaj.k(a(paramThread, paramThrowable));
    a(paramaj, paramThread, e, 4, true);
    int k = c.length;
    int j = 0;
    while (j < k)
    {
      a(paramaj, c[j], (StackTraceElement[])d.get(j), 0, false);
      j += 1;
    }
    a(paramaj, paramThrowable, 1, 2);
    paramaj.i(3, 2);
    paramaj.k(c());
    paramaj.a(1, a);
    paramaj.a(2, a);
    paramaj.a(3, 0L);
    paramaj.i(4, 2);
    paramaj.k(b());
    paramaj.a(1, 0L);
    paramaj.a(2, 0L);
    paramaj.a(3, g);
    if (h != null) {
      paramaj.a(4, h);
    }
  }
  
  private void a(aj paramaj, Thread paramThread, Throwable paramThrowable, int paramInt, Map<String, String> paramMap)
  {
    paramaj.i(3, 2);
    paramaj.k(a(paramThread, paramThrowable, paramInt, paramMap));
    a(paramaj, paramThread, paramThrowable);
    if ((paramMap != null) && (!paramMap.isEmpty())) {
      a(paramaj, paramMap);
    }
    if (b != null) {
      if (b.importance == 100) {
        break label86;
      }
    }
    label86:
    for (boolean bool = true;; bool = false)
    {
      paramaj.a(3, bool);
      paramaj.b(4, paramInt);
      return;
    }
  }
  
  private void a(aj paramaj, Thread paramThread, StackTraceElement[] paramArrayOfStackTraceElement, int paramInt, boolean paramBoolean)
  {
    paramaj.i(1, 2);
    paramaj.k(a(paramThread, paramArrayOfStackTraceElement, paramInt, paramBoolean));
    paramaj.a(1, af.a(paramThread.getName()));
    paramaj.b(2, paramInt);
    int j = paramArrayOfStackTraceElement.length;
    paramInt = 0;
    while (paramInt < j)
    {
      a(paramaj, 3, paramArrayOfStackTraceElement[paramInt], paramBoolean);
      paramInt += 1;
    }
  }
  
  private void a(aj paramaj, Throwable paramThrowable, int paramInt1, int paramInt2)
  {
    int j = 0;
    paramaj.i(paramInt2, 2);
    paramaj.k(a(paramThrowable, 1));
    paramaj.a(1, af.a(paramThrowable.getClass().getName()));
    Object localObject = paramThrowable.getLocalizedMessage();
    if (localObject != null) {
      paramaj.a(3, af.a((String)localObject));
    }
    localObject = paramThrowable.getStackTrace();
    int k = localObject.length;
    paramInt2 = 0;
    while (paramInt2 < k)
    {
      a(paramaj, 4, localObject[paramInt2], true);
      paramInt2 += 1;
    }
    localObject = paramThrowable.getCause();
    if (localObject != null)
    {
      paramInt2 = j;
      paramThrowable = (Throwable)localObject;
      if (paramInt1 < i) {
        a(paramaj, (Throwable)localObject, paramInt1 + 1, 6);
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
    paramaj.b(7, paramInt2);
  }
  
  private void a(aj paramaj, Map<String, String> paramMap)
  {
    Iterator localIterator = paramMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      paramMap = (Map.Entry)localIterator.next();
      paramaj.i(2, 2);
      paramaj.k(a((String)paramMap.getKey(), (String)paramMap.getValue()));
      paramaj.a(1, af.a((String)paramMap.getKey()));
      String str = (String)paramMap.getValue();
      paramMap = str;
      if (str == null) {
        paramMap = "";
      }
      paramaj.a(2, af.a(paramMap));
    }
  }
  
  private int b()
  {
    int k = 0 + aj.b(1, 0L) + aj.b(2, 0L) + aj.b(3, g);
    int j = k;
    if (h != null) {
      j = k + aj.b(4, h);
    }
    return j;
  }
  
  private int c()
  {
    return 0 + aj.b(1, a) + aj.b(2, a) + aj.b(3, 0L);
  }
  
  public void a(aj paramaj, long paramLong1, Thread paramThread, Throwable paramThrowable, String paramString, Thread[] paramArrayOfThread, float paramFloat, int paramInt1, boolean paramBoolean, int paramInt2, long paramLong2, long paramLong3, ActivityManager.RunningAppProcessInfo paramRunningAppProcessInfo, List<StackTraceElement[]> paramList, StackTraceElement[] paramArrayOfStackTraceElement, HM paramHM, Map<String, String> paramMap)
  {
    b = paramRunningAppProcessInfo;
    d = paramList;
    e = paramArrayOfStackTraceElement;
    c = paramArrayOfThread;
    paramArrayOfThread = aZ.a(paramHM);
    if (paramArrayOfThread == null) {
      GS.g();
    }
    Hw.a(paramHM, "There was a problem closing the Crashlytics log file.");
    paramaj.i(10, 2);
    paramaj.k(a(paramThread, paramThrowable, paramString, paramLong1, paramMap, paramFloat, paramInt1, paramBoolean, paramInt2, paramLong2, paramLong3, paramArrayOfThread));
    paramaj.a(1, paramLong1);
    paramaj.a(2, af.a(paramString));
    a(paramaj, paramThread, paramThrowable, paramInt2, paramMap);
    a(paramaj, paramFloat, paramInt1, paramBoolean, paramInt2, paramLong2, paramLong3);
    a(paramaj, paramArrayOfThread);
  }
  
  public void a(aj paramaj, String paramString1, int paramInt1, String paramString2, int paramInt2, long paramLong1, long paramLong2, boolean paramBoolean, Map<HJ, String> paramMap, int paramInt3, String paramString3, String paramString4)
  {
    paramString1 = af.a(paramString1);
    af localaf = a(paramString2);
    paramString2 = a(paramString4);
    paramString3 = a(paramString3);
    paramaj.i(9, 2);
    paramaj.k(a(paramInt1, paramString1, localaf, paramInt2, paramLong1, paramLong2, paramBoolean, paramMap, paramInt3, paramString3, paramString2));
    paramaj.a(1, paramString1);
    paramaj.c(3, paramInt1);
    paramaj.a(4, localaf);
    paramaj.b(5, paramInt2);
    paramaj.a(6, paramLong1);
    paramaj.a(7, paramLong2);
    paramaj.a(10, paramBoolean);
    paramString1 = paramMap.entrySet().iterator();
    while (paramString1.hasNext())
    {
      paramMap = (Map.Entry)paramString1.next();
      paramaj.i(11, 2);
      paramaj.k(a((HJ)paramMap.getKey(), (String)paramMap.getValue()));
      paramaj.c(1, getKeyh);
      paramaj.a(2, af.a((String)paramMap.getValue()));
    }
    paramaj.b(12, paramInt3);
    if (paramString3 != null) {
      paramaj.a(13, paramString3);
    }
    if (paramString2 != null) {
      paramaj.a(14, paramString2);
    }
  }
  
  public void a(aj paramaj, String paramString1, String paramString2, long paramLong)
  {
    paramaj.a(1, af.a(paramString2));
    paramaj.a(2, af.a(paramString1));
    paramaj.a(3, paramLong);
  }
  
  public void a(aj paramaj, String paramString1, String paramString2, String paramString3)
  {
    Object localObject = paramString1;
    if (paramString1 == null) {
      localObject = "";
    }
    paramString1 = af.a((String)localObject);
    localObject = a(paramString2);
    af localaf = a(paramString3);
    int k = 0 + aj.b(1, paramString1);
    int j = k;
    if (paramString2 != null) {
      j = k + aj.b(2, (af)localObject);
    }
    k = j;
    if (paramString3 != null) {
      k = j + aj.b(3, localaf);
    }
    paramaj.i(6, 2);
    paramaj.k(k);
    paramaj.a(1, paramString1);
    if (paramString2 != null) {
      paramaj.a(2, (af)localObject);
    }
    if (paramString3 != null) {
      paramaj.a(3, localaf);
    }
  }
  
  public void a(aj paramaj, String paramString1, String paramString2, String paramString3, String paramString4, int paramInt)
  {
    paramString1 = af.a(paramString1);
    paramString2 = af.a(paramString2);
    paramString3 = af.a(paramString3);
    paramString4 = af.a(paramString4);
    paramaj.i(7, 2);
    paramaj.k(a(paramString1, paramString2, paramString3, paramString4, paramInt));
    paramaj.a(1, paramString1);
    paramaj.a(2, paramString2);
    paramaj.a(3, paramString3);
    paramaj.i(5, 2);
    paramaj.k(a());
    paramaj.a(1, new Hu().a(f));
    paramaj.a(6, paramString4);
    paramaj.c(10, paramInt);
  }
  
  public void a(aj paramaj, boolean paramBoolean)
  {
    af localaf1 = af.a(Build.VERSION.RELEASE);
    af localaf2 = af.a(Build.VERSION.CODENAME);
    paramaj.i(8, 2);
    paramaj.k(a(localaf1, localaf2, paramBoolean));
    paramaj.c(1, 3);
    paramaj.a(2, localaf1);
    paramaj.a(3, localaf2);
    paramaj.a(4, paramBoolean);
  }
}

/* Location:
 * Qualified Name:     bs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */