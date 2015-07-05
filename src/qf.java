import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Deque;

class qF
{
  private final Deque<pT> a = new ArrayDeque(qD.b().length);
  
  private int a(int paramInt)
  {
    int i = Arrays.binarySearch(qD.b(), paramInt);
    paramInt = i;
    if (i < 0) {
      paramInt = -(i + 1) - 1;
    }
    return paramInt;
  }
  
  private pT a(pT parampT1, pT parampT2)
  {
    a(parampT1);
    a(parampT2);
    for (parampT1 = (pT)a.pop(); !a.isEmpty(); parampT1 = new qD((pT)a.pop(), parampT1, null)) {}
    return parampT1;
  }
  
  private void a(pT parampT)
  {
    if (parampT.k())
    {
      b(parampT);
      return;
    }
    if ((parampT instanceof qD))
    {
      parampT = (qD)parampT;
      a(qD.a(parampT));
      a(qD.b(parampT));
      return;
    }
    throw new IllegalArgumentException("Has a new type of ByteString been created? Found " + parampT.getClass());
  }
  
  private void b(pT parampT)
  {
    int i = a(parampT.a());
    int j = qD.b()[(i + 1)];
    if ((a.isEmpty()) || (((pT)a.peek()).a() >= j))
    {
      a.push(parampT);
      return;
    }
    i = qD.b()[i];
    for (Object localObject = (pT)a.pop(); (!a.isEmpty()) && (((pT)a.peek()).a() < i); localObject = new qD((pT)a.pop(), (pT)localObject, null)) {}
    for (parampT = new qD((pT)localObject, parampT, null); !a.isEmpty(); parampT = new qD((pT)a.pop(), parampT, null))
    {
      i = a(parampT.a());
      i = qD.b()[(i + 1)];
      if (((pT)a.peek()).a() >= i) {
        break;
      }
    }
    a.push(parampT);
  }
}

/* Location:
 * Qualified Name:     qF
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */