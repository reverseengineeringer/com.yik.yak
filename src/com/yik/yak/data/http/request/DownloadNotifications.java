package com.yik.yak.data.http.request;

import AA;
import AJ;
import Aa;

public class DownloadNotifications
  extends BaseRequest
{
  private AA mNotificationApi;
  
  public DownloadNotifications(AA paramAA)
  {
    mNotificationApi = paramAA;
  }
  
  /* Error */
  public Object buildResponse(Object paramObject)
  {
    // Byte code:
    //   0: aload_1
    //   1: checkcast 20	org/json/JSONObject
    //   4: astore_3
    //   5: new 22	java/util/ArrayList
    //   8: dup
    //   9: invokespecial 23	java/util/ArrayList:<init>	()V
    //   12: astore_1
    //   13: aload_3
    //   14: ldc 25
    //   16: invokevirtual 29	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   19: astore_3
    //   20: new 31	At
    //   23: dup
    //   24: invokespecial 32	At:<init>	()V
    //   27: astore 4
    //   29: iconst_0
    //   30: istore_2
    //   31: iload_2
    //   32: aload_3
    //   33: invokevirtual 38	org/json/JSONArray:length	()I
    //   36: if_icmpge +84 -> 120
    //   39: aload 4
    //   41: aload_3
    //   42: iload_2
    //   43: invokevirtual 42	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   46: invokevirtual 46	At:a	(Lorg/json/JSONObject;)Lcom/yik/yak/data/models/Notification;
    //   49: astore 5
    //   51: aload 5
    //   53: invokevirtual 52	com/yik/yak/data/models/Notification:getStatus	()Ljava/lang/String;
    //   56: ldc 54
    //   58: invokevirtual 60	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   61: ifne +22 -> 83
    //   64: aload 5
    //   66: invokevirtual 52	com/yik/yak/data/models/Notification:getStatus	()Ljava/lang/String;
    //   69: ldc 62
    //   71: invokevirtual 60	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   74: ifne +9 -> 83
    //   77: invokestatic 68	Aa:s	()Z
    //   80: ifne +10 -> 90
    //   83: aload_1
    //   84: aload 5
    //   86: invokevirtual 71	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   89: pop
    //   90: iload_2
    //   91: iconst_1
    //   92: iadd
    //   93: istore_2
    //   94: goto -63 -> 31
    //   97: astore_1
    //   98: aload_1
    //   99: invokevirtual 74	org/json/JSONException:printStackTrace	()V
    //   102: new 22	java/util/ArrayList
    //   105: dup
    //   106: invokespecial 23	java/util/ArrayList:<init>	()V
    //   109: areturn
    //   110: astore 5
    //   112: aload 5
    //   114: invokevirtual 74	org/json/JSONException:printStackTrace	()V
    //   117: goto -27 -> 90
    //   120: aload_1
    //   121: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	122	0	this	DownloadNotifications
    //   0	122	1	paramObject	Object
    //   30	64	2	i	int
    //   4	38	3	localObject	Object
    //   27	13	4	localAt	At
    //   49	36	5	localNotification	com.yik.yak.data.models.Notification
    //   110	3	5	localJSONException	org.json.JSONException
    // Exception table:
    //   from	to	target	type
    //   13	20	97	org/json/JSONException
    //   39	51	110	org/json/JSONException
  }
  
  public MethodType getMethodType()
  {
    return MethodType.GET;
  }
  
  public String getUrl()
  {
    String str = AJ.a().i() + "/" + mNotificationApi.toString() + "/";
    switch (DownloadNotifications.1.$SwitchMap$com$yik$yak$data$models$Notification$API[mNotificationApi.ordinal()])
    {
    default: 
      return str;
    }
    return str + Aa.g();
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.data.http.request.DownloadNotifications
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */