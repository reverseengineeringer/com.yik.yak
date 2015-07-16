package com.google.analytics.tracking.android;

import android.text.TextUtils;
import com.google.android.gms.common.util.VisibleForTesting;
import eH;
import eI;
import fE;
import fF;
import fl;
import fm;
import fq;
import fz;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

public class Tracker
{
  static final long MAX_TOKENS = 120000L;
  static final long NUM_TOKENS_PER_HIT = 2000L;
  private final eH mAppFieldsDefaultProvider;
  private final eI mClientIdDefaultProvider;
  private final fE mHandler;
  private long mLastTrackTime;
  private final String mName;
  private final Map<String, String> mParams = new HashMap();
  private final fz mScreenResolutionDefaultProvider;
  private long mTokens = 120000L;
  
  public Tracker(String paramString1, String paramString2, fE paramfE)
  {
    this(paramString1, paramString2, paramfE, eI.a(), fz.a(), eH.a());
  }
  
  @VisibleForTesting
  Tracker(String paramString1, String paramString2, fE paramfE, eI parameI, fz paramfz, eH parameH)
  {
    if (TextUtils.isEmpty(paramString1)) {
      throw new IllegalArgumentException("Tracker name cannot be empty.");
    }
    mName = paramString1;
    mHandler = paramfE;
    mParams.put("&tid", paramString2);
    mParams.put("useSecure", "1");
    mClientIdDefaultProvider = parameI;
    mScreenResolutionDefaultProvider = paramfz;
    mAppFieldsDefaultProvider = parameH;
  }
  
  public String get(String paramString)
  {
    fl.a().a(fm.j);
    if (TextUtils.isEmpty(paramString)) {}
    do
    {
      return null;
      if (mParams.containsKey(paramString)) {
        return (String)mParams.get(paramString);
      }
      if (paramString.equals("&ul")) {
        return fF.a(Locale.getDefault());
      }
      if ((mClientIdDefaultProvider != null) && (mClientIdDefaultProvider.a(paramString))) {
        return mClientIdDefaultProvider.b(paramString);
      }
      if ((mScreenResolutionDefaultProvider != null) && (mScreenResolutionDefaultProvider.a(paramString))) {
        return mScreenResolutionDefaultProvider.b(paramString);
      }
    } while ((mAppFieldsDefaultProvider == null) || (!mAppFieldsDefaultProvider.a(paramString)));
    return mAppFieldsDefaultProvider.b(paramString);
  }
  
  public String getName()
  {
    fl.a().a(fm.ag);
    return mName;
  }
  
  public void send(Map<String, String> paramMap)
  {
    fl.a().a(fm.l);
    HashMap localHashMap = new HashMap();
    localHashMap.putAll(mParams);
    if (paramMap != null) {
      localHashMap.putAll(paramMap);
    }
    if (TextUtils.isEmpty((CharSequence)localHashMap.get("&tid"))) {
      fq.d(String.format("Missing tracking id (%s) parameter.", new Object[] { "&tid" }));
    }
    String str = (String)localHashMap.get("&t");
    paramMap = str;
    if (TextUtils.isEmpty(str))
    {
      fq.d(String.format("Missing hit type (%s) parameter.", new Object[] { "&t" }));
      paramMap = "";
    }
    if ((!paramMap.equals("transaction")) && (!paramMap.equals("item")) && (!tokensAvailable()))
    {
      fq.d("Too many hits sent too quickly, rate limiting invoked.");
      return;
    }
    mHandler.a(localHashMap);
  }
  
  public void set(String paramString1, String paramString2)
  {
    fl.a().a(fm.k);
    if (paramString2 == null)
    {
      mParams.remove(paramString1);
      return;
    }
    mParams.put(paramString1, paramString2);
  }
  
  @VisibleForTesting
  void setLastTrackTime(long paramLong)
  {
    mLastTrackTime = paramLong;
  }
  
  @VisibleForTesting
  void setTokens(long paramLong)
  {
    mTokens = paramLong;
  }
  
  /* Error */
  @VisibleForTesting
  boolean tokensAvailable()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: invokestatic 213	java/lang/System:currentTimeMillis	()J
    //   5: lstore_1
    //   6: aload_0
    //   7: getfield 59	com/google/analytics/tracking/android/Tracker:mTokens	J
    //   10: ldc2_w 7
    //   13: lcmp
    //   14: ifge +32 -> 46
    //   17: lload_1
    //   18: aload_0
    //   19: getfield 206	com/google/analytics/tracking/android/Tracker:mLastTrackTime	J
    //   22: lsub
    //   23: lstore_3
    //   24: lload_3
    //   25: lconst_0
    //   26: lcmp
    //   27: ifle +19 -> 46
    //   30: aload_0
    //   31: ldc2_w 7
    //   34: lload_3
    //   35: aload_0
    //   36: getfield 59	com/google/analytics/tracking/android/Tracker:mTokens	J
    //   39: ladd
    //   40: invokestatic 219	java/lang/Math:min	(JJ)J
    //   43: putfield 59	com/google/analytics/tracking/android/Tracker:mTokens	J
    //   46: aload_0
    //   47: lload_1
    //   48: putfield 206	com/google/analytics/tracking/android/Tracker:mLastTrackTime	J
    //   51: aload_0
    //   52: getfield 59	com/google/analytics/tracking/android/Tracker:mTokens	J
    //   55: ldc2_w 10
    //   58: lcmp
    //   59: iflt +23 -> 82
    //   62: aload_0
    //   63: aload_0
    //   64: getfield 59	com/google/analytics/tracking/android/Tracker:mTokens	J
    //   67: ldc2_w 10
    //   70: lsub
    //   71: putfield 59	com/google/analytics/tracking/android/Tracker:mTokens	J
    //   74: iconst_1
    //   75: istore 5
    //   77: aload_0
    //   78: monitorexit
    //   79: iload 5
    //   81: ireturn
    //   82: ldc -35
    //   84: invokestatic 172	fq:d	(Ljava/lang/String;)V
    //   87: iconst_0
    //   88: istore 5
    //   90: goto -13 -> 77
    //   93: astore 6
    //   95: aload_0
    //   96: monitorexit
    //   97: aload 6
    //   99: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	100	0	this	Tracker
    //   5	43	1	l1	long
    //   23	12	3	l2	long
    //   75	14	5	bool	boolean
    //   93	5	6	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	24	93	finally
    //   30	46	93	finally
    //   46	74	93	finally
    //   82	87	93	finally
  }
}

/* Location:
 * Qualified Name:     com.google.analytics.tracking.android.Tracker
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */