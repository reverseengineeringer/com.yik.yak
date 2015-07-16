import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public class qd
{
  private static volatile boolean a = false;
  private static final qd c = new qd(true);
  private final Map<qe, qp<?, ?>> b;
  
  qd()
  {
    b = new HashMap();
  }
  
  private qd(boolean paramBoolean)
  {
    b = Collections.emptyMap();
  }
  
  public static qd a()
  {
    return c;
  }
  
  public <ContainingType extends qB> qp<ContainingType, ?> a(ContainingType paramContainingType, int paramInt)
  {
    return (qp)b.get(new qe(paramContainingType, paramInt));
  }
}

/* Location:
 * Qualified Name:     qd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */