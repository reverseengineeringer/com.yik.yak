package com.yik.yak.data.models;

public class Notification
{
  private String mBody = "";
  private String mContent = "";
  private boolean mHasError;
  private String mId = "";
  private String mKey = "";
  private String mPriority = "";
  private String mReason = "";
  private String mReplyId;
  private String mStatus;
  private String mSubject = "";
  private String mThingId = "";
  private String mThingType = "";
  private String mUpdated;
  private String mUserId = "";
  
  public Notification() {}
  
  public Notification(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9, String paramString10, String paramString11, String paramString12)
  {
    mId = paramString1;
    mKey = paramString2;
    mThingId = paramString3;
    mThingType = paramString4;
    mPriority = paramString5;
    mUserId = paramString6;
    mReason = paramString7;
    mBody = paramString8;
    mStatus = paramString10;
    mSubject = paramString11;
    mContent = paramString12;
    try
    {
      mUpdated = paramString9.substring(0, 19).replace("T", " ");
      mHasError = false;
      return;
    }
    catch (Exception paramString1)
    {
      for (;;)
      {
        mUpdated = paramString9;
      }
    }
  }
  
  public static Notification emptyNotification()
  {
    return new Notification("", "", "", "", "", "", "system", "You do not have any notifications.", "", "system", "", "");
  }
  
  public String getBody()
  {
    return mBody;
  }
  
  public String getContent()
  {
    return mContent;
  }
  
  public boolean getHasError()
  {
    return mHasError;
  }
  
  public String getId()
  {
    return mId;
  }
  
  public String getKey()
  {
    return mKey;
  }
  
  public String getPriority()
  {
    return mPriority;
  }
  
  public String getReason()
  {
    return mReason;
  }
  
  public String getReplyId()
  {
    return mReplyId;
  }
  
  public String getStatus()
  {
    return mStatus;
  }
  
  public int getStatusColor()
  {
    int j = 2131427598;
    int i;
    if ((mStatus.equals("new")) || (mStatus.equals("unread"))) {
      if (mReason.equals("vote")) {
        i = 2131427603;
      }
    }
    do
    {
      do
      {
        return i;
        if (mReason.equals("fictional")) {
          return 2131427596;
        }
        if (mReason.equals("comment")) {
          return 2131427592;
        }
        if (mReason.equals("deleted")) {
          return 2131427594;
        }
        return 2131427599;
        i = j;
      } while (!mStatus.equals("read"));
      if (mReason.equals("vote")) {
        return 2131427602;
      }
      if (mReason.equals("fictional")) {
        return 2131427595;
      }
      if (mReason.equals("comment")) {
        return 2131427591;
      }
      i = j;
    } while (!mReason.equals("deleted"));
    return 2131427593;
  }
  
  public int getStatusResource()
  {
    int j = 2130837861;
    int i;
    if ((mStatus.equals("new")) || (mStatus.equals("unread"))) {
      if (mReason.equals("vote")) {
        i = 2130837823;
      }
    }
    do
    {
      do
      {
        return i;
        if (mReason.equals("fictional")) {
          return 2130837827;
        }
        if (mReason.equals("comment")) {
          return 2130837845;
        }
        if (mReason.equals("deleted")) {
          return 2130837848;
        }
        return 2130837862;
        if (mStatus.equals("read")) {
          break;
        }
        i = j;
      } while (!mStatus.equals("deleted"));
      if (mReason.equals("vote")) {
        return 2130837822;
      }
      if (mReason.equals("fictional")) {
        return 2130837826;
      }
      if (mReason.equals("comment")) {
        return 2130837844;
      }
      i = j;
    } while (!mReason.equals("deleted"));
    return 2130837847;
  }
  
  public String getSubject()
  {
    return mSubject;
  }
  
  public String getThingId()
  {
    return mThingId;
  }
  
  public String getThingType()
  {
    return mThingType;
  }
  
  public String getUpdated()
  {
    return mUpdated;
  }
  
  public String getUserId()
  {
    return mUserId;
  }
  
  public void setBody(String paramString)
  {
    mBody = paramString;
  }
  
  public void setContent(String paramString)
  {
    mContent = paramString;
  }
  
  public void setId(String paramString)
  {
    mId = paramString;
  }
  
  public void setKey(String paramString)
  {
    mKey = paramString;
  }
  
  public void setPriority(String paramString)
  {
    mPriority = paramString;
  }
  
  public void setReason(String paramString)
  {
    mReason = paramString;
  }
  
  public void setReplyId(String paramString)
  {
    mReplyId = paramString;
  }
  
  public void setStatus(String paramString)
  {
    mStatus = paramString;
  }
  
  public void setSubject(String paramString)
  {
    mSubject = paramString;
  }
  
  public void setThingId(String paramString)
  {
    mThingId = paramString;
  }
  
  public void setThingType(String paramString)
  {
    mThingType = paramString;
  }
  
  public void setUpdated(String paramString)
  {
    mUpdated = paramString;
  }
  
  public void setUserId(String paramString)
  {
    mUserId = paramString;
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.data.models.Notification
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */