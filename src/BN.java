import java.util.Iterator;
import java.util.List;

class bn
  extends Id
{
  private final float b;
  
  bn(bl parambl, float paramFloat)
  {
    b = paramFloat;
  }
  
  private void b()
  {
    HA.g();
    new StringBuilder().append("Starting report processing in ").append(b).append(" second(s)...").toString();
    if (b > 0.0F) {}
    for (;;)
    {
      Object localObject2;
      try
      {
        Thread.sleep((b * 1000.0F));
        localObject2 = ah.f();
        az localaz = ((ah)localObject2).m();
        List localList = a.a();
        if (localaz.a()) {
          return;
        }
      }
      catch (InterruptedException localInterruptedException1)
      {
        Thread.currentThread().interrupt();
        return;
      }
      Object localObject1;
      if ((!localInterruptedException1.isEmpty()) && (!((ah)localObject2).x()))
      {
        HA.g();
        new StringBuilder().append("User declined to send. Removing ").append(localInterruptedException1.size()).append(" Report(s).").toString();
        localObject1 = localInterruptedException1.iterator();
        while (((Iterator)localObject1).hasNext()) {
          ((bk)((Iterator)localObject1).next()).a();
        }
      }
      else
      {
        int i = 0;
        while ((!((List)localObject1).isEmpty()) && (!ah.f().m().a()))
        {
          HA.g();
          new StringBuilder().append("Attempting to send ").append(((List)localObject1).size()).append(" report(s)").toString();
          localObject1 = ((List)localObject1).iterator();
          while (((Iterator)localObject1).hasNext())
          {
            localObject2 = (bk)((Iterator)localObject1).next();
            a.a((bk)localObject2);
          }
          localObject1 = a.a();
          if (!((List)localObject1).isEmpty())
          {
            long l = bl.b()[Math.min(i, bl.b().length - 1)];
            HA.g();
            new StringBuilder().append("Report submisson: scheduling delayed retry in ").append(l).append(" seconds").toString();
            try
            {
              Thread.sleep(l * 1000L);
              i += 1;
            }
            catch (InterruptedException localInterruptedException2)
            {
              Thread.currentThread().interrupt();
              return;
            }
          }
        }
      }
    }
  }
  
  public void a()
  {
    try
    {
      b();
      bl.a(a, null);
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        HA.g();
      }
    }
  }
}

/* Location:
 * Qualified Name:     bn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */