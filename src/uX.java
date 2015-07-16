import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;

class uX
  implements TextWatcher
{
  private final View b;
  
  public uX(uW paramuW, View paramView)
  {
    b = paramView;
  }
  
  public void afterTextChanged(Editable paramEditable)
  {
    a.c(b);
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}

/* Location:
 * Qualified Name:     uX
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */