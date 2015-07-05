import android.view.View;
import android.view.ViewGroup;

public class dk
  extends ca
{
  public void a(View paramView)
  {
    int i = ((ViewGroup)paramView.getParent()).getHeight();
    int j = paramView.getTop();
    c().a(new va[] { vq.a(paramView, "alpha", new float[] { 0.0F, 1.0F, 1.0F }), vq.a(paramView, "scaleX", new float[] { 0.1F, 0.475F, 1.0F }), vq.a(paramView, "scaleY", new float[] { 0.1F, 0.475F, 1.0F }), vq.a(paramView, "translationY", new float[] { i - j, -60.0F, 0.0F }) });
  }
}

/* Location:
 * Qualified Name:     dk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */