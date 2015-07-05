import android.view.View;
import android.view.ViewGroup;

public class do
  extends ca
{
  protected void a(View paramView)
  {
    ViewGroup localViewGroup = (ViewGroup)paramView.getParent();
    int i = localViewGroup.getWidth();
    int j = localViewGroup.getLeft();
    c().a(new va[] { vq.a(paramView, "alpha", new float[] { 1.0F, 1.0F, 0.0F }), vq.a(paramView, "scaleX", new float[] { 1.0F, 0.475F, 0.1F }), vq.a(paramView, "scaleY", new float[] { 1.0F, 0.475F, 0.1F }), vq.a(paramView, "translationX", new float[] { 0.0F, -42.0F, i - j }) });
  }
}

/* Location:
 * Qualified Name:     do
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */