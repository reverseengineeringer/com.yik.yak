package com.yik.yak.ui.adapter;

import Dp;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.yik.yak.data.models.YikYakObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;

public abstract class HeaderViewAdapter
  extends DoubleClickRecyclerViewAdapter<Dp, YikYakObject>
{
  protected static final int HEADER_TYPE = 1;
  private YikYakObject headerData;
  
  public HeaderViewAdapter(Context paramContext)
  {
    super(paramContext);
  }
  
  public HeaderViewAdapter(Context paramContext, ArrayList paramArrayList)
  {
    super(paramContext, paramArrayList);
  }
  
  public YikYakObject getHeaderItem()
  {
    return headerData;
  }
  
  protected abstract int getHeaderLayoutId();
  
  protected abstract Class getHeaderViewHolderClass();
  
  protected Constructor<? extends Dp> getHeaderViewHolderConstructor(Class<? extends Dp> paramClass)
  {
    return super.getConstructor(paramClass);
  }
  
  public YikYakObject getItem(int paramInt)
  {
    if (paramInt == 0) {
      return getHeaderItem();
    }
    return (YikYakObject)super.getItem(paramInt - 1);
  }
  
  public int getItemCount()
  {
    return super.getItemCount() + 1;
  }
  
  public int getItemViewType(int paramInt)
  {
    if (paramInt == 0) {
      return 1;
    }
    return super.getItemViewType(paramInt);
  }
  
  public void onBindViewHolder(Dp paramDp, int paramInt)
  {
    if (paramInt == 0)
    {
      assignClickListener(paramDp, paramDp.getView(), paramInt);
      paramDp.bindView(getHeaderItem());
      return;
    }
    super.onBindViewHolder(paramDp, paramInt);
  }
  
  public Dp onCreateViewHolder(ViewGroup paramViewGroup, int paramInt)
  {
    Object localObject2;
    Object localObject1;
    if (paramInt == 1)
    {
      localObject2 = getHeaderViewHolderConstructor(getHeaderViewHolderClass());
      localObject1 = layoutInflater.inflate(getHeaderLayoutId(), paramViewGroup, false);
      paramViewGroup = (ViewGroup)localObject2;
    }
    for (;;)
    {
      try
      {
        paramViewGroup = buildViewHolderInstance(paramViewGroup, (View)localObject1, paramInt);
        return paramViewGroup;
      }
      catch (IllegalAccessException paramViewGroup)
      {
        paramViewGroup.printStackTrace();
        return null;
      }
      catch (InvocationTargetException paramViewGroup)
      {
        paramViewGroup.printStackTrace();
        continue;
      }
      catch (InstantiationException paramViewGroup)
      {
        paramViewGroup.printStackTrace();
        continue;
      }
      localObject1 = getConstructor(getViewHolderClass());
      localObject2 = layoutInflater.inflate(getLayoutId(), paramViewGroup, false);
      paramViewGroup = (ViewGroup)localObject1;
      localObject1 = localObject2;
    }
  }
  
  public void setHeaderData(YikYakObject paramYikYakObject)
  {
    headerData = paramYikYakObject;
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.adapter.HeaderViewAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */