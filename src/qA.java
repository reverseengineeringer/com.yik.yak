import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public class qa
{
  private static volatile boolean a = false;
  private static final qa c = new qa(true);
  private final Map<qb, qm<?, ?>> b;
  
  qa()
  {
    b = new HashMap();
  }
  
  private qa(boolean paramBoolean)
  {
    b = Collections.emptyMap();
  }
  
  public static qa a()
  {
    return c;
  }
  
  public <ContainingType extends qy> qm<ContainingType, ?> a(ContainingType paramContainingType, int paramInt)
  {
    return (qm)b.get(new qb(paramContainingType, paramInt));
  }
}

/* Location:
 * Qualified Name:     qa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */