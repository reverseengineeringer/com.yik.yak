import android.view.View;

public class cl
  extends ca
{
  public void a(View paramView)
  {
    float f1 = (paramView.getWidth() - paramView.getPaddingLeft() - paramView.getPaddingRight()) / 2 + paramView.getPaddingLeft();
    float f2 = paramView.getHeight() - paramView.getPaddingBottom();
    c().a(new va[] { vq.a(paramView, "pivotX", new float[] { f1, f1, f1, f1, f1 }), vq.a(paramView, "pivotY", new float[] { f2, f2, f2, f2, f2 }), vq.a(paramView, "rotationX", new float[] { 55.0F, -30.0F, 15.0F, -15.0F, 0.0F }) });
  }
}

/* Location:
 * Qualified Name:     cl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */