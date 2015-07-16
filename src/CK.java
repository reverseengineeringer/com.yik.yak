import android.view.View;

public class ck
  extends bW
{
  public void a(View paramView)
  {
    float f1 = (paramView.getWidth() - paramView.getPaddingLeft() - paramView.getPaddingRight()) / 2 + paramView.getPaddingLeft();
    float f2 = paramView.getHeight() - paramView.getPaddingBottom();
    c().a(new vj[] { vz.a(paramView, "rotation", new float[] { 12.0F, -12.0F, 3.0F, -3.0F, 0.0F }), vz.a(paramView, "pivotX", new float[] { f1, f1, f1, f1, f1 }), vz.a(paramView, "pivotY", new float[] { f2, f2, f2, f2, f2 }) });
  }
}

/* Location:
 * Qualified Name:     ck
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */