package com.parse;

import R;
import android.net.http.AndroidHttpClient;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.json.JSONObject;

class ParseAWSRequest
  extends ParseRequest<byte[], byte[]>
{
  private byte[] data;
  private String mimeType;
  private JSONObject postParams;
  private ProgressCallback progressCallback;
  
  public ParseAWSRequest(int paramInt, String paramString)
  {
    super(paramInt, paramString);
  }
  
  public ParseAWSRequest(String paramString)
  {
    super(paramString);
  }
  
  /* Error */
  protected org.apache.http.HttpEntity newEntity()
  {
    // Byte code:
    //   0: new 29	com/parse/CountingMultipartEntity
    //   3: dup
    //   4: getstatic 35	com/parse/entity/mime/HttpMultipartMode:BROWSER_COMPATIBLE	Lcom/parse/entity/mime/HttpMultipartMode;
    //   7: aload_0
    //   8: getfield 37	com/parse/ParseAWSRequest:progressCallback	Lcom/parse/ProgressCallback;
    //   11: invokespecial 40	com/parse/CountingMultipartEntity:<init>	(Lcom/parse/entity/mime/HttpMultipartMode;Lcom/parse/ProgressCallback;)V
    //   14: astore_1
    //   15: aload_1
    //   16: ldc 42
    //   18: new 44	com/parse/entity/mime/content/StringBody
    //   21: dup
    //   22: aload_0
    //   23: getfield 46	com/parse/ParseAWSRequest:mimeType	Ljava/lang/String;
    //   26: invokespecial 47	com/parse/entity/mime/content/StringBody:<init>	(Ljava/lang/String;)V
    //   29: invokevirtual 51	com/parse/CountingMultipartEntity:addPart	(Ljava/lang/String;Lcom/parse/entity/mime/content/ContentBody;)V
    //   32: aload_0
    //   33: getfield 53	com/parse/ParseAWSRequest:postParams	Lorg/json/JSONObject;
    //   36: invokevirtual 59	org/json/JSONObject:keys	()Ljava/util/Iterator;
    //   39: astore_2
    //   40: aload_2
    //   41: invokeinterface 65 1 0
    //   46: ifeq +75 -> 121
    //   49: aload_2
    //   50: invokeinterface 69 1 0
    //   55: checkcast 71	java/lang/String
    //   58: astore_3
    //   59: aload_1
    //   60: aload_3
    //   61: new 44	com/parse/entity/mime/content/StringBody
    //   64: dup
    //   65: aload_0
    //   66: getfield 53	com/parse/ParseAWSRequest:postParams	Lorg/json/JSONObject;
    //   69: aload_3
    //   70: invokevirtual 75	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   73: invokespecial 47	com/parse/entity/mime/content/StringBody:<init>	(Ljava/lang/String;)V
    //   76: invokevirtual 51	com/parse/CountingMultipartEntity:addPart	(Ljava/lang/String;Lcom/parse/entity/mime/content/ContentBody;)V
    //   79: goto -39 -> 40
    //   82: astore_1
    //   83: new 77	java/lang/RuntimeException
    //   86: dup
    //   87: aload_1
    //   88: invokevirtual 81	java/io/UnsupportedEncodingException:getMessage	()Ljava/lang/String;
    //   91: invokespecial 82	java/lang/RuntimeException:<init>	(Ljava/lang/String;)V
    //   94: athrow
    //   95: astore_1
    //   96: new 77	java/lang/RuntimeException
    //   99: dup
    //   100: aload_1
    //   101: invokevirtual 81	java/io/UnsupportedEncodingException:getMessage	()Ljava/lang/String;
    //   104: invokespecial 82	java/lang/RuntimeException:<init>	(Ljava/lang/String;)V
    //   107: athrow
    //   108: astore_1
    //   109: new 77	java/lang/RuntimeException
    //   112: dup
    //   113: aload_1
    //   114: invokevirtual 83	org/json/JSONException:getMessage	()Ljava/lang/String;
    //   117: invokespecial 82	java/lang/RuntimeException:<init>	(Ljava/lang/String;)V
    //   120: athrow
    //   121: aload_1
    //   122: ldc 85
    //   124: new 87	com/parse/entity/mime/content/ByteArrayBody
    //   127: dup
    //   128: aload_0
    //   129: getfield 89	com/parse/ParseAWSRequest:data	[B
    //   132: aload_0
    //   133: getfield 46	com/parse/ParseAWSRequest:mimeType	Ljava/lang/String;
    //   136: ldc 85
    //   138: invokespecial 92	com/parse/entity/mime/content/ByteArrayBody:<init>	([BLjava/lang/String;Ljava/lang/String;)V
    //   141: invokevirtual 51	com/parse/CountingMultipartEntity:addPart	(Ljava/lang/String;Lcom/parse/entity/mime/content/ContentBody;)V
    //   144: aload_1
    //   145: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	146	0	this	ParseAWSRequest
    //   14	46	1	localCountingMultipartEntity	CountingMultipartEntity
    //   82	6	1	localUnsupportedEncodingException1	java.io.UnsupportedEncodingException
    //   95	6	1	localUnsupportedEncodingException2	java.io.UnsupportedEncodingException
    //   108	37	1	localJSONException	org.json.JSONException
    //   39	11	2	localIterator	java.util.Iterator
    //   58	12	3	str	String
    // Exception table:
    //   from	to	target	type
    //   59	79	82	java/io/UnsupportedEncodingException
    //   15	32	95	java/io/UnsupportedEncodingException
    //   59	79	108	org/json/JSONException
  }
  
  protected byte[] onResponse(HttpResponse paramHttpResponse, ProgressCallback paramProgressCallback)
  {
    int i = paramHttpResponse.getStatusLine().getStatusCode();
    Object localObject;
    if (((i >= 200) && (i < 300)) || (i == 304))
    {
      if (method != 0) {
        break label238;
      }
      localObject = paramHttpResponse.getHeaders("Content-Length");
      if (localObject.length <= 0) {
        break label240;
      }
    }
    label238:
    label240:
    for (i = Integer.parseInt(localObject[0].getValue());; i = -1)
    {
      paramHttpResponse = AndroidHttpClient.getUngzippedContent(paramHttpResponse.getEntity());
      localObject = new ByteArrayOutputStream();
      byte[] arrayOfByte = new byte[32768];
      int j = 0;
      for (;;)
      {
        int k = paramHttpResponse.read(arrayOfByte, 0, arrayOfByte.length);
        if (k == -1) {
          break;
        }
        ((ByteArrayOutputStream)localObject).write(arrayOfByte, 0, k);
        k = j + k;
        j = k;
        if (paramProgressCallback != null)
        {
          j = k;
          if (i != -1)
          {
            Parse.callbackOnMainThreadAsync(R.a(Integer.valueOf(Math.round(k / i * 100.0F))), paramProgressCallback);
            j = k;
          }
        }
      }
      if (method == 0) {}
      for (paramProgressCallback = "Download from";; paramProgressCallback = "Upload to") {
        throw new ParseException(100, String.format("%s S3 failed. %s", new Object[] { paramProgressCallback, paramHttpResponse.getStatusLine().getReasonPhrase() }));
      }
      return ((ByteArrayOutputStream)localObject).toByteArray();
      return null;
    }
  }
  
  public void setData(byte[] paramArrayOfByte)
  {
    data = paramArrayOfByte;
  }
  
  public void setMimeType(String paramString)
  {
    mimeType = paramString;
  }
  
  public void setPostParams(JSONObject paramJSONObject)
  {
    postParams = paramJSONObject;
  }
  
  public void setProgressCallback(ProgressCallback paramProgressCallback)
  {
    progressCallback = paramProgressCallback;
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseAWSRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */