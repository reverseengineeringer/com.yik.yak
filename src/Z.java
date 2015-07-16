public class Z
{
  private Z(N paramN) {}
  
  public N<TResult> a()
  {
    return a;
  }
  
  public boolean a(Exception paramException)
  {
    synchronized (N.a(a))
    {
      if (N.b(a)) {
        return false;
      }
      N.a(a, true);
      N.a(a, paramException);
      N.a(a).notifyAll();
      N.c(a);
      return true;
    }
  }
  
  public boolean a(TResult paramTResult)
  {
    synchronized (N.a(a))
    {
      if (N.b(a)) {
        return false;
      }
      N.a(a, true);
      N.a(a, paramTResult);
      N.a(a).notifyAll();
      N.c(a);
      return true;
    }
  }
  
  public void b(Exception paramException)
  {
    if (!a(paramException)) {
      throw new IllegalStateException("Cannot set the error on a completed task.");
    }
  }
  
  public void b(TResult paramTResult)
  {
    if (!a(paramTResult)) {
      throw new IllegalStateException("Cannot set the result of a completed task.");
    }
  }
  
  public boolean b()
  {
    synchronized (N.a(a))
    {
      if (N.b(a)) {
        return false;
      }
      N.a(a, true);
      N.b(a, true);
      N.a(a).notifyAll();
      N.c(a);
      return true;
    }
  }
  
  public void c()
  {
    if (!b()) {
      throw new IllegalStateException("Cannot cancel a completed task.");
    }
  }
}

/* Location:
 * Qualified Name:     Z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */