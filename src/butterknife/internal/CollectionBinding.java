package butterknife.internal;

final class CollectionBinding
  implements Binding
{
  private final CollectionBinding.Kind kind;
  private final String name;
  private final boolean required;
  private final String type;
  
  CollectionBinding(String paramString1, String paramString2, CollectionBinding.Kind paramKind, boolean paramBoolean)
  {
    name = paramString1;
    type = paramString2;
    kind = paramKind;
    required = paramBoolean;
  }
  
  public String getDescription()
  {
    return "field '" + name + "'";
  }
  
  public CollectionBinding.Kind getKind()
  {
    return kind;
  }
  
  public String getName()
  {
    return name;
  }
  
  public String getType()
  {
    return type;
  }
  
  public boolean isRequired()
  {
    return required;
  }
}

/* Location:
 * Qualified Name:     butterknife.internal.CollectionBinding
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */