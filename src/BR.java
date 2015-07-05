import java.util.Iterator;
import java.util.List;

class br
  extends Hv
{
  private final float b;
  
  br(bp parambp, float paramFloat)
  {
    b = paramFloat;
  }
  
  private void b()
  {
    GS.g();
    new StringBuilder().append("Starting report processing in ").append(b).append(" second(s)...").toString();
    if (b > 0.0F) {}
    for (;;)
    {
      Object localObject2;
      try
      {
        Thread.sleep((b * 1000.0F));
        localObject2 = al.f();
        aD localaD = ((al)localObject2).m();
        List localList = a.a();
        if (localaD.a()) {
          return;
        }
      }
      catch (InterruptedException localInterruptedException1)
      {
        Thread.currentThread().interrupt();
        return;
      }
      Object localObject1;
      if ((!localInterruptedException1.isEmpty()) && (!((al)localObject2).x()))
      {
        GS.g();
        new StringBuilder().append("User declined to send. Removing ").append(localInterruptedException1.size()).append(" Report(s).").toString();
        localObject1 = localInterruptedException1.iterator();
        while (((Iterator)localObject1).hasNext()) {
          ((bo)((Iterator)localObject1).next()).a();
        }
      }
      else
      {
        int i = 0;
        while ((!((List)localObject1).isEmpty()) && (!al.f().m().a()))
        {
          GS.g();
          new StringBuilder().append("Attempting to send ").append(((List)localObject1).size()).append(" report(s)").toString();
          localObject1 = ((List)localObject1).iterator();
          while (((Iterator)localObject1).hasNext())
          {
            localObject2 = (bo)((Iterator)localObject1).next();
            a.a((bo)localObject2);
          }
          localObject1 = a.a();
          if (!((List)localObject1).isEmpty())
          {
            long l = bp.b()[Math.min(i, bp.b().length - 1)];
            GS.g();
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
      bp.a(a, null);
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        GS.g();
      }
    }
  }
}

/* Location:
 * Qualified Name:     br
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */