import java.io.BufferedOutputStream;
import java.net.Socket;
import java.net.URI;
import java.nio.ByteBuffer;

class um
{
  private static final ByteBuffer d = ByteBuffer.allocate(0);
  private final uo a;
  private final up b;
  private final URI c;
  
  public um(URI paramURI, uo paramuo, Socket paramSocket)
  {
    a = paramuo;
    c = paramURI;
    try
    {
      b = new up(this, paramURI, 5000, paramSocket);
      b.c();
      return;
    }
    catch (InterruptedException paramURI)
    {
      throw new uq(this, paramURI);
    }
  }
  
  public boolean a()
  {
    return (!b.e()) && (!b.f()) && (!b.d());
  }
  
  public BufferedOutputStream b()
  {
    return new BufferedOutputStream(new ur(this, null));
  }
}

/* Location:
 * Qualified Name:     um
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */