package android.support.v4.view;

import android.view.View;
import android.view.View.OnClickListener;

class PagerTabStrip$1
  implements View.OnClickListener
{
  PagerTabStrip$1(PagerTabStrip paramPagerTabStrip) {}
  
  public void onClick(View paramView)
  {
    this$0.mPager.setCurrentItem(this$0.mPager.getCurrentItem() - 1);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.PagerTabStrip.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */