import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.widget.ScrollView;
import android.widget.TextView;

class as
  implements Runnable
{
  as(al paramal, Activity paramActivity, aw paramaw, aX paramaX, Jw paramJw) {}
  
  public void run()
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(a);
    Object localObject = new at(this);
    float f = a.getResources().getDisplayMetrics().density;
    int i = al.a(e, f, 5);
    TextView localTextView = new TextView(a);
    localTextView.setAutoLinkMask(15);
    localTextView.setText(c.b());
    localTextView.setTextAppearance(a, 16973892);
    localTextView.setPadding(i, i, i, i);
    localTextView.setFocusable(false);
    ScrollView localScrollView = new ScrollView(a);
    localScrollView.setPadding(al.a(e, f, 14), al.a(e, f, 2), al.a(e, f, 10), al.a(e, f, 12));
    localScrollView.addView(localTextView);
    localBuilder.setView(localScrollView).setTitle(c.a()).setCancelable(false).setNeutralButton(c.c(), (DialogInterface.OnClickListener)localObject);
    if (d.d)
    {
      localObject = new au(this);
      localBuilder.setNegativeButton(c.e(), (DialogInterface.OnClickListener)localObject);
    }
    if (d.f)
    {
      localObject = new av(this);
      localBuilder.setPositiveButton(c.d(), (DialogInterface.OnClickListener)localObject);
    }
    localBuilder.show();
  }
}

/* Location:
 * Qualified Name:     as
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */