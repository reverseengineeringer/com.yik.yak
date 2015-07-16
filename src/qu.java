import java.io.IOException;

public class qu
  extends IOException
{
  private qB a = null;
  
  public qu(String paramString)
  {
    super(paramString);
  }
  
  static qu b()
  {
    return new qu("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either than the input has been truncated or that an embedded message misreported its own length.");
  }
  
  static qu c()
  {
    return new qu("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
  }
  
  static qu d()
  {
    return new qu("CodedInputStream encountered a malformed varint.");
  }
  
  static qu e()
  {
    return new qu("Protocol message contained an invalid tag (zero).");
  }
  
  static qu f()
  {
    return new qu("Protocol message end-group tag did not match expected tag.");
  }
  
  static qu g()
  {
    return new qu("Protocol message tag had invalid wire type.");
  }
  
  static qu h()
  {
    return new qu("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
  }
  
  static qu i()
  {
    return new qu("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
  }
  
  static qu j()
  {
    return new qu("Protocol message had invalid UTF-8.");
  }
  
  public qB a()
  {
    return a;
  }
  
  public qu a(qB paramqB)
  {
    a = paramqB;
    return this;
  }
}

/* Location:
 * Qualified Name:     qu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */