package android.support.v7.widget.helper;

import android.graphics.Canvas;
import android.support.v4.view.ViewCompat;
import android.support.v7.widget.RecyclerView;
import android.view.View;

class ItemTouchUIUtilImpl$Honeycomb
  implements ItemTouchUIUtil
{
  public void clearView(View paramView)
  {
    ViewCompat.setTranslationX(paramView, 0.0F);
    ViewCompat.setTranslationY(paramView, 0.0F);
  }
  
  public void onDraw(Canvas paramCanvas, RecyclerView paramRecyclerView, View paramView, float paramFloat1, float paramFloat2, int paramInt, boolean paramBoolean)
  {
    ViewCompat.setTranslationX(paramView, paramFloat1);
    ViewCompat.setTranslationY(paramView, paramFloat2);
  }
  
  public void onDrawOver(Canvas paramCanvas, RecyclerView paramRecyclerView, View paramView, float paramFloat1, float paramFloat2, int paramInt, boolean paramBoolean) {}
  
  public void onSelected(View paramView) {}
}

/* Location:
 * Qualified Name:     android.support.v7.widget.helper.ItemTouchUIUtilImpl.Honeycomb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */