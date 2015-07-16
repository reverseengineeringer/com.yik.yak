package com.yik.yak.ui.fragment;

import AD;
import AJ;
import Aa;
import Aj;
import Bn;
import Br;
import Ep;
import Eq;
import Er;
import Es;
import Ha;
import Hi;
import Hm;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.text.method.LinkMovementMethod;
import android.text.util.Linkify;
import android.util.Patterns;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.TreeMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import wY;
import xD;
import xF;
import xG;
import xx;
import xy;

public class ContactUsFragment
  extends BaseFragment
  implements Bn, Br
{
  private View c;
  private Context d = null;
  private Spinner e;
  private AD f;
  private List<String> g = new ArrayList();
  private List<String> h = new ArrayList();
  
  public static ContactUsFragment b(String paramString)
  {
    ContactUsFragment localContactUsFragment = new ContactUsFragment();
    Bundle localBundle = new Bundle();
    localBundle.putString("KEY_PRESELECTED_OPTION", paramString);
    localContactUsFragment.setArguments(localBundle);
    return localContactUsFragment;
  }
  
  private void c(String paramString)
  {
    int i = Hi.a(160);
    paramString = Toast.makeText(getActivity(), paramString, 0);
    paramString.setGravity(49, 0, i);
    paramString.show();
  }
  
  public String a()
  {
    return "Contact Us";
  }
  
  public String b()
  {
    return getString(2131231085);
  }
  
  public void c()
  {
    e();
  }
  
  public int d()
  {
    return 0;
  }
  
  public void e()
  {
    Hi.a(Math.round(getResources().getDimension(2131493001)));
    Object localObject2 = ((EditText)c.findViewById(2131558687)).getText().toString();
    if (!Patterns.EMAIL_ADDRESS.matcher((CharSequence)localObject2).matches())
    {
      c("You must enter a valid email adddress.");
      return;
    }
    Object localObject1 = ((Spinner)c.findViewById(2131558688)).getSelectedItem();
    if (localObject1 == null)
    {
      c("You must select a category.");
      return;
    }
    String str = localObject1.toString();
    long l = ((Spinner)c.findViewById(2131558688)).getSelectedItemId();
    localObject1 = ((EditText)c.findViewById(2131558689)).getText().toString();
    if (((String)localObject1).length() == 0)
    {
      c("You must enter a comment.");
      return;
    }
    if ((str.length() == 0) || (str.equalsIgnoreCase("Select category")))
    {
      c("Please select a category.");
      return;
    }
    Ha.a().j(str);
    c.findViewById(2131558689).clearFocus();
    try
    {
      ((InputMethodManager)d.getSystemService("input_method")).hideSoftInputFromWindow(c.getWindowToken(), 0);
      if (l == 6L)
      {
        localObject1 = (String)localObject1 + f.e();
        TreeMap localTreeMap = new TreeMap();
        localTreeMap.put("userID", Aa.g());
        localTreeMap.put("email", localObject2);
        localTreeMap.put("category", str);
        localTreeMap.put("message", localObject1);
        localObject1 = Aj.b(AJ.a().f(), "contactUs", localTreeMap, null);
        localObject2 = xG.a(xx.a("application/x-www-form-urlencoded"), (String)localTreeMap.get("RequestBody:body"));
        localObject1 = new xF().a((xG)localObject2).a((String)localObject1).b();
        Aj.a(true).a((xD)localObject1).a(new Er(this));
        Toast.makeText(d, "You have contacted Yik Yak", 1).show();
        getFragmentManager().popBackStackImmediate();
        return;
      }
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    if (getArguments() != null)
    {
      paramBundle = getArguments().getString("KEY_PRESELECTED_OPTION");
      if (paramBundle != null) {}
    }
    else
    {
      return;
    }
    Hm.a(this, new Object[] { "path: " + paramBundle });
    int i = -1;
    switch (paramBundle.hashCode())
    {
    }
    for (;;)
    {
      switch (i)
      {
      default: 
        e.setSelection(8, true);
        return;
        if (paramBundle.equals("/geofence"))
        {
          i = 0;
          continue;
          if (paramBundle.equals("/peek"))
          {
            i = 1;
            continue;
            if (paramBundle.equals("/idea"))
            {
              i = 2;
              continue;
              if (paramBundle.equals("/issue"))
              {
                i = 3;
                continue;
                if (paramBundle.equals("/report"))
                {
                  i = 4;
                  continue;
                  if (paramBundle.equals("/other"))
                  {
                    i = 5;
                    continue;
                    if (paramBundle.equals("/basecamp")) {
                      i = 6;
                    }
                  }
                }
              }
            }
          }
        }
        break;
      }
    }
    e.setSelection(1);
    return;
    e.setSelection(2, true);
    return;
    e.setSelection(3, true);
    return;
    e.setSelection(4, true);
    return;
    e.setSelection(5, true);
    return;
    e.setSelection(8, true);
    return;
    e.setSelection(0, true);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    getActivity().setTheme(2131689485);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    c = paramLayoutInflater.inflate(2130903112, paramViewGroup, false);
    d = c.getContext();
    f = AD.a();
    if (Aa.z())
    {
      h.add(getString(2131230845));
      g.add(getString(2131230844));
    }
    h.addAll(Arrays.asList(getResources().getStringArray(2131296257)));
    g.addAll(Arrays.asList(getResources().getStringArray(2131296256)));
    ((LinearLayout)c.findViewById(2131558685)).setOnClickListener(new Ep(this));
    paramLayoutInflater = (TextView)c.findViewById(2131558686);
    paramLayoutInflater.setLinksClickable(true);
    paramLayoutInflater.setMovementMethod(LinkMovementMethod.getInstance());
    Linkify.addLinks(paramLayoutInflater, Patterns.WEB_URL, "com.yik.yak.url:");
    ((EditText)c.findViewById(2131558687)).requestFocus();
    c.findViewById(2131558689);
    paramLayoutInflater = new Es(d, 2130903082, g, null);
    paramLayoutInflater.setDropDownViewResource(17367049);
    e = ((Spinner)c.findViewById(2131558688));
    e.setAdapter(paramLayoutInflater);
    e.setSelection(-1);
    e.setOnItemSelectedListener(new Eq(this));
    setHasOptionsMenu(true);
    return c;
  }
  
  public void onStart()
  {
    super.onStart();
    getActivity().setTheme(2131689485);
  }
  
  public void onStop()
  {
    super.onStop();
    getActivity().setTheme(2131689483);
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.fragment.ContactUsFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */