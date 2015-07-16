package com.yik.yak.ui.dialog;

import DD;
import DE;
import Hi;
import android.app.Activity;
import android.app.Dialog;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;

public class VerticalButtonsDialog
  extends DialogFragment
{
  public String[] a;
  private DE b;
  
  public static VerticalButtonsDialog a(FragmentManager paramFragmentManager, String paramString1, String paramString2, String paramString3, String paramString4, String... paramVarArgs)
  {
    VerticalButtonsDialog localVerticalButtonsDialog = new VerticalButtonsDialog();
    Bundle localBundle = new Bundle();
    localBundle.putString("KEY_TITLE", paramString2);
    localBundle.putString("KEY_SUBTITLE", paramString3);
    localBundle.putString("KEY_MESSAGE", paramString4);
    localBundle.putStringArray("KEY_BUTTON_NAMES", paramVarArgs);
    localVerticalButtonsDialog.setArguments(localBundle);
    localVerticalButtonsDialog.show(paramFragmentManager, paramString1);
    return localVerticalButtonsDialog;
  }
  
  private void a(int paramInt)
  {
    if (b != null) {
      b.a(this, paramInt, a()[paramInt]);
    }
  }
  
  private void a(LinearLayout paramLinearLayout, String paramString, int paramInt)
  {
    Button localButton = new Button(getActivity(), null, 16843563);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -2);
    gravity = 17;
    localButton.setText(paramString);
    if (paramString.equalsIgnoreCase("cancel")) {
      localButton.setTextColor(getResources().getColor(2131427712));
    }
    for (;;)
    {
      localButton.setLayoutParams(localLayoutParams);
      localButton.setTextSize(16.0F);
      localButton.setPadding(10, 30, 10, 30);
      localButton.setGravity(17);
      localButton.setOnClickListener(new DD(this, paramString, paramInt));
      paramLinearLayout.addView(localButton);
      return;
      localButton.setTextColor(getResources().getColor(2131427476));
    }
  }
  
  private String[] a()
  {
    if (a == null) {
      a = getArguments().getStringArray("KEY_BUTTON_NAMES");
    }
    return a;
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    getDialog().getWindow().setBackgroundDrawable(new ColorDrawable(0));
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    if ((paramActivity instanceof DE)) {
      b = ((DE)paramActivity);
    }
  }
  
  public void onCreate(@Nullable Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle != null) {
      setArguments(paramBundle);
    }
    setStyle(1, 2131689538);
  }
  
  @Nullable
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    int i = 0;
    paramLayoutInflater = (LinearLayout)paramLayoutInflater.inflate(2130903110, paramViewGroup, false);
    ((TextView)paramLayoutInflater.findViewById(2131558670)).setText(getArguments().getString("KEY_TITLE", ""));
    paramViewGroup = (TextView)paramLayoutInflater.findViewById(2131558671);
    paramBundle = getArguments().getString("KEY_SUBTITLE", "");
    if (Hi.a(paramBundle)) {
      paramViewGroup.setVisibility(8);
    }
    for (;;)
    {
      ((TextView)paramLayoutInflater.findViewById(2131558672)).setText(getArguments().getString("KEY_MESSAGE", ""));
      paramViewGroup = (LinearLayout)paramLayoutInflater.findViewById(2131558673);
      paramBundle = a();
      while (i < paramBundle.length)
      {
        a(paramViewGroup, paramBundle[i], i);
        i += 1;
      }
      paramViewGroup.setText(paramBundle);
    }
    return paramLayoutInflater;
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putAll(getArguments());
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.dialog.VerticalButtonsDialog
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */