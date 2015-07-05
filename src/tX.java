import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.TextView;
import com.mixpanel.android.surveys.CardCarouselLayout;

public class tx
{
  private tg b;
  private final View c;
  private final TextView d;
  private final TextView e;
  private final ListView f;
  
  public tx(CardCarouselLayout paramCardCarouselLayout, View paramView)
  {
    c = paramView;
    d = ((TextView)paramView.findViewWithTag("com_mixpanel_android_TAG_prompt_text"));
    e = ((EditText)paramView.findViewWithTag("com_mixpanel_android_TAG_text_answer"));
    f = ((ListView)paramView.findViewWithTag("com_mixpanel_android_TAG_choice_list"));
    e.setText("");
    e.setOnEditorActionListener(new ty(this, paramCardCarouselLayout));
    f.setOnItemClickListener(new tz(this, paramCardCarouselLayout));
  }
  
  public View a()
  {
    return c;
  }
  
  public void a(tg paramtg, String paramString)
  {
    b = paramtg;
    d.setText(b.b());
    InputMethodManager localInputMethodManager = (InputMethodManager)c.getContext().getSystemService("input_method");
    th localth = paramtg.d();
    if (th.c == localth)
    {
      f.setVisibility(8);
      e.setVisibility(0);
      if (paramString != null) {
        e.setText(paramString);
      }
      if (a.getResources().getConfiguration().orientation == 1)
      {
        e.requestFocus();
        localInputMethodManager.showSoftInput(e, 0);
      }
    }
    for (;;)
    {
      c.invalidate();
      return;
      localInputMethodManager.hideSoftInputFromWindow(c.getWindowToken(), 0);
      continue;
      if (th.b != localth) {
        break;
      }
      localInputMethodManager.hideSoftInputFromWindow(c.getWindowToken(), 0);
      f.setVisibility(0);
      e.setVisibility(8);
      paramtg = new tu(paramtg.c(), LayoutInflater.from(a.getContext()));
      f.setAdapter(paramtg);
      f.clearChoices();
      if (paramString != null)
      {
        int i = 0;
        while (i < paramtg.getCount())
        {
          if (paramtg.a(i).equals(paramString)) {
            f.setItemChecked(i, true);
          }
          i += 1;
        }
      }
    }
    throw new tB("No way to display question type " + localth, null);
  }
}

/* Location:
 * Qualified Name:     tx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */