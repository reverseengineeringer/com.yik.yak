public class ad
{
  private ad(R paramR) {}
  
  public R<TResult> a()
  {
    return a;
  }
  
  public boolean a(Exception paramException)
  {
    synchronized (R.a(a))
    {
      if (R.b(a)) {
        return false;
      }
      R.a(a, true);
      R.a(a, paramException);
      R.a(a).notifyAll();
      R.c(a);
      return true;
    }
  }
  
  public boolean a(TResult paramTResult)
  {
    synchronized (R.a(a))
    {
      if (R.b(a)) {
        return false;
      }
      R.a(a, true);
      R.a(a, paramTResult);
      R.a(a).notifyAll();
      R.c(a);
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
    synchronized (R.a(a))
    {
      if (R.b(a)) {
        return false;
      }
      R.a(a, true);
      R.b(a, true);
      R.a(a).notifyAll();
      R.c(a);
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
 * Qualified Name:     ad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */