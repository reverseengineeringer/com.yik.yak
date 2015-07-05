import java.io.IOException;

public class qr
  extends IOException
{
  private qy a = null;
  
  public qr(String paramString)
  {
    super(paramString);
  }
  
  static qr b()
  {
    return new qr("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either than the input has been truncated or that an embedded message misreported its own length.");
  }
  
  static qr c()
  {
    return new qr("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
  }
  
  static qr d()
  {
    return new qr("CodedInputStream encountered a malformed varint.");
  }
  
  static qr e()
  {
    return new qr("Protocol message contained an invalid tag (zero).");
  }
  
  static qr f()
  {
    return new qr("Protocol message end-group tag did not match expected tag.");
  }
  
  static qr g()
  {
    return new qr("Protocol message tag had invalid wire type.");
  }
  
  static qr h()
  {
    return new qr("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
  }
  
  static qr i()
  {
    return new qr("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
  }
  
  static qr j()
  {
    return new qr("Protocol message had invalid UTF-8.");
  }
  
  public qr a(qy paramqy)
  {
    a = paramqy;
    return this;
  }
  
  public qy a()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     qr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */