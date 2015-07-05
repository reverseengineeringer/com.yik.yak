package com.yik.yak.ui.activity;

import BA;
import BB;
import BC;
import Bz;
import android.view.View;
import android.widget.CheckBox;
import butterknife.ButterKnife.Finder;
import butterknife.ButterKnife.Injector;

public class ReportDialog$$ViewInjector<T extends ReportDialog>
  implements ButterKnife.Injector<T>
{
  public void inject(ButterKnife.Finder paramFinder, T paramT, Object paramObject)
  {
    blockYakkerCheckBox = ((CheckBox)paramFinder.castView((View)paramFinder.findRequiredView(paramObject, 2131558656, "field 'blockYakkerCheckBox'"), 2131558656, "field 'blockYakkerCheckBox'"));
    ((View)paramFinder.findRequiredView(paramObject, 2131558648, "method 'onReportClick'")).setOnClickListener(new Bz(this, paramT));
    ((View)paramFinder.findRequiredView(paramObject, 2131558650, "method 'onReportClick'")).setOnClickListener(new BA(this, paramT));
    ((View)paramFinder.findRequiredView(paramObject, 2131558652, "method 'onReportClick'")).setOnClickListener(new BB(this, paramT));
    ((View)paramFinder.findRequiredView(paramObject, 2131558654, "method 'onReportClick'")).setOnClickListener(new BC(this, paramT));
  }
  
  public void reset(T paramT)
  {
    blockYakkerCheckBox = null;
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.activity.ReportDialog..ViewInjector
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */