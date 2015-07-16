import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.locks.ReentrantLock;

public class pu
{
  public static final Object a = new Object();
  private final ConcurrentHashMap<pv, Integer> b = new ConcurrentHashMap();
  private final Map<Object, Object> c = new HashMap();
  private final ReentrantLock d = new ReentrantLock();
  private final LinkedList<Map<Object, Object>> e = new LinkedList();
  
  void a(pv parampv)
  {
    b.put(parampv, Integer.valueOf(0));
  }
}

/* Location:
 * Qualified Name:     pu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */