package com.yik.yak.ui.activity;

import Aj;
import GB;
import android.content.Intent;
import android.support.v4.app.Fragment;
import com.yik.yak.data.models.Yak;
import com.yik.yak.ui.fragment.CommentFragment;
import org.json.JSONException;
import org.json.JSONObject;

public class YakDetailActivity
  extends FragmentContainerActivity
{
  protected Fragment a()
  {
    boolean bool1 = getIntent().getBooleanExtra("canSubmit", false);
    boolean bool2 = getIntent().getBooleanExtra("canVote", false);
    boolean bool3 = getIntent().getBooleanExtra("canReply", false);
    boolean bool4 = getIntent().getBooleanExtra("canReport", false);
    boolean bool5 = getIntent().getBooleanExtra("isBasecamp", false);
    Object localObject2 = getIntent().getStringExtra("caller");
    String str = getIntent().getStringExtra("replyId");
    Object localObject1 = localObject2;
    if (GB.a((String)localObject2)) {
      localObject1 = "MainFeed";
    }
    try
    {
      localObject2 = new JSONObject(getIntent().getStringExtra("yak"));
      localObject2 = Yak.initializeYak(this, new Aj().a((JSONObject)localObject2), bool2, bool3, bool4, bool5);
      return CommentFragment.a((Yak)localObject2, bool1, bool2, bool3, bool4, bool5, (String)localObject1, str);
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        localJSONException.printStackTrace();
        Object localObject3 = null;
      }
    }
  }
  
  protected String c()
  {
    return "Yak";
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.activity.YakDetailActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */