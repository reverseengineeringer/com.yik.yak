import android.annotation.TargetApi;
import android.content.Context;
import android.support.v4.internal.view.SupportMenuItem;
import android.view.ActionProvider;

@TargetApi(16)
class q
  extends l
{
  q(Context paramContext, SupportMenuItem paramSupportMenuItem)
  {
    super(paramContext, paramSupportMenuItem);
  }
  
  m a(ActionProvider paramActionProvider)
  {
    return new r(this, a, paramActionProvider);
  }
}

/* Location:
 * Qualified Name:     q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */