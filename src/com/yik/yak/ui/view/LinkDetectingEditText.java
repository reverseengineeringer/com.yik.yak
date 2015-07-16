package com.yik.yak.ui.view;

import FM;
import FN;
import FO;
import android.content.Context;
import android.text.Editable;
import android.text.Spannable;
import android.text.util.Linkify;
import android.text.util.Linkify.MatchFilter;
import android.text.util.Linkify.TransformFilter;
import android.util.AttributeSet;
import android.util.Patterns;
import android.widget.EditText;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class LinkDetectingEditText
  extends EditText
{
  private FN a;
  private ArrayList<FO> b = new ArrayList();
  private boolean c = false;
  
  public LinkDetectingEditText(Context paramContext)
  {
    super(paramContext);
    a();
  }
  
  public LinkDetectingEditText(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
  }
  
  public LinkDetectingEditText(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a();
  }
  
  private String a(String paramString, String[] paramArrayOfString, Matcher paramMatcher, Linkify.TransformFilter paramTransformFilter)
  {
    int k = 1;
    if (paramTransformFilter != null) {}
    for (paramMatcher = paramTransformFilter.transformUrl(paramMatcher, paramString);; paramMatcher = paramString)
    {
      int i = 0;
      int j;
      if (i < paramArrayOfString.length) {
        if (paramMatcher.regionMatches(true, 0, paramArrayOfString[i], 0, paramArrayOfString[i].length()))
        {
          paramString = paramMatcher;
          j = k;
          if (!paramMatcher.regionMatches(false, 0, paramArrayOfString[i], 0, paramArrayOfString[i].length()))
          {
            paramString = paramArrayOfString[i] + paramMatcher.substring(paramArrayOfString[i].length());
            j = k;
          }
        }
      }
      for (;;)
      {
        paramMatcher = paramString;
        if (j == 0) {
          paramMatcher = paramArrayOfString[0] + paramString;
        }
        return paramMatcher;
        i += 1;
        break;
        j = 0;
        paramString = paramMatcher;
      }
    }
  }
  
  private void a(ArrayList<FO> paramArrayList, Spannable paramSpannable, Pattern paramPattern, String[] paramArrayOfString, Linkify.MatchFilter paramMatchFilter, Linkify.TransformFilter paramTransformFilter)
  {
    paramPattern = paramPattern.matcher(paramSpannable);
    while (paramPattern.find())
    {
      int i = paramPattern.start();
      int j = paramPattern.end();
      if ((paramMatchFilter == null) || (paramMatchFilter.acceptMatch(paramSpannable, i, j)))
      {
        FO localFO = new FO();
        a = a(paramPattern.group(0), paramArrayOfString, paramPattern, paramTransformFilter);
        b = i;
        c = j;
        paramArrayList.add(localFO);
      }
    }
  }
  
  private void c()
  {
    if (a != null) {
      a.c();
    }
  }
  
  private void d()
  {
    if (a != null) {
      a.b();
    }
  }
  
  private void e()
  {
    if (a != null) {
      a.a();
    }
  }
  
  private void f()
  {
    ArrayList localArrayList = new ArrayList();
    Editable localEditable = getText();
    Pattern localPattern = Patterns.WEB_URL;
    Linkify.MatchFilter localMatchFilter = Linkify.sUrlMatchFilter;
    a(localArrayList, localEditable, localPattern, new String[] { "http://", "https://", "rtsp://" }, localMatchFilter, null);
    if (localArrayList.size() > 1) {
      c();
    }
    for (;;)
    {
      b = localArrayList;
      return;
      if (localArrayList.size() == 1) {
        d();
      } else {
        e();
      }
    }
  }
  
  public void a()
  {
    setAutoLinkMask(1);
    addTextChangedListener(new FM(this));
  }
  
  public boolean b()
  {
    return b.size() > 1;
  }
  
  public void setLinksEnabled(boolean paramBoolean)
  {
    c = paramBoolean;
  }
  
  public void setOnLinkAddedOrEditedListener(FN paramFN)
  {
    a = paramFN;
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.view.LinkDetectingEditText
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */