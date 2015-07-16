import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Deque;

class qI
{
  private final Deque<pW> a = new ArrayDeque(qG.b().length);
  
  private int a(int paramInt)
  {
    int i = Arrays.binarySearch(qG.b(), paramInt);
    paramInt = i;
    if (i < 0) {
      paramInt = -(i + 1) - 1;
    }
    return paramInt;
  }
  
  private pW a(pW parampW1, pW parampW2)
  {
    a(parampW1);
    a(parampW2);
    for (parampW1 = (pW)a.pop(); !a.isEmpty(); parampW1 = new qG((pW)a.pop(), parampW1, null)) {}
    return parampW1;
  }
  
  private void a(pW parampW)
  {
    if (parampW.k())
    {
      b(parampW);
      return;
    }
    if ((parampW instanceof qG))
    {
      parampW = (qG)parampW;
      a(qG.a(parampW));
      a(qG.b(parampW));
      return;
    }
    throw new IllegalArgumentException("Has a new type of ByteString been created? Found " + parampW.getClass());
  }
  
  private void b(pW parampW)
  {
    int i = a(parampW.a());
    int j = qG.b()[(i + 1)];
    if ((a.isEmpty()) || (((pW)a.peek()).a() >= j))
    {
      a.push(parampW);
      return;
    }
    i = qG.b()[i];
    for (Object localObject = (pW)a.pop(); (!a.isEmpty()) && (((pW)a.peek()).a() < i); localObject = new qG((pW)a.pop(), (pW)localObject, null)) {}
    for (parampW = new qG((pW)localObject, parampW, null); !a.isEmpty(); parampW = new qG((pW)a.pop(), parampW, null))
    {
      i = a(parampW.a());
      i = qG.b()[(i + 1)];
      if (((pW)a.peek()).a() >= i) {
        break;
      }
    }
    a.push(parampW);
  }
}

/* Location:
 * Qualified Name:     qI
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */