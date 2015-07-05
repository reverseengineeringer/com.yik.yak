package com.parse;

import R;
import ad;
import android.webkit.MimeTypeMap;
import java.io.File;
import java.io.IOException;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

public class ParseFile
{
  private String contentType = null;
  private Set<R<?>.ad> currentTasks = Collections.synchronizedSet(new HashSet());
  byte[] data;
  private boolean dirty = false;
  private String name = null;
  private ParseAWSRequest request;
  final TaskQueue taskQueue = new TaskQueue();
  private String url = null;
  
  ParseFile(String paramString1, String paramString2)
  {
    name = paramString1;
    url = paramString2;
  }
  
  public ParseFile(String paramString, byte[] paramArrayOfByte)
  {
    this(paramString, paramArrayOfByte, null);
  }
  
  public ParseFile(String paramString1, byte[] paramArrayOfByte, String paramString2)
  {
    if (paramArrayOfByte.length > Parse.maxParseFileSize) {
      throw new IllegalArgumentException(String.format("ParseFile must be less than %d bytes", new Object[] { Integer.valueOf(Parse.maxParseFileSize) }));
    }
    name = paramString1;
    data = paramArrayOfByte;
    contentType = paramString2;
    dirty = true;
  }
  
  ParseFile(JSONObject paramJSONObject, ParseDecoder paramParseDecoder)
  {
    this(paramJSONObject.optString("name"), paramJSONObject.optString("url"));
  }
  
  public ParseFile(byte[] paramArrayOfByte)
  {
    this(null, paramArrayOfByte, null);
  }
  
  public ParseFile(byte[] paramArrayOfByte, String paramString)
  {
    this(null, paramArrayOfByte, paramString);
  }
  
  static void clearCache()
  {
    File[] arrayOfFile = getCacheDir().listFiles();
    int j = arrayOfFile.length;
    int i = 0;
    while (i < j)
    {
      ParseFileUtils.deleteQuietly(arrayOfFile[i]);
      i += 1;
    }
  }
  
  private ParseCommand constructFileUploadCommand(String paramString)
  {
    paramString = new ParseCommand("upload_file", paramString);
    paramString.enableRetrying();
    if (name != null) {
      paramString.put("name", name);
    }
    return paramString;
  }
  
  static File getCacheDir()
  {
    return Parse.getParseCacheDir("files");
  }
  
  private byte[] getCachedData()
  {
    if (data != null) {
      return data;
    }
    try
    {
      Object localObject1 = getCacheFile();
      if (localObject1 != null)
      {
        localObject1 = ParseFileUtils.readFileToByteArray((File)localObject1);
        return (byte[])localObject1;
      }
    }
    catch (IOException localIOException1)
    {
      try
      {
        Object localObject2 = getFilesFile();
        if (localObject2 != null)
        {
          localObject2 = ParseFileUtils.readFileToByteArray((File)localObject2);
          return (byte[])localObject2;
        }
      }
      catch (IOException localIOException2) {}
    }
    return null;
  }
  
  private R<byte[]> getDataAsync(ProgressCallback paramProgressCallback, R<Void> paramR)
  {
    if (data != null) {
      return R.a(data);
    }
    ad localad = R.a();
    currentTasks.add(localad);
    paramR.a(new ParseFile.6(this), R.a).a(new ParseFile.5(this, localad, paramProgressCallback));
    return localad.a();
  }
  
  private String getFilename()
  {
    return name;
  }
  
  static File getFilesDir()
  {
    return Parse.getParseFilesDir("files");
  }
  
  private R<Void> handleFileUploadResultAsync(JSONObject paramJSONObject, ProgressCallback paramProgressCallback)
  {
    if (request == null) {
      prepareFileUploadPost(paramJSONObject, paramProgressCallback);
    }
    return request.executeAsync().j();
  }
  
  private void prepareFileUploadPost(JSONObject paramJSONObject, ProgressCallback paramProgressCallback)
  {
    for (String str1 = null;; str1 = MimeTypeMap.getSingleton().getMimeTypeFromExtension(str1))
    {
      try
      {
        name = paramJSONObject.getString("name");
        url = paramJSONObject.getString("url");
        JSONObject localJSONObject = paramJSONObject.getJSONObject("post_params");
        if (contentType != null) {
          str1 = contentType;
        }
        String str2;
        while (name.lastIndexOf(".") == -1)
        {
          str2 = str1;
          if (str1 == null) {
            str2 = "application/octet-stream";
          }
        }
      }
      catch (JSONException paramJSONObject)
      {
        try
        {
          request = new ParseAWSRequest(1, paramJSONObject.getString("post_url"));
          request.setProgressCallback(paramProgressCallback);
          request.setMimeType(str2);
          request.setPostParams(localJSONObject);
          request.setData(getCachedData());
          return;
        }
        catch (JSONException paramJSONObject)
        {
          throw new RuntimeException(paramJSONObject.getMessage());
        }
        paramJSONObject = paramJSONObject;
        throw new RuntimeException(paramJSONObject.getMessage());
      }
      str1 = name.substring(name.lastIndexOf(".") + 1);
    }
  }
  
  private void save(ProgressCallback paramProgressCallback)
  {
    Parse.waitForTask(saveInBackground(paramProgressCallback));
  }
  
  private void setPinned(boolean paramBoolean)
  {
    Parse.waitForTask(setPinnedInBackground(paramBoolean));
  }
  
  private R<Void> setPinnedInBackground(boolean paramBoolean)
  {
    return taskQueue.enqueue(new ParseFile.2(this)).a(new ParseFile.1(this, paramBoolean), R.a);
  }
  
  private void setPinnedInBackground(boolean paramBoolean, ParseCallback<Void> paramParseCallback)
  {
    Parse.callbackOnMainThreadAsync(setPinnedInBackground(paramBoolean), paramParseCallback);
  }
  
  public void cancel()
  {
    HashSet localHashSet = new HashSet(currentTasks);
    Iterator localIterator = localHashSet.iterator();
    while (localIterator.hasNext()) {
      ((ad)localIterator.next()).b();
    }
    currentTasks.removeAll(localHashSet);
  }
  
  JSONObject encode()
  {
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("__type", "File");
    localJSONObject.put("name", getName());
    if (getUrl() == null) {
      throw new IllegalStateException("Unable to encode an unsaved ParseFile.");
    }
    localJSONObject.put("url", getUrl());
    return localJSONObject;
  }
  
  File getCacheFile()
  {
    String str = getFilename();
    if (str != null) {
      return new File(getCacheDir(), str);
    }
    return null;
  }
  
  public byte[] getData()
  {
    return (byte[])Parse.waitForTask(getDataInBackground());
  }
  
  public R<byte[]> getDataInBackground()
  {
    return getDataInBackground((ProgressCallback)null);
  }
  
  public R<byte[]> getDataInBackground(ProgressCallback paramProgressCallback)
  {
    return taskQueue.enqueue(new ParseFile.7(this, paramProgressCallback));
  }
  
  public void getDataInBackground(GetDataCallback paramGetDataCallback)
  {
    Parse.callbackOnMainThreadAsync(getDataInBackground(), paramGetDataCallback);
  }
  
  public void getDataInBackground(GetDataCallback paramGetDataCallback, ProgressCallback paramProgressCallback)
  {
    Parse.callbackOnMainThreadAsync(getDataInBackground(paramProgressCallback), paramGetDataCallback);
  }
  
  File getFilesFile()
  {
    String str = getFilename();
    if (str != null) {
      return new File(getFilesDir(), str);
    }
    return null;
  }
  
  public String getName()
  {
    return name;
  }
  
  public String getUrl()
  {
    return url;
  }
  
  public boolean isDataAvailable()
  {
    if (data == null)
    {
      if (isPinned()) {
        break label26;
      }
      if (!getCacheFile().exists()) {
        break label36;
      }
    }
    label26:
    while (getFilesFile().exists()) {
      return true;
    }
    label36:
    return false;
  }
  
  public boolean isDirty()
  {
    return dirty;
  }
  
  boolean isPinned()
  {
    File localFile = getFilesFile();
    return (localFile != null) && (localFile.exists());
  }
  
  void pin()
  {
    setPinned(true);
  }
  
  R<Void> pinInBackground()
  {
    return setPinnedInBackground(true);
  }
  
  void pinInBackground(ParseCallback<Void> paramParseCallback)
  {
    setPinnedInBackground(true, paramParseCallback);
  }
  
  public void save()
  {
    Parse.waitForTask(saveInBackground());
  }
  
  R<Void> saveAsync(ProgressCallback paramProgressCallback, R<Void> paramR)
  {
    if (!isDirty()) {
      return R.a(null);
    }
    ad localad = R.a();
    currentTasks.add(localad);
    paramR.a(new ParseFile.3(this, localad, paramProgressCallback));
    return localad.a();
  }
  
  public R<Void> saveInBackground()
  {
    return saveInBackground((ProgressCallback)null);
  }
  
  public R<Void> saveInBackground(ProgressCallback paramProgressCallback)
  {
    return taskQueue.enqueue(new ParseFile.4(this, paramProgressCallback));
  }
  
  public void saveInBackground(SaveCallback paramSaveCallback)
  {
    Parse.callbackOnMainThreadAsync(saveInBackground(), paramSaveCallback);
  }
  
  public void saveInBackground(SaveCallback paramSaveCallback, ProgressCallback paramProgressCallback)
  {
    try
    {
      Parse.callbackOnMainThreadAsync(saveInBackground(paramProgressCallback), paramSaveCallback);
      return;
    }
    finally
    {
      paramSaveCallback = finally;
      throw paramSaveCallback;
    }
  }
  
  void unpin()
  {
    setPinned(false);
  }
  
  R<Void> unpinInBackground()
  {
    return setPinnedInBackground(false);
  }
  
  void unpinInBackground(ParseCallback<Void> paramParseCallback)
  {
    setPinnedInBackground(false, paramParseCallback);
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseFile
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */