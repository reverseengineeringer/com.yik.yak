import android.view.View;
import android.view.View.OnClickListener;
import com.mixpanel.android.mpmetrics.UpdateDisplayState;
import com.mixpanel.android.surveys.SurveyActivity;

public class tE
  implements View.OnClickListener
{
  public tE(SurveyActivity paramSurveyActivity) {}
  
  public void onClick(View paramView)
  {
    a.finish();
    UpdateDisplayState.a(SurveyActivity.b(a));
  }
}

/* Location:
 * Qualified Name:     tE
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */