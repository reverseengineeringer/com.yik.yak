import android.view.View;
import android.view.ViewGroup;

public class dg
  extends bW
{
  public void a(View paramView)
  {
    int i = ((ViewGroup)paramView.getParent()).getHeight();
    int j = paramView.getTop();
    c().a(new vj[] { vz.a(paramView, "alpha", new float[] { 0.0F, 1.0F, 1.0F }), vz.a(paramView, "scaleX", new float[] { 0.1F, 0.475F, 1.0F }), vz.a(paramView, "scaleY", new float[] { 0.1F, 0.475F, 1.0F }), vz.a(paramView, "translationY", new float[] { i - j, -60.0F, 0.0F }) });
  }
}

/* Location:
 * Qualified Name:     dg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */