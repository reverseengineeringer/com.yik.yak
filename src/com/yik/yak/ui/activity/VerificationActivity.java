package com.yik.yak.ui.activity;

import Af;
import Az;
import CA;
import CB;
import CD;
import CE;
import CH;
import Cx;
import Cy;
import Cz;
import DE;
import Ha;
import Hm;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.DialogFragment;
import android.support.v4.view.ViewPager;
import android.support.v7.app.ActionBar;
import android.text.TextWatcher;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.nispok.snackbar.Snackbar;
import com.yik.yak.ui.dialog.VerticalButtonsDialog;
import java.util.Locale;
import wF;
import wG;

public class VerificationActivity
  extends BaseAppCompatActivity
  implements DE, View.OnClickListener
{
  private final TextWatcher c = new Cx(this);
  private Handler d = new Handler();
  private Af e;
  private Az f;
  private Animation g;
  private Animation h;
  private Animation i;
  private Animation j;
  private ImageView k;
  private ImageView l;
  private TextView m;
  private EditText n;
  private EditText o;
  private EditText p;
  private Button q;
  private ViewPager r;
  private String s;
  
  private Af A()
  {
    if (e == null) {
      e = new Af(this);
    }
    return e;
  }
  
  public static Intent a(Context paramContext)
  {
    paramContext = new Intent(paramContext, VerificationActivity.class);
    paramContext.putExtra("KEY_FORCE_VERIFICATION", "true");
    return paramContext;
  }
  
  public static Intent a(Context paramContext, String paramString)
  {
    paramContext = new Intent(paramContext, VerificationActivity.class);
    paramContext.putExtra("KEY_CODE", paramString);
    return paramContext;
  }
  
  private void a()
  {
    String str = e();
    if (str != null)
    {
      r.setCurrentItem(1);
      d.postDelayed(new Cy(this, str), 500L);
    }
  }
  
  private void a(String paramString1, String paramString2, String paramString3)
  {
    VerticalButtonsDialog.a(getSupportFragmentManager(), paramString1, paramString2, " ", paramString3, new String[] { "Cancel" });
  }
  
  private void b(int paramInt)
  {
    switch (CG.b[com.yik.yak.data.http.request.StartVerificationRequest.StartVerificationError.fromInt(paramInt).ordinal()])
    {
    default: 
      Hm.b(this, new Object[] { "Something unexpected happened." });
      return;
    case 1: 
      a("InvalidPhoneNumber", getString(2131230956), getString(2131231013));
      return;
    case 2: 
      a("TooManyAttempts", getString(2131230956), getString(2131231034));
      return;
    case 3: 
      Hm.b(this, new Object[] { "The system detected potential abuse." });
      return;
    }
    Hm.b(this, new Object[] { "A system error occurred" });
  }
  
  private void c()
  {
    setContentView(2130903078);
    a(getString(2131231138));
    r = ((ViewPager)findViewById(2131558566));
    r.setAdapter(new CH(this));
    k = ((ImageView)findViewById(2131558564));
    l = ((ImageView)findViewById(2131558565));
    m = ((TextView)findViewById(2131558563));
  }
  
  private void c(int paramInt)
  {
    switch (CG.a[com.yik.yak.data.http.request.VerifyRequest.VerifyRequestError.fromInt(paramInt).ordinal()])
    {
    default: 
      Hm.b(this, new Object[] { "Something unexpected happened." });
      return;
    case 3: 
      Hm.b(this, new Object[] { "Invalid identity authentication token." });
      return;
    case 4: 
      Hm.b(this, new Object[] { "Where's the validation code?" });
      return;
    case 1: 
      a("TooManyAttemps", "Darn", "You've tried to authenticate too many times. Try again in 24 hours. Sorry, we just want to be sure you're human.");
      return;
    case 5: 
      Hm.b(this, new Object[] { "Does this user exist?" });
      return;
    case 2: 
      a("IncorrectCodeDialog", "Darn", "Whoops. That doesn't look like the code we sent you. Give it another go.");
      return;
    }
    Hm.b(this, new Object[] { "Unexpected system error when authenticating." });
  }
  
  private void c(String paramString)
  {
    ProgressDialog localProgressDialog = ProgressDialog.show(this, getString(2131231051), "Checking your verification code.", true);
    d.postDelayed(new CB(this, paramString, localProgressDialog), 500L);
  }
  
  private void d()
  {
    r.setOnPageChangeListener(new Cz(this));
    m.setOnClickListener(this);
  }
  
  private String e()
  {
    Object localObject2 = null;
    Bundle localBundle = getIntent().getExtras();
    Object localObject1 = localObject2;
    if (localBundle != null)
    {
      localObject1 = localObject2;
      if (localBundle.containsKey("KEY_CODE")) {
        localObject1 = localBundle.getString("KEY_CODE", null);
      }
    }
    return (String)localObject1;
  }
  
  private boolean f()
  {
    Bundle localBundle = getIntent().getExtras();
    if ((localBundle != null) && (localBundle.containsKey("KEY_FORCE_VERIFICATION"))) {
      return Boolean.valueOf(localBundle.getString("KEY_FORCE_VERIFICATION", "false")).booleanValue();
    }
    return false;
  }
  
  private void g()
  {
    f = e.a(Locale.getDefault().getISO3Country());
    d.post(new CA(this));
  }
  
  private void h()
  {
    if ((f()) && (r.getCurrentItem() != 1))
    {
      getSupportActionBar().setDisplayHomeAsUpEnabled(false);
      return;
    }
    getSupportActionBar().setDisplayHomeAsUpEnabled(true);
  }
  
  private void i()
  {
    g = AnimationUtils.loadAnimation(this, 2130968608);
    h = AnimationUtils.loadAnimation(this, 2130968609);
    i = AnimationUtils.loadAnimation(this, 2130968603);
    j = AnimationUtils.loadAnimation(this, 2130968604);
    e = new Af(this);
  }
  
  private void j()
  {
    k.setVisibility(0);
    k.clearAnimation();
    k.startAnimation(i);
  }
  
  private void k()
  {
    l.clearAnimation();
    l.startAnimation(i);
  }
  
  private void l()
  {
    k.clearAnimation();
    k.startAnimation(j);
  }
  
  private void m()
  {
    l.clearAnimation();
    l.startAnimation(j);
  }
  
  private void n()
  {
    l();
    k();
  }
  
  private void o()
  {
    m();
    j();
  }
  
  private void p()
  {
    m.setVisibility(0);
    m.clearAnimation();
    m.startAnimation(g);
  }
  
  private void q()
  {
    m.clearAnimation();
    m.startAnimation(h);
  }
  
  private void r()
  {
    a("GenericErrorDialog", getString(2131230956), getString(2131231135));
  }
  
  private boolean s()
  {
    if (z())
    {
      u();
      return true;
    }
    return false;
  }
  
  private void t()
  {
    o.removeTextChangedListener(c);
    if (f != null) {
      if (!f.d.equals(q.getText().toString())) {
        q.setText(f.d);
      }
    }
    for (;;)
    {
      o.addTextChangedListener(c);
      return;
      q.setText(2131231083);
    }
  }
  
  private void u()
  {
    String str1 = o.getText().toString();
    String str2 = p.getText().toString();
    VerticalButtonsDialog.a(getSupportFragmentManager(), "VerifySendCodeDialog", "We Will Send the Text Verification Code to +" + str1 + " " + str2, null, "To complete phone number verification, please enter the 4-digit code we will text you on the next screen. Message and data rates may apply.", new String[] { "Send Code", "Cancel" });
    Ha.a().n(getString(2131230806));
  }
  
  private void v()
  {
    ProgressDialog localProgressDialog = ProgressDialog.show(this, getString(2131231051), "You should receive a text message shortly.", true);
    d.postDelayed(new CE(this, localProgressDialog), 500L);
  }
  
  private void w()
  {
    String str1 = o.getText().toString();
    String str2 = p.getText().toString();
    VerticalButtonsDialog.a(getSupportFragmentManager(), "ResendCodeDialog", "Help! I didn't receive the code.", "+" + str1 + " " + str2, "Whoops! Something might have gone wrong. Don't worry, we can fix it. You can either hit resend or email us at sms@yikyakapp.com.", new String[] { "Resend Code", "Email Us", "Change Number", "Cancel" });
    Ha.a().n(getString(2131230807));
  }
  
  private void x()
  {
    startActivity(WebActivity.b(this));
  }
  
  private void y()
  {
    startActivity(PrivacyPolicyActivity.a(this));
  }
  
  private boolean z()
  {
    int i1 = A().a(f);
    return p.length() >= i1;
  }
  
  public void a(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return;
    case 0: 
      k.setColorFilter(getResources().getColor(2131427714));
      k.setAlpha(1.0F);
      return;
    case 1: 
      k.setColorFilter(getResources().getColor(2131427561));
      k.setAlpha(0.25F);
      return;
    case 2: 
      k.setColorFilter(getResources().getColor(2131427561));
      k.setAlpha(0.5F);
      return;
    case 3: 
      k.setColorFilter(getResources().getColor(2131427561));
      k.setAlpha(0.75F);
      return;
    }
    k.setColorFilter(getResources().getColor(2131427561));
    k.setAlpha(1.0F);
  }
  
  public void a(Az paramAz)
  {
    if (paramAz != null)
    {
      if ((f == null) || (!d.equals(f.d)))
      {
        f = paramAz;
        o.setText(f.c);
        t();
      }
      return;
    }
    f = paramAz;
    t();
  }
  
  public void a(DialogFragment paramDialogFragment, int paramInt, String paramString)
  {
    if (paramDialogFragment.getTag().equals("VerifySendCodeDialog")) {}
    switch (paramInt)
    {
    default: 
      if (paramDialogFragment.getTag().equals("ResendCodeDialog")) {
        switch (paramInt)
        {
        }
      }
      break;
    }
    do
    {
      return;
      v();
      paramDialogFragment.dismiss();
      break;
      v();
      paramDialogFragment.dismiss();
      return;
      paramDialogFragment = new Intent("android.intent.action.SENDTO");
      paramDialogFragment.setType("*/*");
      paramDialogFragment.setData(Uri.parse("mailto:"));
      paramDialogFragment.putExtra("android.intent.extra.EMAIL", new String[] { "sms@yikyakapp.com" });
      paramDialogFragment.putExtra("android.intent.extra.SUBJECT", "Help With Phone Number Verification");
    } while (paramDialogFragment.resolveActivity(getPackageManager()) == null);
    startActivity(paramDialogFragment);
    return;
    r.setCurrentItem(0);
    p.requestFocus();
    paramDialogFragment.dismiss();
  }
  
  public void onBackPressed()
  {
    if (r.getCurrentItem() == 1)
    {
      r.setCurrentItem(0);
      Ha.a().n(getString(2131230801));
      return;
    }
    if (f())
    {
      wF.a(Snackbar.a(this).a(wG.b).a("You need to verify your phone number before continuing to use Yik Yak."));
      return;
    }
    super.onBackPressed();
    Ha.a().n(getString(2131230802));
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    case 2131558563: 
      u();
      return;
    }
    w();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    i();
    c();
    d();
    a();
    if (f()) {
      getSupportActionBar().setDisplayHomeAsUpEnabled(false);
    }
    Ha.a().n(getString(2131230805));
  }
  
  protected void onPause()
  {
    super.onPause();
    d.removeCallbacksAndMessages(null);
  }
  
  public void showCountrySelect(View paramView)
  {
    new AlertDialog.Builder(this).setTitle(getString(2131231084)).setItems(A().b(), new CD(this)).create().show();
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.activity.VerificationActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */