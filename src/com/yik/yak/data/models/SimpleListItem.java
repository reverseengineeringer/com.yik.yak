package com.yik.yak.data.models;

import Ao;
import Aq;
import Aw;
import GB;
import android.content.Context;
import android.content.res.Resources;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class SimpleListItem
{
  public String index;
  public String item;
  public String section;
  public String url;
  
  public SimpleListItem() {}
  
  public SimpleListItem(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    section = paramString1;
    item = paramString2;
    index = paramString3;
    url = paramString4;
  }
  
  private void addCustomItem(List<SimpleListItem> paramList)
  {
    if (Aq.a().i()) {
      paramList.add(new SimpleListItem("Developer", "Developer Console", "15", ""));
    }
  }
  
  private JSONObject createJSONObject(String paramString)
  {
    try
    {
      paramString = new JSONObject(paramString);
      return paramString;
    }
    catch (JSONException paramString) {}
    return new JSONObject();
  }
  
  public List<SimpleListItem> getItemList(Context paramContext, Ao paramAo)
  {
    InputStream localInputStream = null;
    if (paramAo == Ao.a) {
      localInputStream = paramContext.getResources().openRawResource(2131165186);
    }
    for (;;)
    {
      paramAo = new byte[1];
      paramContext = paramAo;
      try
      {
        byte[] arrayOfByte = new byte[localInputStream.available()];
        paramContext = arrayOfByte;
        paramAo = arrayOfByte;
        localInputStream.read(arrayOfByte);
        paramContext = arrayOfByte;
        paramAo = arrayOfByte;
        localInputStream.close();
        paramContext = arrayOfByte;
      }
      catch (IOException paramAo)
      {
        for (;;)
        {
          paramAo.printStackTrace();
        }
      }
      catch (NullPointerException paramContext)
      {
        for (;;)
        {
          paramContext = paramAo;
        }
      }
      paramContext = parseJsonData(new String(paramContext));
      paramAo = Ao.a;
      return paramContext;
      if (paramAo == Ao.b) {
        localInputStream = paramContext.getResources().openRawResource(2131165187);
      }
    }
  }
  
  public boolean isApplyToBeAYikYakRepButton()
  {
    Configuration.YikYakRepApplicationConfiguration localYikYakRepApplicationConfiguration = getyikYakRepApplicationConfiguration;
    return (localYikYakRepApplicationConfiguration != null) && (item.equals(entryText));
  }
  
  public boolean isSectionHeader()
  {
    return item.equals(section);
  }
  
  public List<SimpleListItem> parseJsonData(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    for (;;)
    {
      int i;
      try
      {
        if (GB.a(paramString)) {
          break label230;
        }
        JSONArray localJSONArray = createJSONObject(paramString).getJSONArray("ListItems");
        i = 0;
        paramString = localArrayList;
        if (i < localJSONArray.length())
        {
          paramString = localJSONArray.getJSONObject(i);
          String str1 = paramString.getString("section");
          String str2;
          String str3;
          if (str1.equals("MyDrafts"))
          {
            if (Aw.a().a("drafts", "enabled", false))
            {
              str2 = paramString.getString("item");
              str3 = paramString.getString("index");
              if (!paramString.has("url")) {
                break label261;
              }
              paramString = paramString.getString("url");
              localArrayList.add(new SimpleListItem(str1, str2, str3, paramString));
            }
          }
          else
          {
            str2 = paramString.getString("item");
            str3 = paramString.getString("index");
            if (paramString.has("url"))
            {
              paramString = paramString.getString("url");
              localArrayList.add(new SimpleListItem(str1, str2, str3, paramString));
            }
          }
        }
      }
      catch (JSONException paramString)
      {
        paramString = new ArrayList();
        paramString.add(new SimpleListItem("My Yaks", "My Yaks", "", ""));
      }
      return paramString;
      paramString = "";
      continue;
      label230:
      localArrayList.add(new SimpleListItem("My Yaks", "My Yaks", "", ""));
      return localArrayList;
      i += 1;
      continue;
      label261:
      paramString = "";
    }
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.data.models.SimpleListItem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */