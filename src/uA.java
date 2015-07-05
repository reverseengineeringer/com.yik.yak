import java.io.BufferedOutputStream;
import java.net.Socket;
import java.net.URI;
import java.nio.ByteBuffer;

class ua
{
  private static final ByteBuffer d = ByteBuffer.allocate(0);
  private final uc a;
  private final ud b;
  private final URI c;
  
  public ua(URI paramURI, uc paramuc, Socket paramSocket)
  {
    a = paramuc;
    c = paramURI;
    try
    {
      b = new ud(this, paramURI, 5000, paramSocket);
      b.c();
      return;
    }
    catch (InterruptedException paramURI)
    {
      throw new ue(this, paramURI);
    }
  }
  
  public boolean a()
  {
    return (!b.e()) && (!b.f()) && (!b.d());
  }
  
  public BufferedOutputStream b()
  {
    return new BufferedOutputStream(new uf(this, null));
  }
}

/* Location:
 * Qualified Name:     ua
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */