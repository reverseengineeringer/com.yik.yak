import android.view.View;

public class dd
  extends ca
{
  protected void a(View paramView)
  {
    int i = paramView.getTop();
    int j = paramView.getHeight();
    c().a(new va[] { vq.a(paramView, "alpha", new float[] { 0.0F, 1.0F }), ds.a(dt.e, (float)b(), vq.a(paramView, "translationY", new float[] { -(i + j), 0.0F })) });
  }
}

/* Location:
 * Qualified Name:     dd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */