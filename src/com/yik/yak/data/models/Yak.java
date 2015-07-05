package com.yik.yak.data.models;

import Ap;
import Aq;
import Aw;
import Gs;
import Gx;
import android.content.Context;
import android.content.Intent;
import android.widget.Toast;
import com.yik.yak.ui.activity.YakDetailActivity;
import com.yik.yak.ui.activity.YikYakDialog;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TreeMap;
import wP;
import xo;
import xv;
import zJ;
import zQ;
import zY;

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
    //   0: aload_0
    //   1: invokestatic 176	Aq:a	(Landroid/content/Context;)LAq;
    //   4: invokevirtual 180	Aq:f	()Lcom/yik/yak/data/models/YakkerLocation;
    //   7: astore 5
    //   9: new 182	java/util/TreeMap
    //   12: dup
    //   13: invokespecial 183	java/util/TreeMap:<init>	()V
    //   16: astore 6
    //   18: aload 6
    //   20: ldc -71
    //   22: invokestatic 191	zQ:c	()Ljava/lang/String;
    //   25: invokevirtual 195	java/util/TreeMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   28: pop
    //   29: aload 6
    //   31: ldc -59
    //   33: aload_1
    //   34: invokevirtual 195	java/util/TreeMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   37: pop
    //   38: new 199	android/os/StrictMode$ThreadPolicy$Builder
    //   41: dup
    //   42: invokespecial 200	android/os/StrictMode$ThreadPolicy$Builder:<init>	()V
    //   45: invokevirtual 204	android/os/StrictMode$ThreadPolicy$Builder:permitAll	()Landroid/os/StrictMode$ThreadPolicy$Builder;
    //   48: invokevirtual 208	android/os/StrictMode$ThreadPolicy$Builder:build	()Landroid/os/StrictMode$ThreadPolicy;
    //   51: invokestatic 214	android/os/StrictMode:setThreadPolicy	(Landroid/os/StrictMode$ThreadPolicy;)V
    //   54: aconst_null
    //   55: astore_3
    //   56: new 216	java/lang/StringBuilder
    //   59: dup
    //   60: invokespecial 217	java/lang/StringBuilder:<init>	()V
    //   63: astore 4
    //   65: new 219	java/net/URL
    //   68: dup
    //   69: ldc -35
    //   71: aload 6
    //   73: aload 5
    //   75: invokestatic 226	zY:a	(Ljava/lang/String;Ljava/util/TreeMap;Lcom/yik/yak/data/models/YakkerLocation;)Ljava/lang/String;
    //   78: invokespecial 227	java/net/URL:<init>	(Ljava/lang/String;)V
    //   81: invokevirtual 231	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   84: checkcast 233	java/net/HttpURLConnection
    //   87: astore_1
    //   88: new 235	java/io/InputStreamReader
    //   91: dup
    //   92: aload_1
    //   93: invokevirtual 239	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   96: invokespecial 242	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   99: astore_3
    //   100: sipush 1024
    //   103: newarray <illegal type>
    //   105: astore 5
    //   107: aload_3
    //   108: aload 5
    //   110: invokevirtual 246	java/io/InputStreamReader:read	([C)I
    //   113: istore_2
    //   114: iload_2
    //   115: iconst_m1
    //   116: if_icmpeq +48 -> 164
    //   119: aload 4
    //   121: aload 5
    //   123: iconst_0
    //   124: iload_2
    //   125: invokevirtual 250	java/lang/StringBuilder:append	([CII)Ljava/lang/StringBuilder;
    //   128: pop
    //   129: goto -22 -> 107
    //   132: astore_3
    //   133: aload_1
    //   134: astore_0
    //   135: aload_3
    //   136: astore_1
    //   137: new 2	com/yik/yak/data/models/Yak
    //   140: dup
    //   141: invokespecial 251	com/yik/yak/data/models/Yak:<init>	()V
    //   144: astore_3
    //   145: aload_3
    //   146: iconst_1
    //   147: putfield 134	com/yik/yak/data/models/Yak:HasError	Z
    //   150: aload_1
    //   151: invokevirtual 254	java/lang/Exception:printStackTrace	()V
    //   154: aload_0
    //   155: ifnull +7 -> 162
    //   158: aload_0
    //   159: invokevirtual 257	java/net/HttpURLConnection:disconnect	()V
    //   162: aload_3
    //   163: areturn
    //   164: new 259	org/json/JSONObject
    //   167: dup
    //   168: aload 4
    //   170: invokevirtual 262	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   173: invokespecial 263	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   176: ldc_w 265
    //   179: invokevirtual 269	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   182: astore_3
    //   183: aload_3
    //   184: invokevirtual 275	org/json/JSONArray:length	()I
    //   187: ifle +38 -> 225
    //   190: aload_3
    //   191: iconst_0
    //   192: invokevirtual 279	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   195: astore_3
    //   196: new 281	Aj
    //   199: dup
    //   200: invokespecial 282	Aj:<init>	()V
    //   203: aload_3
    //   204: invokevirtual 285	Aj:a	(Lorg/json/JSONObject;)Lcom/yik/yak/data/models/Yak;
    //   207: astore_3
    //   208: aload_3
    //   209: aload_0
    //   210: putfield 142	com/yik/yak/data/models/Yak:mContext	Landroid/content/Context;
    //   213: aload_3
    //   214: astore_0
    //   215: aload_1
    //   216: ifnull +56 -> 272
    //   219: aload_1
    //   220: invokevirtual 257	java/net/HttpURLConnection:disconnect	()V
    //   223: aload_0
    //   224: areturn
    //   225: new 2	com/yik/yak/data/models/Yak
    //   228: dup
    //   229: invokespecial 251	com/yik/yak/data/models/Yak:<init>	()V
    //   232: astore_0
    //   233: aload_0
    //   234: iconst_1
    //   235: putfield 134	com/yik/yak/data/models/Yak:HasError	Z
    //   238: goto -23 -> 215
    //   241: astore_0
    //   242: aload_1
    //   243: ifnull +7 -> 250
    //   246: aload_1
    //   247: invokevirtual 257	java/net/HttpURLConnection:disconnect	()V
    //   250: aload_0
    //   251: athrow
    //   252: astore_0
    //   253: aload_3
    //   254: astore_1
    //   255: goto -13 -> 242
    //   258: astore_3
    //   259: aload_0
    //   260: astore_1
    //   261: aload_3
    //   262: astore_0
    //   263: goto -21 -> 242
    //   266: astore_1
    //   267: aconst_null
    //   268: astore_0
    //   269: goto -132 -> 137
    //   272: aload_0
    //   273: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	274	0	paramContext	Context
    //   0	274	1	paramString	String
    //   113	12	2	i	int
    //   55	53	3	localInputStreamReader	java.io.InputStreamReader
    //   132	4	3	localException	Exception
    //   144	110	3	localObject1	Object
    //   258	4	3	localObject2	Object
    //   63	106	4	localStringBuilder	StringBuilder
    //   7	115	5	localObject3	Object
    //   16	56	6	localTreeMap	TreeMap
    // Exception table:
    //   from	to	target	type
    //   88	107	132	java/lang/Exception
    //   107	114	132	java/lang/Exception
    //   119	129	132	java/lang/Exception
    //   164	213	132	java/lang/Exception
    //   225	238	132	java/lang/Exception
    //   88	107	241	finally
    //   107	114	241	finally
    //   119	129	241	finally
    //   164	213	241	finally
    //   225	238	241	finally
    //   65	88	252	finally
    //   137	154	258	finally
    //   65	88	266	java/lang/Exception
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
      paramString = zY.a(Aw.a().f(), paramString, paramTreeMap, paramYakkerLocation);
      paramString = new xv().a(paramString).b();
      zY.a(true).a(paramString).a(new Ap(this));
      return;
    }
  }
  
  private void showDownvoteEscalationDialogIfNeeded()
  {
    Object localObject;
    int i;
    if (!zJ.a(1))
    {
      localObject = mContext.getString(2131230959);
      if (!IsComment) {
        break label75;
      }
      i = 2131230954;
    }
    for (;;)
    {
      String str1 = mContext.getString(i);
      String str2 = mContext.getString(2131231006);
      localObject = YikYakDialog.a(mContext, (String)localObject, str1, str2);
      mContext.startActivity((Intent)localObject);
      zJ.b(1);
      return;
      label75:
      if ((mContext instanceof YakDetailActivity)) {
        i = 2131230955;
      } else {
        i = 2131230956;
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
      Toast.makeText(mContext, 2131231024, 0).show();
      return false;
    }
    boolean bool = Aw.a().a("voting", "enableVoteChanging", true);
    TreeMap localTreeMap = new TreeMap();
    YakkerLocation localYakkerLocation = Aq.a(mContext).f();
    localTreeMap.put("messageID", String.valueOf(ID));
    localTreeMap.put("userID", zQ.c());
    String str;
    if (IsComment)
    {
      str = "downvoteComment";
      localTreeMap.put("commentID", CommentID);
      if ((Liked != -1) || (!bool)) {
        break label165;
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
      label165:
      if (Liked == 0)
      {
        Liked = -1;
        NumberOfLikes -= 1;
        sendRequest(str, localTreeMap, localYakkerLocation);
        Gs.a().a(Gx.b, this, "Tap");
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
        Toast.makeText(mContext, 2131231085, 0).show();
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
    //   0: new 216	java/lang/StringBuilder
    //   3: dup
    //   4: invokespecial 217	java/lang/StringBuilder:<init>	()V
    //   7: astore_1
    //   8: aload_0
    //   9: getfield 142	com/yik/yak/data/models/Yak:mContext	Landroid/content/Context;
    //   12: ldc_w 423
    //   15: invokevirtual 427	android/content/Context:openFileInput	(Ljava/lang/String;)Ljava/io/FileInputStream;
    //   18: astore_2
    //   19: aload_2
    //   20: ifnull +41 -> 61
    //   23: new 429	java/io/BufferedReader
    //   26: dup
    //   27: new 235	java/io/InputStreamReader
    //   30: dup
    //   31: aload_2
    //   32: invokespecial 242	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   35: invokespecial 432	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   38: astore_3
    //   39: aload_3
    //   40: invokevirtual 435	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   43: astore 4
    //   45: aload 4
    //   47: ifnull +90 -> 137
    //   50: aload_1
    //   51: aload 4
    //   53: invokevirtual 438	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   56: pop
    //   57: goto -18 -> 39
    //   60: astore_2
    //   61: aload_1
    //   62: ifnull +13 -> 75
    //   65: aload_1
    //   66: invokevirtual 262	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   69: invokevirtual 439	java/lang/String:length	()I
    //   72: ifne +75 -> 147
    //   75: new 259	org/json/JSONObject
    //   78: dup
    //   79: ldc_w 441
    //   82: invokespecial 263	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   85: astore_1
    //   86: aload_1
    //   87: ldc_w 265
    //   90: invokevirtual 269	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   93: new 281	Aj
    //   96: dup
    //   97: invokespecial 282	Aj:<init>	()V
    //   100: aload_0
    //   101: invokevirtual 444	Aj:b	(Lcom/yik/yak/data/models/Yak;)Lorg/json/JSONObject;
    //   104: invokevirtual 447	org/json/JSONArray:put	(Ljava/lang/Object;)Lorg/json/JSONArray;
    //   107: pop
    //   108: aload_0
    //   109: getfield 142	com/yik/yak/data/models/Yak:mContext	Landroid/content/Context;
    //   112: ldc_w 423
    //   115: iconst_0
    //   116: invokevirtual 451	android/content/Context:openFileOutput	(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    //   119: astore_2
    //   120: aload_2
    //   121: aload_1
    //   122: invokevirtual 452	org/json/JSONObject:toString	()Ljava/lang/String;
    //   125: invokevirtual 456	java/lang/String:getBytes	()[B
    //   128: invokevirtual 462	java/io/FileOutputStream:write	([B)V
    //   131: aload_2
    //   132: invokevirtual 465	java/io/FileOutputStream:close	()V
    //   135: iconst_1
    //   136: ireturn
    //   137: aload_2
    //   138: invokevirtual 468	java/io/InputStream:close	()V
    //   141: goto -80 -> 61
    //   144: astore_1
    //   145: iconst_0
    //   146: ireturn
    //   147: new 259	org/json/JSONObject
    //   150: dup
    //   151: aload_1
    //   152: invokevirtual 262	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   155: invokespecial 263	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   158: astore_1
    //   159: goto -73 -> 86
    //   162: astore_1
    //   163: aload_1
    //   164: invokevirtual 469	org/json/JSONException:printStackTrace	()V
    //   167: iconst_0
    //   168: ireturn
    //   169: astore_1
    //   170: aload_1
    //   171: invokevirtual 469	org/json/JSONException:printStackTrace	()V
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
      Toast.makeText(mContext, 2131231024, 0).show();
      return false;
    }
    boolean bool = Aw.a().a("voting", "enableVoteChanging", true);
    TreeMap localTreeMap = new TreeMap();
    YakkerLocation localYakkerLocation = Aq.a(mContext).f();
    localTreeMap.put("userID", zQ.c());
    String str;
    if (IsComment)
    {
      str = "likeComment";
      localTreeMap.put("commentID", CommentID);
      if ((Liked != -1) || (!bool)) {
        break label152;
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
      label152:
      if (Liked == 0)
      {
        Liked = 1;
        NumberOfLikes += 1;
        sendRequest(str, localTreeMap, localYakkerLocation);
        if (paramBoolean)
        {
          Gs.a().a(Gx.a, this, "DoubleTap");
          paramBoolean = true;
        }
        else
        {
          Gs.a().a(Gx.a, this, "Tap");
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
        Toast.makeText(mContext, 2131231085, 0).show();
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