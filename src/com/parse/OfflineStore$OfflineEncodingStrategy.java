package com.parse;

import R;
import java.util.ArrayList;

class OfflineStore$OfflineEncodingStrategy
  implements ParseObjectEncodingStrategy
{
  private ParseSQLiteDatabase db;
  private ArrayList<R<Void>> tasks = new ArrayList();
  private final Object tasksLock = new Object();
  
  public OfflineStore$OfflineEncodingStrategy(OfflineStore paramOfflineStore, ParseSQLiteDatabase paramParseSQLiteDatabase)
  {
    db = paramParseSQLiteDatabase;
  }
  
  /* Error */
  public org.json.JSONObject encodeRelatedObject(ParseObject paramParseObject)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 46	com/parse/ParseObject:getObjectId	()Ljava/lang/String;
    //   4: ifnull +44 -> 48
    //   7: new 48	org/json/JSONObject
    //   10: dup
    //   11: invokespecial 49	org/json/JSONObject:<init>	()V
    //   14: astore_2
    //   15: aload_2
    //   16: ldc 51
    //   18: ldc 53
    //   20: invokevirtual 57	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   23: pop
    //   24: aload_2
    //   25: ldc 59
    //   27: aload_1
    //   28: invokevirtual 46	com/parse/ParseObject:getObjectId	()Ljava/lang/String;
    //   31: invokevirtual 57	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   34: pop
    //   35: aload_2
    //   36: ldc 61
    //   38: aload_1
    //   39: invokevirtual 64	com/parse/ParseObject:getClassName	()Ljava/lang/String;
    //   42: invokevirtual 57	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   45: pop
    //   46: aload_2
    //   47: areturn
    //   48: new 48	org/json/JSONObject
    //   51: dup
    //   52: invokespecial 49	org/json/JSONObject:<init>	()V
    //   55: astore_3
    //   56: aload_3
    //   57: ldc 51
    //   59: ldc 66
    //   61: invokevirtual 57	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   64: pop
    //   65: aload_0
    //   66: getfield 29	com/parse/OfflineStore$OfflineEncodingStrategy:tasksLock	Ljava/lang/Object;
    //   69: astore_2
    //   70: aload_2
    //   71: monitorenter
    //   72: aload_0
    //   73: getfield 27	com/parse/OfflineStore$OfflineEncodingStrategy:tasks	Ljava/util/ArrayList;
    //   76: aload_0
    //   77: getfield 19	com/parse/OfflineStore$OfflineEncodingStrategy:this$0	Lcom/parse/OfflineStore;
    //   80: aload_1
    //   81: aload_0
    //   82: getfield 31	com/parse/OfflineStore$OfflineEncodingStrategy:db	Lcom/parse/ParseSQLiteDatabase;
    //   85: invokestatic 72	com/parse/OfflineStore:access$200	(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)LR;
    //   88: new 74	com/parse/OfflineStore$OfflineEncodingStrategy$2
    //   91: dup
    //   92: aload_0
    //   93: aload_3
    //   94: invokespecial 77	com/parse/OfflineStore$OfflineEncodingStrategy$2:<init>	(Lcom/parse/OfflineStore$OfflineEncodingStrategy;Lorg/json/JSONObject;)V
    //   97: invokevirtual 83	R:c	(LQ;)LR;
    //   100: invokevirtual 87	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   103: pop
    //   104: aload_2
    //   105: monitorexit
    //   106: aload_3
    //   107: areturn
    //   108: astore_1
    //   109: aload_2
    //   110: monitorexit
    //   111: aload_1
    //   112: athrow
    //   113: astore_1
    //   114: new 89	java/lang/RuntimeException
    //   117: dup
    //   118: aload_1
    //   119: invokespecial 92	java/lang/RuntimeException:<init>	(Ljava/lang/Throwable;)V
    //   122: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	123	0	this	OfflineEncodingStrategy
    //   0	123	1	paramParseObject	ParseObject
    //   55	52	3	localJSONObject	org.json.JSONObject
    // Exception table:
    //   from	to	target	type
    //   72	106	108	finally
    //   109	111	108	finally
    //   0	46	113	org/json/JSONException
    //   48	72	113	org/json/JSONException
    //   111	113	113	org/json/JSONException
  }
  
  public R<Void> whenFinished()
  {
    return R.a(tasks).b(new OfflineStore.OfflineEncodingStrategy.1(this));
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineStore.OfflineEncodingStrategy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */