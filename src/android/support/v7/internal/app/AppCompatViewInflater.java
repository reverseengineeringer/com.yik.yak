package android.support.v7.internal.app;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.v7.internal.widget.ViewUtils;
import android.support.v7.widget.AppCompatAutoCompleteTextView;
import android.support.v7.widget.AppCompatButton;
import android.support.v7.widget.AppCompatCheckBox;
import android.support.v7.widget.AppCompatCheckedTextView;
import android.support.v7.widget.AppCompatEditText;
import android.support.v7.widget.AppCompatMultiAutoCompleteTextView;
import android.support.v7.widget.AppCompatRadioButton;
import android.support.v7.widget.AppCompatRatingBar;
import android.support.v7.widget.AppCompatSpinner;
import android.support.v7.widget.AppCompatTextView;
import android.util.AttributeSet;
import android.view.View;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import java.util.Map;

public class AppCompatViewInflater
{
  private static final Map<String, Constructor<? extends View>> sConstructorMap = new HashMap();
  static final Class<?>[] sConstructorSignature = { Context.class, AttributeSet.class };
  private final Object[] mConstructorArgs = new Object[2];
  private final Context mContext;
  
  public AppCompatViewInflater(Context paramContext)
  {
    mContext = paramContext;
  }
  
  private View createView(String paramString1, String paramString2)
  {
    Constructor localConstructor = (Constructor)sConstructorMap.get(paramString1);
    Object localObject = localConstructor;
    if (localConstructor == null) {}
    try
    {
      localObject = mContext.getClassLoader();
      if (paramString2 != null) {}
      for (paramString2 = paramString2 + paramString1;; paramString2 = paramString1)
      {
        localObject = ((ClassLoader)localObject).loadClass(paramString2).asSubclass(View.class).getConstructor(sConstructorSignature);
        sConstructorMap.put(paramString1, localObject);
        ((Constructor)localObject).setAccessible(true);
        paramString1 = (View)((Constructor)localObject).newInstance(mConstructorArgs);
        return paramString1;
      }
      return null;
    }
    catch (Exception paramString1) {}
  }
  
  /* Error */
  private View createViewFromTag(Context paramContext, String paramString, AttributeSet paramAttributeSet)
  {
    // Byte code:
    //   0: aload_2
    //   1: astore 4
    //   3: aload_2
    //   4: ldc 97
    //   6: invokevirtual 103	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   9: ifeq +14 -> 23
    //   12: aload_3
    //   13: aconst_null
    //   14: ldc 105
    //   16: invokeinterface 109 3 0
    //   21: astore 4
    //   23: aload_0
    //   24: getfield 36	android/support/v7/internal/app/AppCompatViewInflater:mConstructorArgs	[Ljava/lang/Object;
    //   27: iconst_0
    //   28: aload_1
    //   29: aastore
    //   30: aload_0
    //   31: getfield 36	android/support/v7/internal/app/AppCompatViewInflater:mConstructorArgs	[Ljava/lang/Object;
    //   34: iconst_1
    //   35: aload_3
    //   36: aastore
    //   37: iconst_m1
    //   38: aload 4
    //   40: bipush 46
    //   42: invokevirtual 113	java/lang/String:indexOf	(I)I
    //   45: if_icmpne +28 -> 73
    //   48: aload_0
    //   49: aload 4
    //   51: ldc 115
    //   53: invokespecial 117	android/support/v7/internal/app/AppCompatViewInflater:createView	(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    //   56: astore_1
    //   57: aload_0
    //   58: getfield 36	android/support/v7/internal/app/AppCompatViewInflater:mConstructorArgs	[Ljava/lang/Object;
    //   61: iconst_0
    //   62: aconst_null
    //   63: aastore
    //   64: aload_0
    //   65: getfield 36	android/support/v7/internal/app/AppCompatViewInflater:mConstructorArgs	[Ljava/lang/Object;
    //   68: iconst_1
    //   69: aconst_null
    //   70: aastore
    //   71: aload_1
    //   72: areturn
    //   73: aload_0
    //   74: aload 4
    //   76: aconst_null
    //   77: invokespecial 117	android/support/v7/internal/app/AppCompatViewInflater:createView	(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    //   80: astore_1
    //   81: aload_0
    //   82: getfield 36	android/support/v7/internal/app/AppCompatViewInflater:mConstructorArgs	[Ljava/lang/Object;
    //   85: iconst_0
    //   86: aconst_null
    //   87: aastore
    //   88: aload_0
    //   89: getfield 36	android/support/v7/internal/app/AppCompatViewInflater:mConstructorArgs	[Ljava/lang/Object;
    //   92: iconst_1
    //   93: aconst_null
    //   94: aastore
    //   95: aload_1
    //   96: areturn
    //   97: astore_1
    //   98: aload_0
    //   99: getfield 36	android/support/v7/internal/app/AppCompatViewInflater:mConstructorArgs	[Ljava/lang/Object;
    //   102: iconst_0
    //   103: aconst_null
    //   104: aastore
    //   105: aload_0
    //   106: getfield 36	android/support/v7/internal/app/AppCompatViewInflater:mConstructorArgs	[Ljava/lang/Object;
    //   109: iconst_1
    //   110: aconst_null
    //   111: aastore
    //   112: aconst_null
    //   113: areturn
    //   114: astore_1
    //   115: aload_0
    //   116: getfield 36	android/support/v7/internal/app/AppCompatViewInflater:mConstructorArgs	[Ljava/lang/Object;
    //   119: iconst_0
    //   120: aconst_null
    //   121: aastore
    //   122: aload_0
    //   123: getfield 36	android/support/v7/internal/app/AppCompatViewInflater:mConstructorArgs	[Ljava/lang/Object;
    //   126: iconst_1
    //   127: aconst_null
    //   128: aastore
    //   129: aload_1
    //   130: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	131	0	this	AppCompatViewInflater
    //   0	131	1	paramContext	Context
    //   0	131	2	paramString	String
    //   0	131	3	paramAttributeSet	AttributeSet
    //   1	74	4	str	String
    // Exception table:
    //   from	to	target	type
    //   23	57	97	java/lang/Exception
    //   73	81	97	java/lang/Exception
    //   23	57	114	finally
    //   73	81	114	finally
  }
  
  public final View createView(View paramView, String paramString, @NonNull Context paramContext, @NonNull AttributeSet paramAttributeSet, boolean paramBoolean1, boolean paramBoolean2)
  {
    if ((paramBoolean1) && (paramView != null)) {}
    for (paramView = paramView.getContext();; paramView = paramContext)
    {
      Object localObject = paramView;
      if (paramBoolean2) {
        localObject = ViewUtils.themifyContext(paramView, paramAttributeSet, true, true);
      }
      int i = -1;
      switch (paramString.hashCode())
      {
      }
      for (;;)
      {
        switch (i)
        {
        default: 
          if (paramContext == localObject) {
            break label474;
          }
          return createViewFromTag((Context)localObject, paramString, paramAttributeSet);
          if (paramString.equals("EditText"))
          {
            i = 0;
            continue;
            if (paramString.equals("Spinner"))
            {
              i = 1;
              continue;
              if (paramString.equals("CheckBox"))
              {
                i = 2;
                continue;
                if (paramString.equals("RadioButton"))
                {
                  i = 3;
                  continue;
                  if (paramString.equals("CheckedTextView"))
                  {
                    i = 4;
                    continue;
                    if (paramString.equals("AutoCompleteTextView"))
                    {
                      i = 5;
                      continue;
                      if (paramString.equals("MultiAutoCompleteTextView"))
                      {
                        i = 6;
                        continue;
                        if (paramString.equals("RatingBar"))
                        {
                          i = 7;
                          continue;
                          if (paramString.equals("Button"))
                          {
                            i = 8;
                            continue;
                            if (paramString.equals("TextView")) {
                              i = 9;
                            }
                          }
                        }
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
      return new AppCompatEditText((Context)localObject, paramAttributeSet);
      return new AppCompatSpinner((Context)localObject, paramAttributeSet);
      return new AppCompatCheckBox((Context)localObject, paramAttributeSet);
      return new AppCompatRadioButton((Context)localObject, paramAttributeSet);
      return new AppCompatCheckedTextView((Context)localObject, paramAttributeSet);
      return new AppCompatAutoCompleteTextView((Context)localObject, paramAttributeSet);
      return new AppCompatMultiAutoCompleteTextView((Context)localObject, paramAttributeSet);
      return new AppCompatRatingBar((Context)localObject, paramAttributeSet);
      return new AppCompatButton((Context)localObject, paramAttributeSet);
      return new AppCompatTextView((Context)localObject, paramAttributeSet);
      label474:
      return null;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.app.AppCompatViewInflater
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */