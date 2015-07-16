package com.yik.yak.ui.adapter;

import CU;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentStatePagerAdapter;
import java.lang.ref.WeakReference;
import java.util.Hashtable;

public class MainActivityAdapter
  extends FragmentStatePagerAdapter
{
  protected Hashtable<Integer, WeakReference<Fragment>> a = new Hashtable();
  
  public MainActivityAdapter(FragmentManager paramFragmentManager)
  {
    super(paramFragmentManager);
  }
  
  public Fragment a(int paramInt)
  {
    WeakReference localWeakReference = (WeakReference)a.get(Integer.valueOf(paramInt));
    if (localWeakReference == null) {
      return null;
    }
    return (Fragment)localWeakReference.get();
  }
  
  public int b(int paramInt)
  {
    switch (paramInt)
    {
    case 0: 
    default: 
      return 2130837905;
    case 1: 
      return 2130837912;
    case 2: 
      return 2130837903;
    }
    return 2130837910;
  }
  
  public int getCount()
  {
    return CU.a().length;
  }
  
  public Fragment getItem(int paramInt)
  {
    Object localObject2 = CU.a(paramInt);
    Object localObject1 = a(paramInt);
    if (localObject1 != null) {
      return (Fragment)localObject1;
    }
    localObject2 = ((CU)localObject2).b();
    try
    {
      localObject2 = (Fragment)((Class)localObject2).newInstance();
      localObject1 = localObject2;
    }
    catch (InstantiationException localInstantiationException)
    {
      for (;;)
      {
        localInstantiationException.printStackTrace();
      }
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      for (;;)
      {
        localIllegalAccessException.printStackTrace();
      }
    }
    a.put(Integer.valueOf(paramInt), new WeakReference(localObject1));
    return (Fragment)localObject1;
  }
  
  public int getItemPosition(Object paramObject)
  {
    return -2;
  }
  
  public CharSequence getPageTitle(int paramInt)
  {
    return "";
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.adapter.MainActivityAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */