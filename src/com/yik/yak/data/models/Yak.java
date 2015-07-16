package com.yik.yak.data.models;

import AC;
import AD;
import AJ;
import Aa;
import Aj;
import Ha;
import He;
import android.content.Context;
import android.content.Intent;
import android.widget.Toast;
import com.yik.yak.ui.activity.YakDetailActivity;
import com.yik.yak.ui.dialog.YikYakDialog;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TreeMap;
import wY;
import xF;
import xy;
import zT;

public class Yak
  extends YikYakObject
{
  public String BackgroundId = "";
  public boolean CanReply = true;
  public boolean CanReport = true;
  public boolean CanVote = true;
  public String Comment = "";
  public String CommentID = "0";
  public int Comments = -1;
  public String Content = "";
  public int DeliveryID = 0;
  public boolean HasError = false;
  public int HidePin = 0;
  public String ID = "0";
  public double ImageHeight = 0.0D;
  public double ImageWidth = 0.0D;
  public boolean IsBasecamp = false;
  public boolean IsComment = false;
  public boolean IsDeleted = false;
  public boolean IsOriginalPoster = false;
  public double Latitude = 0.0D;
  public int Liked = 0;
  public String LinkProvider = "";
  public String LinkSummary = "";
  public String LinkThumbNailUrl = "";
  public String LinkTitle = "";
  public String LinkUrl = "";
  public double Longitude = 0.0D;
  public String NavigationUrl;
  public int NumberOfLikes = 0;
  public String OverlayId = "";
  public String PosterID = "";
  public boolean ReadOnly = false;
  public boolean ShowHandle = false;
  public String TextStyle = "";
  public String TimePosted = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
  public int Type = 0;
  public int ViewResourceID = 0;
  public String YakkerHandle = "";
  public String YakkerID = "";
  public Context mContext = null;
  public boolean mLoadingYak = false;
  public Yak parentYak = null;
  
  public static String getYakTypeName(int paramInt)
  {
    switch (paramInt)
    {
    case 0: 
    default: 
      return "Normal";
    case -1: 
      return "Custom";
    case 1: 
      return "System";
    case 2: 
      return "Banned";
    case 3: 
      return "Warning";
    case 4: 
      return "Sponsored";
    case 5: 
      return "Link";
    }
    return "Photo";
  }
  
  public static Yak initializeYak(Context paramContext, Yak paramYak)
  {
    return initializeYak(paramContext, paramYak, false, false, false, false);
  }
  
  public static Yak initializeYak(Context paramContext, Yak paramYak, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    return initializeYak(paramContext, paramYak, paramBoolean1, paramBoolean2, paramBoolean3, false);
  }
  
  public static Yak initializeYak(Context paramContext, Yak paramYak, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4)
  {
    mContext = paramContext;
    CanVote = paramBoolean1;
    CanReply = paramBoolean2;
    CanReport = paramBoolean3;
    IsBasecamp = paramBoolean4;
    return paramYak;
  }
  
  /* Error */
  public static Yak initializeYak(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: invokestatic 187	AD:a	()LAD;
    //   3: invokevirtual 191	AD:g	()Lcom/yik/yak/data/models/YakkerLocation;
    //   6: astore 5
    //   8: new 193	java/util/TreeMap
    //   11: dup
    //   12: invokespecial 194	java/util/TreeMap:<init>	()V
    //   15: astore 6
    //   17: aload 6
    //   19: ldc -60
    //   21: invokestatic 201	Aa:g	()Ljava/lang/String;
    //   24: invokevirtual 205	java/util/TreeMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   27: pop
    //   28: aload 6
    //   30: ldc -49
    //   32: aload_1
    //   33: invokevirtual 205	java/util/TreeMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   36: pop
    //   37: new 209	android/os/StrictMode$ThreadPolicy$Builder
    //   40: dup
    //   41: invokespecial 210	android/os/StrictMode$ThreadPolicy$Builder:<init>	()V
    //   44: invokevirtual 214	android/os/StrictMode$ThreadPolicy$Builder:permitAll	()Landroid/os/StrictMode$ThreadPolicy$Builder;
    //   47: invokevirtual 218	android/os/StrictMode$ThreadPolicy$Builder:build	()Landroid/os/StrictMode$ThreadPolicy;
    //   50: invokestatic 224	android/os/StrictMode:setThreadPolicy	(Landroid/os/StrictMode$ThreadPolicy;)V
    //   53: aconst_null
    //   54: astore_3
    //   55: new 226	java/lang/StringBuilder
    //   58: dup
    //   59: invokespecial 227	java/lang/StringBuilder:<init>	()V
    //   62: astore 4
    //   64: new 229	java/net/URL
    //   67: dup
    //   68: ldc -25
    //   70: aload 6
    //   72: aload 5
    //   74: invokestatic 236	Aj:a	(Ljava/lang/String;Ljava/util/TreeMap;Lcom/yik/yak/data/models/YakkerLocation;)Ljava/lang/String;
    //   77: invokespecial 237	java/net/URL:<init>	(Ljava/lang/String;)V
    //   80: invokevirtual 241	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   83: checkcast 243	java/net/HttpURLConnection
    //   86: astore_1
    //   87: new 245	java/io/InputStreamReader
    //   90: dup
    //   91: aload_1
    //   92: invokevirtual 249	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   95: invokespecial 252	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   98: astore_3
    //   99: sipush 1024
    //   102: newarray <illegal type>
    //   104: astore 5
    //   106: aload_3
    //   107: aload 5
    //   109: invokevirtual 256	java/io/InputStreamReader:read	([C)I
    //   112: istore_2
    //   113: iload_2
    //   114: iconst_m1
    //   115: if_icmpeq +48 -> 163
    //   118: aload 4
    //   120: aload 5
    //   122: iconst_0
    //   123: iload_2
    //   124: invokevirtual 260	java/lang/StringBuilder:append	([CII)Ljava/lang/StringBuilder;
    //   127: pop
    //   128: goto -22 -> 106
    //   131: astore_3
    //   132: aload_1
    //   133: astore_0
    //   134: aload_3
    //   135: astore_1
    //   136: new 2	com/yik/yak/data/models/Yak
    //   139: dup
    //   140: invokespecial 261	com/yik/yak/data/models/Yak:<init>	()V
    //   143: astore_3
    //   144: aload_3
    //   145: iconst_1
    //   146: putfield 143	com/yik/yak/data/models/Yak:HasError	Z
    //   149: aload_1
    //   150: invokevirtual 264	java/lang/Exception:printStackTrace	()V
    //   153: aload_0
    //   154: ifnull +7 -> 161
    //   157: aload_0
    //   158: invokevirtual 267	java/net/HttpURLConnection:disconnect	()V
    //   161: aload_3
    //   162: areturn
    //   163: new 269	org/json/JSONObject
    //   166: dup
    //   167: aload 4
    //   169: invokevirtual 272	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   172: invokespecial 273	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   175: ldc_w 275
    //   178: invokevirtual 279	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   181: astore_3
    //   182: aload_3
    //   183: invokevirtual 285	org/json/JSONArray:length	()I
    //   186: ifle +38 -> 224
    //   189: aload_3
    //   190: iconst_0
    //   191: invokevirtual 289	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   194: astore_3
    //   195: new 291	Av
    //   198: dup
    //   199: invokespecial 292	Av:<init>	()V
    //   202: aload_3
    //   203: invokevirtual 295	Av:a	(Lorg/json/JSONObject;)Lcom/yik/yak/data/models/Yak;
    //   206: astore_3
    //   207: aload_3
    //   208: aload_0
    //   209: putfield 153	com/yik/yak/data/models/Yak:mContext	Landroid/content/Context;
    //   212: aload_3
    //   213: astore_0
    //   214: aload_1
    //   215: ifnull +56 -> 271
    //   218: aload_1
    //   219: invokevirtual 267	java/net/HttpURLConnection:disconnect	()V
    //   222: aload_0
    //   223: areturn
    //   224: new 2	com/yik/yak/data/models/Yak
    //   227: dup
    //   228: invokespecial 261	com/yik/yak/data/models/Yak:<init>	()V
    //   231: astore_0
    //   232: aload_0
    //   233: iconst_1
    //   234: putfield 143	com/yik/yak/data/models/Yak:HasError	Z
    //   237: goto -23 -> 214
    //   240: astore_0
    //   241: aload_1
    //   242: ifnull +7 -> 249
    //   245: aload_1
    //   246: invokevirtual 267	java/net/HttpURLConnection:disconnect	()V
    //   249: aload_0
    //   250: athrow
    //   251: astore_0
    //   252: aload_3
    //   253: astore_1
    //   254: goto -13 -> 241
    //   257: astore_3
    //   258: aload_0
    //   259: astore_1
    //   260: aload_3
    //   261: astore_0
    //   262: goto -21 -> 241
    //   265: astore_1
    //   266: aconst_null
    //   267: astore_0
    //   268: goto -132 -> 136
    //   271: aload_0
    //   272: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	273	0	paramContext	Context
    //   0	273	1	paramString	String
    //   112	12	2	i	int
    //   54	53	3	localInputStreamReader	java.io.InputStreamReader
    //   131	4	3	localException	Exception
    //   143	110	3	localObject1	Object
    //   257	4	3	localObject2	Object
    //   62	106	4	localStringBuilder	StringBuilder
    //   6	115	5	localObject3	Object
    //   15	56	6	localTreeMap	TreeMap
    // Exception table:
    //   from	to	target	type
    //   87	106	131	java/lang/Exception
    //   106	113	131	java/lang/Exception
    //   118	128	131	java/lang/Exception
    //   163	212	131	java/lang/Exception
    //   224	237	131	java/lang/Exception
    //   87	106	240	finally
    //   106	113	240	finally
    //   118	128	240	finally
    //   163	212	240	finally
    //   224	237	240	finally
    //   64	87	251	finally
    //   136	153	257	finally
    //   64	87	265	java/lang/Exception
  }
  
  private void sendRequest(String paramString, TreeMap<String, String> paramTreeMap, YakkerLocation paramYakkerLocation)
  {
    if (paramTreeMap != null) {
      if (!IsBasecamp) {
        break label74;
      }
    }
    label74:
    for (String str = "1";; str = "0")
    {
      paramTreeMap.put("bc", str);
      paramString = Aj.a(AJ.a().f(), paramString, paramTreeMap, paramYakkerLocation);
      paramString = new xF().a(paramString).b();
      Aj.a(true).a(paramString).a(new AC(this));
      return;
    }
  }
  
  private void showDownvoteEscalationDialogIfNeeded()
  {
    Object localObject;
    int i;
    if (!zT.a(1))
    {
      localObject = mContext.getString(2131230984);
      if (!IsComment) {
        break label75;
      }
      i = 2131230979;
    }
    for (;;)
    {
      String str1 = mContext.getString(i);
      String str2 = mContext.getString(2131231036);
      localObject = YikYakDialog.a(mContext, (String)localObject, str1, str2);
      mContext.startActivity((Intent)localObject);
      zT.b(1);
      return;
      label75:
      if ((mContext instanceof YakDetailActivity)) {
        i = 2131230980;
      } else {
        i = 2131230981;
      }
    }
  }
  
  public boolean deleteYak()
  {
    return false;
  }
  
  public boolean downvote()
  {
    showDownvoteEscalationDialogIfNeeded();
    if (!CanVote)
    {
      Toast.makeText(mContext, 2131231063, 0).show();
      return false;
    }
    boolean bool = AJ.a().a("voting", "enableVoteChanging", true);
    TreeMap localTreeMap = new TreeMap();
    YakkerLocation localYakkerLocation = AD.a().g();
    localTreeMap.put("messageID", String.valueOf(ID));
    localTreeMap.put("userID", Aa.g());
    String str;
    if (IsComment)
    {
      str = "downvoteComment";
      localTreeMap.put("commentID", CommentID);
      if ((Liked != -1) || (!bool)) {
        break label161;
      }
      Liked = 0;
      NumberOfLikes += 1;
      sendRequest(str, localTreeMap, localYakkerLocation);
      bool = true;
    }
    for (;;)
    {
      return bool;
      str = "downvoteMessage";
      localTreeMap.put("messageID", ID);
      break;
      label161:
      if (Liked == 0)
      {
        Liked = -1;
        NumberOfLikes -= 1;
        sendRequest(str, localTreeMap, localYakkerLocation);
        Ha.a().a(He.b, this, "Tap");
        bool = true;
      }
      else if ((Liked == 1) && (bool))
      {
        Liked = -1;
        NumberOfLikes -= 2;
        sendRequest(str, localTreeMap, localYakkerLocation);
        bool = true;
      }
      else
      {
        Toast.makeText(mContext, 2131231141, 0).show();
        bool = false;
      }
    }
  }
  
  public boolean reportYak()
  {
    return false;
  }
  
  /* Error */
  public boolean save()
  {
    // Byte code:
    //   0: new 226	java/lang/StringBuilder
    //   3: dup
    //   4: invokespecial 227	java/lang/StringBuilder:<init>	()V
    //   7: astore_1
    //   8: aload_0
    //   9: getfield 153	com/yik/yak/data/models/Yak:mContext	Landroid/content/Context;
    //   12: ldc_w 434
    //   15: invokevirtual 438	android/content/Context:openFileInput	(Ljava/lang/String;)Ljava/io/FileInputStream;
    //   18: astore_2
    //   19: aload_2
    //   20: ifnull +41 -> 61
    //   23: new 440	java/io/BufferedReader
    //   26: dup
    //   27: new 245	java/io/InputStreamReader
    //   30: dup
    //   31: aload_2
    //   32: invokespecial 252	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   35: invokespecial 443	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   38: astore_3
    //   39: aload_3
    //   40: invokevirtual 446	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   43: astore 4
    //   45: aload 4
    //   47: ifnull +90 -> 137
    //   50: aload_1
    //   51: aload 4
    //   53: invokevirtual 449	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   56: pop
    //   57: goto -18 -> 39
    //   60: astore_2
    //   61: aload_1
    //   62: ifnull +13 -> 75
    //   65: aload_1
    //   66: invokevirtual 272	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   69: invokevirtual 450	java/lang/String:length	()I
    //   72: ifne +75 -> 147
    //   75: new 269	org/json/JSONObject
    //   78: dup
    //   79: ldc_w 452
    //   82: invokespecial 273	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   85: astore_1
    //   86: aload_1
    //   87: ldc_w 275
    //   90: invokevirtual 279	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   93: new 291	Av
    //   96: dup
    //   97: invokespecial 292	Av:<init>	()V
    //   100: aload_0
    //   101: invokevirtual 455	Av:b	(Lcom/yik/yak/data/models/Yak;)Lorg/json/JSONObject;
    //   104: invokevirtual 458	org/json/JSONArray:put	(Ljava/lang/Object;)Lorg/json/JSONArray;
    //   107: pop
    //   108: aload_0
    //   109: getfield 153	com/yik/yak/data/models/Yak:mContext	Landroid/content/Context;
    //   112: ldc_w 434
    //   115: iconst_0
    //   116: invokevirtual 462	android/content/Context:openFileOutput	(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    //   119: astore_2
    //   120: aload_2
    //   121: aload_1
    //   122: invokevirtual 463	org/json/JSONObject:toString	()Ljava/lang/String;
    //   125: invokevirtual 467	java/lang/String:getBytes	()[B
    //   128: invokevirtual 473	java/io/FileOutputStream:write	([B)V
    //   131: aload_2
    //   132: invokevirtual 476	java/io/FileOutputStream:close	()V
    //   135: iconst_1
    //   136: ireturn
    //   137: aload_2
    //   138: invokevirtual 479	java/io/InputStream:close	()V
    //   141: goto -80 -> 61
    //   144: astore_1
    //   145: iconst_0
    //   146: ireturn
    //   147: new 269	org/json/JSONObject
    //   150: dup
    //   151: aload_1
    //   152: invokevirtual 272	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   155: invokespecial 273	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   158: astore_1
    //   159: goto -73 -> 86
    //   162: astore_1
    //   163: aload_1
    //   164: invokevirtual 480	org/json/JSONException:printStackTrace	()V
    //   167: iconst_0
    //   168: ireturn
    //   169: astore_1
    //   170: aload_1
    //   171: invokevirtual 480	org/json/JSONException:printStackTrace	()V
    //   174: iconst_0
    //   175: ireturn
    //   176: astore_1
    //   177: iconst_0
    //   178: ireturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	179	0	this	Yak
    //   7	115	1	localObject	Object
    //   144	8	1	localIOException	java.io.IOException
    //   158	1	1	localJSONObject	org.json.JSONObject
    //   162	2	1	localJSONException1	org.json.JSONException
    //   169	2	1	localJSONException2	org.json.JSONException
    //   176	1	1	localException	Exception
    //   18	14	2	localFileInputStream	java.io.FileInputStream
    //   60	1	2	localFileNotFoundException	java.io.FileNotFoundException
    //   119	19	2	localFileOutputStream	java.io.FileOutputStream
    //   38	2	3	localBufferedReader	java.io.BufferedReader
    //   43	9	4	str	String
    // Exception table:
    //   from	to	target	type
    //   8	19	60	java/io/FileNotFoundException
    //   23	39	60	java/io/FileNotFoundException
    //   39	45	60	java/io/FileNotFoundException
    //   50	57	60	java/io/FileNotFoundException
    //   137	141	60	java/io/FileNotFoundException
    //   8	19	144	java/io/IOException
    //   23	39	144	java/io/IOException
    //   39	45	144	java/io/IOException
    //   50	57	144	java/io/IOException
    //   137	141	144	java/io/IOException
    //   65	75	162	org/json/JSONException
    //   75	86	162	org/json/JSONException
    //   147	159	162	org/json/JSONException
    //   86	108	169	org/json/JSONException
    //   108	135	176	java/lang/Exception
  }
  
  public boolean sendYak()
  {
    return false;
  }
  
  public boolean upvote(boolean paramBoolean)
  {
    if (!CanVote)
    {
      Toast.makeText(mContext, 2131231063, 0).show();
      return false;
    }
    boolean bool = AJ.a().a("voting", "enableVoteChanging", true);
    TreeMap localTreeMap = new TreeMap();
    YakkerLocation localYakkerLocation = AD.a().g();
    localTreeMap.put("userID", Aa.g());
    String str;
    if (IsComment)
    {
      str = "likeComment";
      localTreeMap.put("commentID", CommentID);
      if ((Liked != -1) || (!bool)) {
        break label148;
      }
      Liked = 1;
      NumberOfLikes += 2;
      sendRequest(str, localTreeMap, localYakkerLocation);
      paramBoolean = true;
    }
    for (;;)
    {
      return paramBoolean;
      str = "likeMessage";
      localTreeMap.put("messageID", ID);
      break;
      label148:
      if (Liked == 0)
      {
        Liked = 1;
        NumberOfLikes += 1;
        sendRequest(str, localTreeMap, localYakkerLocation);
        if (paramBoolean)
        {
          Ha.a().a(He.a, this, "DoubleTap");
          paramBoolean = true;
        }
        else
        {
          Ha.a().a(He.a, this, "Tap");
          paramBoolean = true;
        }
      }
      else if ((Liked == 1) && (bool))
      {
        Liked = 0;
        NumberOfLikes -= 1;
        sendRequest(str, localTreeMap, localYakkerLocation);
        paramBoolean = true;
      }
      else
      {
        Toast.makeText(mContext, 2131231141, 0).show();
        paramBoolean = false;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.data.models.Yak
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */