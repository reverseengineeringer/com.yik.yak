package com.yik.yak.ui.fragment;

import Bn;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;

public class WebFragment
  extends BaseFragment
  implements Bn
{
  public static WebFragment a(String paramString1, String paramString2)
  {
    WebFragment localWebFragment = new WebFragment();
    Bundle localBundle = new Bundle();
    localBundle.putString("KEY_TITLE", paramString1);
    localBundle.putString("KEY_URL", paramString2);
    localWebFragment.setArguments(localBundle);
    return localWebFragment;
  }
  
  public String a()
  {
    return b("");
  }
  
  public String b()
  {
    Bundle localBundle = getArguments();
    if (localBundle != null) {
      return localBundle.getString("KEY_URL", "http://www.yikyakapp.com/");
    }
    return "http://www.yikyakapp.com/";
  }
  
  public String b(String paramString)
  {
    Bundle localBundle = getArguments();
    String str = paramString;
    if (localBundle != null) {
      str = localBundle.getString("KEY_TITLE", paramString);
    }
    return str;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903122, paramViewGroup, false);
    paramViewGroup = (WebView)paramLayoutInflater.findViewById(2131558542);
    paramViewGroup.setWebViewClient(new WebViewClient());
    paramViewGroup.getSettings().setJavaScriptEnabled(true);
    paramViewGroup.loadUrl(b());
    return paramLayoutInflater;
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.fragment.WebFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */