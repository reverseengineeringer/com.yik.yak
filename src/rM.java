import java.net.InetSocketAddress;

public abstract class rm
  implements ro
{
  public String a(rj paramrj)
  {
    paramrj = paramrj.a();
    if (paramrj == null) {
      throw new rD("socket not bound");
    }
    StringBuffer localStringBuffer = new StringBuffer(90);
    localStringBuffer.append("<cross-domain-policy><allow-access-from domain=\"*\" to-ports=\"");
    localStringBuffer.append(paramrj.getPort());
    localStringBuffer.append("\" /></cross-domain-policy>\000");
    return localStringBuffer.toString();
  }
  
  public rV a(rj paramrj, rs paramrs, rN paramrN)
  {
    return new rR();
  }
  
  public void a(rj paramrj, rK paramrK)
  {
    paramrK = new rM(paramrK);
    paramrK.a(rL.e);
    paramrj.a(paramrK);
  }
}

/* Location:
 * Qualified Name:     rm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */