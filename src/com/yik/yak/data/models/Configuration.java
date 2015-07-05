package com.yik.yak.data.models;

import Aw;
import android.content.Context;
import com.yik.yak.YikYak;
import java.util.ArrayList;

public class Configuration
{
  public Configuration.BasecampConfiguration basecampConfiguration;
  public String defaultEndpoint;
  public Configuration.DraftConfiguration draftConfiguration;
  public ArrayList<Configuration.EndPoint> endpoints;
  public Configuration.GoogleAnalyticsConfiguration googleAnalyticsConfiguration;
  public Configuration.SharingConfiguration sharingConfiguration;
  public ArrayList<Configuration.ThreatCheck> threatChecks;
  public Configuration.VotingConfiguration votingConfiguration;
  public Configuration.YikYakRepApplicationConfiguration yikYakRepApplicationConfiguration;
  
  public static Configuration get()
  {
    return Aw.a().a(YikYak.d());
  }
  
  public static Configuration get(Context paramContext)
  {
    return Aw.a().a(paramContext);
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.data.models.Configuration
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */