import java.util.Iterator;

class qU
  implements Iterator<String>
{
  Iterator<String> a = qS.a(b).iterator();
  
  qU(qS paramqS) {}
  
  public String a()
  {
    return (String)a.next();
  }
  
  public boolean hasNext()
  {
    return a.hasNext();
  }
  
  public void remove()
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:
 * Qualified Name:     qU
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */