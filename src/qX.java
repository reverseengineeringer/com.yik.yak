import java.util.Iterator;

class qX
  implements Iterator<String>
{
  Iterator<String> a = qV.a(b).iterator();
  
  qX(qV paramqV) {}
  
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
 * Qualified Name:     qX
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */