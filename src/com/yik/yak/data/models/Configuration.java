package com.yik.yak.data.models;

import AJ;
import android.content.Context;
import com.yik.yak.YikYak;
import java.util.ArrayList;

public class Configuration
{
  public Configuration.BasecampConfiguration basecampConfiguration;
  public Configuration.DraftConfiguration draftConfiguration;
  public String endpointUrl;
  public boolean handleEnabled;
  public Configuration.SharingConfiguration sharingConfiguration;
  public ArrayList<Configuration.ThreatCheck> threatChecks;
  public Configuration.VotingConfiguration votingConfiguration;
  public Configuration.YikYakRepApplicationConfiguration yikYakRepApplicationConfiguration;
  
  public static Configuration get()
  {
    return AJ.a().a(YikYak.d());
  }
  
  public static Configuration get(Context paramContext)
  {
    return AJ.a().a(paramContext);
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.data.models.Configuration
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */