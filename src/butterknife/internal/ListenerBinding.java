package butterknife.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

final class ListenerBinding
  implements Binding
{
  private final String name;
  private final List<Parameter> parameters;
  private final boolean required;
  
  ListenerBinding(String paramString, List<Parameter> paramList, boolean paramBoolean)
  {
    name = paramString;
    parameters = Collections.unmodifiableList(new ArrayList(paramList));
    required = paramBoolean;
  }
  
  public String getDescription()
  {
    return "method '" + name + "'";
  }
  
  public String getName()
  {
    return name;
  }
  
  public List<Parameter> getParameters()
  {
    return parameters;
  }
  
  public boolean isRequired()
  {
    return required;
  }
}

/* Location:
 * Qualified Name:     butterknife.internal.ListenerBinding
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */