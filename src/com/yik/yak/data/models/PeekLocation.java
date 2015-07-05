package com.yik.yak.data.models;

public class PeekLocation
{
  public boolean canReply;
  public boolean canReport;
  public boolean canSubmit;
  public boolean canSubmitLinks;
  public boolean canSubmitPhotos;
  public boolean canVote;
  public boolean isCustomPeek;
  public boolean isDefault = false;
  public boolean isNew = false;
  public boolean isUnread = false;
  public String latitude;
  public String location;
  public String longitude;
  public String peekID;
  public String section;
  
  public PeekLocation(String paramString1, String paramString2, int paramInt1, int paramInt2, int paramInt3, String paramString3, int paramInt4, int paramInt5, int paramInt6)
  {
    isCustomPeek = false;
    section = paramString1;
    location = paramString2;
    peekID = paramString3;
    if (paramInt1 == 1)
    {
      bool1 = true;
      canSubmit = bool1;
      if (paramInt2 != 1) {
        break label140;
      }
      bool1 = true;
      label66:
      canSubmitPhotos = bool1;
      if (paramInt3 != 1) {
        break label146;
      }
      bool1 = true;
      label81:
      canSubmitLinks = bool1;
      if (paramInt4 != 1) {
        break label152;
      }
      bool1 = true;
      label96:
      canVote = bool1;
      if (paramInt5 != 1) {
        break label158;
      }
      bool1 = true;
      label111:
      canReply = bool1;
      if (paramInt6 != 1) {
        break label164;
      }
    }
    label140:
    label146:
    label152:
    label158:
    label164:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      canReport = bool1;
      return;
      bool1 = false;
      break;
      bool1 = false;
      break label66;
      bool1 = false;
      break label81;
      bool1 = false;
      break label96;
      bool1 = false;
      break label111;
    }
  }
  
  public PeekLocation(String paramString1, String paramString2, int paramInt1, String paramString3, int paramInt2, int paramInt3, int paramInt4)
  {
    this(paramString1, paramString2, paramInt1, 0, 0, paramString3, paramInt2, paramInt3, paramInt4);
  }
  
  public PeekLocation(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, boolean paramBoolean)
  {
    isCustomPeek = true;
    section = paramString1;
    location = paramString2;
    latitude = paramString3;
    longitude = paramString4;
    peekID = paramString5;
    isDefault = paramBoolean;
    canSubmit = false;
    canVote = false;
    canReply = false;
    canReport = false;
  }
  
  public boolean isSectionHeader()
  {
    return location == section;
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.data.models.PeekLocation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */