import android.view.KeyEvent;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import com.mixpanel.android.surveys.CardCarouselLayout;

class ty
  implements TextView.OnEditorActionListener
{
  ty(tx paramtx, CardCarouselLayout paramCardCarouselLayout) {}
  
  public boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool = false;
    if ((paramKeyEvent != null) && (paramKeyEvent.getKeyCode() == 66) && (paramKeyEvent.getAction() == 0) && ((paramKeyEvent.getFlags() & 0x20) == 0)) {}
    for (int i = 1;; i = 0)
    {
      if ((i != 0) || (paramInt == 6))
      {
        paramTextView.clearComposingText();
        if (CardCarouselLayout.a(b.a) != null)
        {
          paramTextView = paramTextView.getText().toString();
          CardCarouselLayout.a(b.a).a(tx.a(b), paramTextView);
        }
        bool = true;
      }
      return bool;
    }
  }
}

/* Location:
 * Qualified Name:     ty
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */