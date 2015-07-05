import android.annotation.TargetApi;
import android.content.Context;
import android.support.v4.internal.view.SupportMenuItem;
import android.view.ActionProvider;

@TargetApi(16)
class t
  extends o
{
  t(Context paramContext, SupportMenuItem paramSupportMenuItem)
  {
    super(paramContext, paramSupportMenuItem);
  }
  
  p a(ActionProvider paramActionProvider)
  {
    return new u(this, a, paramActionProvider);
  }
}

/* Location:
 * Qualified Name:     t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */