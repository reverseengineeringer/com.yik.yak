import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.common.GooglePlayServicesUtil;
import java.util.LinkedList;

public abstract class hr<T extends hq>
{
  private T a;
  private Bundle b;
  private LinkedList<hy> c;
  private final hD<T> d = new hs(this);
  
  private void a(int paramInt)
  {
    while ((!c.isEmpty()) && (((hy)c.getLast()).a() >= paramInt)) {
      c.removeLast();
    }
  }
  
  private void a(Bundle paramBundle, hy paramhy)
  {
    if (a != null)
    {
      paramhy.a(a);
      return;
    }
    if (c == null) {
      c = new LinkedList();
    }
    c.add(paramhy);
    if (paramBundle != null)
    {
      if (b != null) {
        break label76;
      }
      b = ((Bundle)paramBundle.clone());
    }
    for (;;)
    {
      a(d);
      return;
      label76:
      b.putAll(paramBundle);
    }
  }
  
  public static void b(FrameLayout paramFrameLayout)
  {
    Context localContext = paramFrameLayout.getContext();
    int i = GooglePlayServicesUtil.isGooglePlayServicesAvailable(localContext);
    String str2 = GooglePlayServicesUtil.b(localContext, i);
    String str1 = GooglePlayServicesUtil.c(localContext, i);
    LinearLayout localLinearLayout = new LinearLayout(paramFrameLayout.getContext());
    localLinearLayout.setOrientation(1);
    localLinearLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
    paramFrameLayout.addView(localLinearLayout);
    paramFrameLayout = new TextView(paramFrameLayout.getContext());
    paramFrameLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
    paramFrameLayout.setText(str2);
    localLinearLayout.addView(paramFrameLayout);
    if (str1 != null)
    {
      paramFrameLayout = new Button(localContext);
      paramFrameLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
      paramFrameLayout.setText(str1);
      localLinearLayout.addView(paramFrameLayout);
      paramFrameLayout.setOnClickListener(new hw(localContext, i));
    }
  }
  
  public View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    FrameLayout localFrameLayout = new FrameLayout(paramLayoutInflater.getContext());
    a(paramBundle, new hv(this, localFrameLayout, paramLayoutInflater, paramViewGroup, paramBundle));
    if (a == null) {
      a(localFrameLayout);
    }
    return localFrameLayout;
  }
  
  public T a()
  {
    return a;
  }
  
  public void a(Activity paramActivity, Bundle paramBundle1, Bundle paramBundle2)
  {
    a(paramBundle2, new ht(this, paramActivity, paramBundle1, paramBundle2));
  }
  
  public void a(Bundle paramBundle)
  {
    a(paramBundle, new hu(this, paramBundle));
  }
  
  protected void a(FrameLayout paramFrameLayout)
  {
    b(paramFrameLayout);
  }
  
  protected abstract void a(hD<T> paramhD);
  
  public void b()
  {
    a(null, new hx(this));
  }
  
  public void b(Bundle paramBundle)
  {
    if (a != null) {
      a.b(paramBundle);
    }
    while (b == null) {
      return;
    }
    paramBundle.putAll(b);
  }
  
  public void c()
  {
    if (a != null)
    {
      a.b();
      return;
    }
    a(5);
  }
  
  public void d()
  {
    if (a != null)
    {
      a.c();
      return;
    }
    a(2);
  }
  
  public void e()
  {
    if (a != null)
    {
      a.d();
      return;
    }
    a(1);
  }
  
  public void f()
  {
    if (a != null) {
      a.e();
    }
  }
}

/* Location:
 * Qualified Name:     hr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */