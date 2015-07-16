import java.net.InetSocketAddress;

public abstract class rq
  implements rs
{
  public String a(rn paramrn)
  {
    paramrn = paramrn.a();
    if (paramrn == null) {
      throw new rH("socket not bound");
    }
    StringBuffer localStringBuffer = new StringBuffer(90);
    localStringBuffer.append("<cross-domain-policy><allow-access-from domain=\"*\" to-ports=\"");
    localStringBuffer.append(paramrn.getPort());
    localStringBuffer.append("\" /></cross-domain-policy>\000");
    return localStringBuffer.toString();
  }
  
  public rZ a(rn paramrn, rw paramrw, rR paramrR)
  {
    return new rV();
  }
  
  public void a(rn paramrn, rO paramrO)
  {
    paramrO = new rQ(paramrO);
    paramrO.a(rP.e);
    paramrn.a(paramrO);
  }
}

/* Location:
 * Qualified Name:     rq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */