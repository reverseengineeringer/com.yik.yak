package com.yik.yak.ui.adapter;

import Dd;
import Dp;
import android.content.Context;
import android.support.v4.app.Fragment;
import android.view.View;
import com.yik.yak.data.models.Yak;
import com.yik.yak.ui.adapter.viewholder.YakDetailViewHolder;
import com.yik.yak.ui.adapter.viewholder.YakReplyViewHolder;
import java.lang.reflect.Constructor;
import java.util.ArrayList;

public class YakDetailAdapter
  extends HeaderViewAdapter
{
  private Fragment mFragment;
  
  public YakDetailAdapter(Context paramContext, Fragment paramFragment)
  {
    this(paramContext, null, paramFragment);
  }
  
  public YakDetailAdapter(Context paramContext, ArrayList paramArrayList, Fragment paramFragment)
  {
    super(paramContext, paramArrayList);
    mFragment = paramFragment;
  }
  
  public void addLoadingYak()
  {
    Yak localYak = new Yak();
    mLoadingYak = true;
    CanVote = false;
    getData().add(localYak);
    notifyDataSetChanged();
  }
  
  protected Dp buildViewHolderInstance(Constructor<? extends Dp> paramConstructor, View paramView, int paramInt)
  {
    if (paramInt == 1) {
      return (Dp)paramConstructor.newInstance(new Object[] { this, paramView, mFragment });
    }
    return super.buildViewHolderInstance(paramConstructor, paramView, paramInt);
  }
  
  protected int getHeaderLayoutId()
  {
    return 2130903139;
  }
  
  protected Class getHeaderViewHolderClass()
  {
    return YakDetailViewHolder.class;
  }
  
  protected Constructor<? extends Dp> getHeaderViewHolderConstructor(Class<? extends Dp> paramClass)
  {
    try
    {
      paramClass = paramClass.getConstructor(new Class[] { Dd.class, View.class, Fragment.class });
      return paramClass;
    }
    catch (NoSuchMethodException paramClass)
    {
      paramClass.printStackTrace();
    }
    return null;
  }
  
  protected int getLayoutId()
  {
    return 2130903141;
  }
  
  protected Class getViewHolderClass()
  {
    return YakReplyViewHolder.class;
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.adapter.YakDetailAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */