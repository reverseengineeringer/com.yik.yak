package butterknife.internal;

final class Parameter
{
  static final Parameter[] NONE = new Parameter[0];
  private final int listenerPosition;
  private final String type;
  
  Parameter(int paramInt, String paramString)
  {
    listenerPosition = paramInt;
    type = paramString;
  }
  
  int getListenerPosition()
  {
    return listenerPosition;
  }
  
  String getType()
  {
    return type;
  }
  
  public boolean requiresCast(String paramString)
  {
    return !type.equals(paramString);
  }
}

/* Location:
 * Qualified Name:     butterknife.internal.Parameter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */