import android.view.View;

public class da
  extends ca
{
  public void a(View paramView)
  {
    float f1 = paramView.getPaddingLeft();
    float f2 = paramView.getPaddingTop();
    c().a(new va[] { ds.a(dt.z, 1300.0F, vq.a(paramView, "rotation", new float[] { 0.0F, 80.0F, 60.0F, 80.0F, 60.0F, 60.0F })), vq.a(paramView, "translationY", new float[] { 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 700.0F }), vq.a(paramView, "alpha", new float[] { 1.0F, 1.0F, 1.0F, 1.0F, 1.0F, 0.0F }), vq.a(paramView, "pivotX", new float[] { f1, f1, f1, f1, f1, f1 }), vq.a(paramView, "pivotY", new float[] { f2, f2, f2, f2, f2, f2 }) });
    a(1300L);
  }
}

/* Location:
 * Qualified Name:     da
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */