import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build.VERSION;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;

class tl
{
  private final Context a;
  private final Boolean b;
  private final Boolean c;
  private final DisplayMetrics d;
  private final String e;
  private final Integer f;
  
  /* Error */
  public tl(Context paramContext)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aload_0
    //   4: invokespecial 28	java/lang/Object:<init>	()V
    //   7: aload_0
    //   8: aload_1
    //   9: putfield 30	tl:a	Landroid/content/Context;
    //   12: aload_0
    //   13: getfield 30	tl:a	Landroid/content/Context;
    //   16: invokevirtual 36	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   19: astore 6
    //   21: aload 6
    //   23: aload_0
    //   24: getfield 30	tl:a	Landroid/content/Context;
    //   27: invokevirtual 40	android/content/Context:getPackageName	()Ljava/lang/String;
    //   30: iconst_0
    //   31: invokevirtual 46	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   34: astore_3
    //   35: aload_3
    //   36: getfield 51	android/content/pm/PackageInfo:versionName	Ljava/lang/String;
    //   39: astore_1
    //   40: aload_3
    //   41: getfield 55	android/content/pm/PackageInfo:versionCode	I
    //   44: istore_2
    //   45: iload_2
    //   46: invokestatic 61	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   49: astore 5
    //   51: aload_1
    //   52: astore_3
    //   53: aload 5
    //   55: astore_1
    //   56: aload_0
    //   57: aload_3
    //   58: putfield 63	tl:e	Ljava/lang/String;
    //   61: aload_0
    //   62: aload_1
    //   63: putfield 65	tl:f	Ljava/lang/Integer;
    //   66: aload 6
    //   68: invokevirtual 69	java/lang/Object:getClass	()Ljava/lang/Class;
    //   71: astore_1
    //   72: aload_1
    //   73: ldc 71
    //   75: iconst_1
    //   76: anewarray 73	java/lang/Class
    //   79: dup
    //   80: iconst_0
    //   81: ldc 75
    //   83: aastore
    //   84: invokevirtual 79	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   87: astore_1
    //   88: aload_1
    //   89: ifnull +149 -> 238
    //   92: aload_1
    //   93: aload 6
    //   95: iconst_1
    //   96: anewarray 4	java/lang/Object
    //   99: dup
    //   100: iconst_0
    //   101: ldc 81
    //   103: aastore
    //   104: invokevirtual 87	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   107: checkcast 89	java/lang/Boolean
    //   110: astore 5
    //   112: aload_1
    //   113: aload 6
    //   115: iconst_1
    //   116: anewarray 4	java/lang/Object
    //   119: dup
    //   120: iconst_0
    //   121: ldc 91
    //   123: aastore
    //   124: invokevirtual 87	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   127: checkcast 89	java/lang/Boolean
    //   130: astore_3
    //   131: aload 5
    //   133: astore_1
    //   134: aload_0
    //   135: aload_1
    //   136: putfield 93	tl:b	Ljava/lang/Boolean;
    //   139: aload_0
    //   140: aload_3
    //   141: putfield 95	tl:c	Ljava/lang/Boolean;
    //   144: aload_0
    //   145: new 97	android/util/DisplayMetrics
    //   148: dup
    //   149: invokespecial 98	android/util/DisplayMetrics:<init>	()V
    //   152: putfield 100	tl:d	Landroid/util/DisplayMetrics;
    //   155: aload_0
    //   156: getfield 30	tl:a	Landroid/content/Context;
    //   159: ldc 102
    //   161: invokevirtual 106	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   164: checkcast 108	android/view/WindowManager
    //   167: invokeinterface 112 1 0
    //   172: aload_0
    //   173: getfield 100	tl:d	Landroid/util/DisplayMetrics;
    //   176: invokevirtual 118	android/view/Display:getMetrics	(Landroid/util/DisplayMetrics;)V
    //   179: return
    //   180: astore_1
    //   181: aconst_null
    //   182: astore_1
    //   183: aload_1
    //   184: astore_3
    //   185: aconst_null
    //   186: astore_1
    //   187: goto -131 -> 56
    //   190: astore_1
    //   191: aconst_null
    //   192: astore_1
    //   193: goto -105 -> 88
    //   196: astore_1
    //   197: aconst_null
    //   198: astore_1
    //   199: aload 4
    //   201: astore_3
    //   202: goto -68 -> 134
    //   205: astore_1
    //   206: aload 5
    //   208: astore_1
    //   209: aload 4
    //   211: astore_3
    //   212: goto -78 -> 134
    //   215: astore_1
    //   216: aconst_null
    //   217: astore_1
    //   218: aload 4
    //   220: astore_3
    //   221: goto -87 -> 134
    //   224: astore_1
    //   225: aload 5
    //   227: astore_1
    //   228: aload 4
    //   230: astore_3
    //   231: goto -97 -> 134
    //   234: astore_3
    //   235: goto -52 -> 183
    //   238: aconst_null
    //   239: astore_1
    //   240: aload 4
    //   242: astore_3
    //   243: goto -109 -> 134
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	246	0	this	tl
    //   0	246	1	paramContext	Context
    //   44	2	2	i	int
    //   34	197	3	localObject1	Object
    //   234	1	3	localNameNotFoundException	android.content.pm.PackageManager.NameNotFoundException
    //   242	1	3	localObject2	Object
    //   1	240	4	localObject3	Object
    //   49	177	5	localObject4	Object
    //   19	95	6	localPackageManager	PackageManager
    // Exception table:
    //   from	to	target	type
    //   21	40	180	android/content/pm/PackageManager$NameNotFoundException
    //   72	88	190	java/lang/NoSuchMethodException
    //   92	112	196	java/lang/IllegalAccessException
    //   112	131	205	java/lang/IllegalAccessException
    //   92	112	215	java/lang/reflect/InvocationTargetException
    //   112	131	224	java/lang/reflect/InvocationTargetException
    //   40	45	234	android/content/pm/PackageManager$NameNotFoundException
  }
  
  public String a()
  {
    return e;
  }
  
  public boolean b()
  {
    return b.booleanValue();
  }
  
  public boolean c()
  {
    return c.booleanValue();
  }
  
  public DisplayMetrics d()
  {
    return d;
  }
  
  public String e()
  {
    TelephonyManager localTelephonyManager = (TelephonyManager)a.getSystemService("phone");
    if (localTelephonyManager != null) {
      return localTelephonyManager.getNetworkOperatorName();
    }
    return null;
  }
  
  public Boolean f()
  {
    Boolean localBoolean = null;
    if (a.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == 0) {
      localBoolean = Boolean.valueOf(((ConnectivityManager)a.getSystemService("connectivity")).getNetworkInfo(1).isConnected());
    }
    return localBoolean;
  }
  
  public Boolean g()
  {
    Boolean localBoolean = null;
    try
    {
      BluetoothAdapter localBluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
      if (localBluetoothAdapter != null)
      {
        boolean bool = localBluetoothAdapter.isEnabled();
        localBoolean = Boolean.valueOf(bool);
      }
      return localBoolean;
    }
    catch (SecurityException localSecurityException) {}
    return null;
  }
  
  public String h()
  {
    String str = null;
    if (Build.VERSION.SDK_INT >= 8)
    {
      str = "none";
      if ((Build.VERSION.SDK_INT < 18) || (!a.getPackageManager().hasSystemFeature("android.hardware.bluetooth_le"))) {
        break label41;
      }
      str = "ble";
    }
    label41:
    while (!a.getPackageManager().hasSystemFeature("android.hardware.bluetooth")) {
      return str;
    }
    return "classic";
  }
}

/* Location:
 * Qualified Name:     tl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */