import android.view.View;
import android.view.ViewGroup;

public class dm
  extends ca
{
  protected void a(View paramView)
  {
    int i = ((ViewGroup)paramView.getParent()).getHeight();
    int j = paramView.getTop();
    c().a(new va[] { vq.a(paramView, "alpha", new float[] { 1.0F, 1.0F, 0.0F }), vq.a(paramView, "scaleX", new float[] { 1.0F, 0.475F, 0.1F }), vq.a(paramView, "scaleY", new float[] { 1.0F, 0.475F, 0.1F }), vq.a(paramView, "translationY", new float[] { 0.0F, -60.0F, i - j }) });
  }
}

/* Location:
 * Qualified Name:     dm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */