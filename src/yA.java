import java.net.InetAddress;
import java.net.UnknownHostException;

final class ya
  implements xZ
{
  public InetAddress[] a(String paramString)
  {
    if (paramString == null) {
      throw new UnknownHostException("host == null");
    }
    return InetAddress.getAllByName(paramString);
  }
}

/* Location:
 * Qualified Name:     ya
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */