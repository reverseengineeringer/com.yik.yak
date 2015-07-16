import android.view.View;
import java.util.Comparator;

class vd
  implements Comparator<View>
{
  vd(vc paramvc) {}
  
  public int a(View paramView1, View paramView2)
  {
    if (paramView1 == paramView2) {
      return 0;
    }
    if (paramView1 == null) {
      return -1;
    }
    if (paramView2 == null) {
      return 1;
    }
    return paramView2.hashCode() - paramView1.hashCode();
  }
}

/* Location:
 * Qualified Name:     vd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */