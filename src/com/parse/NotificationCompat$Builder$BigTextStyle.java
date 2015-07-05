package com.parse;

public class NotificationCompat$Builder$BigTextStyle
  extends NotificationCompat.Builder.Style
{
  CharSequence mBigText;
  
  public NotificationCompat$Builder$BigTextStyle() {}
  
  public NotificationCompat$Builder$BigTextStyle(NotificationCompat.Builder paramBuilder)
  {
    setBuilder(paramBuilder);
  }
  
  public BigTextStyle bigText(CharSequence paramCharSequence)
  {
    mBigText = paramCharSequence;
    return this;
  }
  
  public BigTextStyle setBigContentTitle(CharSequence paramCharSequence)
  {
    mBigContentTitle = paramCharSequence;
    return this;
  }
  
  public BigTextStyle setSummaryText(CharSequence paramCharSequence)
  {
    mSummaryText = paramCharSequence;
    mSummaryTextSet = true;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.parse.NotificationCompat.Builder.BigTextStyle
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */