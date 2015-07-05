import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.mixpanel.android.surveys.CardCarouselLayout;

class tz
  implements AdapterView.OnItemClickListener
{
  tz(tx paramtx, CardCarouselLayout paramCardCarouselLayout) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (CardCarouselLayout.a(b.a) != null)
    {
      paramAdapterView = paramAdapterView.getItemAtPosition(paramInt).toString();
      b.a.postDelayed(new tA(this, paramAdapterView), 165L);
    }
  }
}

/* Location:
 * Qualified Name:     tz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */