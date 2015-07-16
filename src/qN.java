import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;

final class qN
  extends qM<FieldDescriptorType, Object>
{
  qN(int paramInt)
  {
    super(paramInt, null);
  }
  
  public void a()
  {
    if (!b())
    {
      int i = 0;
      while (i < c())
      {
        localObject = b(i);
        if (((qh)((Map.Entry)localObject).getKey()).c()) {
          ((Map.Entry)localObject).setValue(Collections.unmodifiableList((List)((Map.Entry)localObject).getValue()));
        }
        i += 1;
      }
      Object localObject = d().iterator();
      while (((Iterator)localObject).hasNext())
      {
        Map.Entry localEntry = (Map.Entry)((Iterator)localObject).next();
        if (((qh)localEntry.getKey()).c()) {
          localEntry.setValue(Collections.unmodifiableList((List)localEntry.getValue()));
        }
      }
    }
    super.a();
  }
}

/* Location:
 * Qualified Name:     qN
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */