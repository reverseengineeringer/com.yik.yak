package com.yik.yak.ui.fragment;

import AF;
import Aj;
import Aq;
import Aw;
import DD;
import DE;
import DG;
import DH;
import DI;
import Df;
import Dv;
import Dy;
import Dz;
import GB;
import GF;
import GH;
import Gs;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.support.annotation.Nullable;
import android.support.v4.app.FragmentActivity;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.EditText;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import butterknife.ButterKnife;
import butterknife.InjectView;
import butterknife.OnClick;
import com.yik.yak.data.models.Configuration.ThreatCheck;
import com.yik.yak.data.models.Yak;
import com.yik.yak.data.models.YakkerLocation;
import com.yik.yak.data.models.YikYakObject;
import com.yik.yak.ui.activity.FamousActivity;
import com.yik.yak.ui.activity.ReportDialog;
import com.yik.yak.ui.activity.YakDetailActivity;
import com.yik.yak.ui.activity.YikYakDialog;
import com.yik.yak.ui.adapter.YakDetailAdapter;
import com.yik.yak.ui.view.DividerItemDecoration;
import com.yik.yak.ui.view.RefreshListView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.TreeMap;
import org.json.JSONException;
import org.json.JSONObject;
import wP;
import xn;
import xo;
import xt;
import xv;
import xw;
import zJ;
import zQ;
import zY;

public class CommentFragment
  extends Df
{
  public ArrayList<YikYakObject> b = new ArrayList();
  protected boolean c = true;
  public boolean d = true;
  public boolean e = true;
  public boolean f = true;
  public boolean g = false;
  public boolean h = false;
  protected Bundle i = null;
  protected String j = "MainFeed";
  public boolean k = false;
  public Yak l;
  protected Yak m;
  @InjectView(2131558746)
  protected RelativeLayout mCommentFooter;
  @InjectView(2131558748)
  public EditText mReplyField;
  @InjectView(2131558747)
  protected TextView mSendButton;
  protected Aq n = null;
  protected YakkerLocation o;
  public YakDetailAdapter p;
  public Handler q = new Handler();
  public RefreshListView r;
  private final int s = 500;
  private View t;
  private Context u;
  private ViewTreeObserver.OnGlobalLayoutListener v;
  
  public static Intent a(Context paramContext, boolean paramBoolean, Yak paramYak, Boolean paramBoolean1, String paramString)
  {
    paramContext = new Intent(paramContext, YakDetailActivity.class);
    paramContext.putExtra("canSubmit", paramBoolean);
    paramContext.putExtra("canVote", CanVote);
    paramContext.putExtra("canReply", CanReply);
    paramContext.putExtra("canReport", CanReport);
    try
    {
      paramContext.putExtra("yak", new Aj().b(paramYak).toString());
      if (paramBoolean1 != null) {
        paramContext.putExtra("isBasecamp", paramBoolean1);
      }
      paramContext.putExtra("caller", paramString);
      return paramContext;
    }
    catch (JSONException paramContext)
    {
      paramContext.printStackTrace();
    }
    return null;
  }
  
  public static CommentFragment a(Yak paramYak, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, boolean paramBoolean5, String paramString1, String paramString2)
  {
    CommentFragment localCommentFragment = new CommentFragment();
    Bundle localBundle = new Bundle();
    localBundle.putBoolean("canSubmit", paramBoolean1);
    localBundle.putBoolean("canVote", paramBoolean2);
    localBundle.putBoolean("canReply", paramBoolean3);
    localBundle.putBoolean("canReport", paramBoolean4);
    localBundle.putString("caller", paramString1);
    localBundle.putBoolean("isBasecamp", paramBoolean5);
    localBundle.putString("replyId", paramString2);
    localCommentFragment.setArguments(localBundle);
    localCommentFragment.d(paramYak);
    return localCommentFragment;
  }
  
  private void a(int paramInt, Intent paramIntent)
  {
    if ((paramInt != 1) || (paramIntent == null)) {
      return;
    }
    if (paramIntent.getBooleanExtra("KEY_SHOULD_BLOCK_YAKKER", false))
    {
      a(paramIntent);
      return;
    }
    b(paramIntent);
  }
  
  private void a(Intent paramIntent)
  {
    paramIntent = new Intent(getActivity(), YikYakDialog.class);
    paramIntent.putExtra("title", "Are you sure?");
    paramIntent.putExtra("message", "You're about to banish the author of this yak from your feed for good. This can't be undone, so proceed wisely!");
    paramIntent.putExtra("okText", "OK");
    paramIntent.putExtra("cancelText", "CANCEL");
    startActivityForResult(paramIntent, 7008);
  }
  
  private void a(Yak paramYak, String paramString1, boolean paramBoolean, String paramString2)
  {
    a(paramYak, paramString1, paramBoolean, false, paramString2);
  }
  
  private void a(Yak paramYak, String paramString1, boolean paramBoolean1, boolean paramBoolean2, String paramString2)
  {
    TreeMap localTreeMap = new TreeMap();
    localTreeMap.put("messageID", l.ID);
    if (paramYak != null) {
      localTreeMap.put("commentID", CommentID);
    }
    localTreeMap.put("userID", zQ.c());
    localTreeMap.put("lat", o.a());
    localTreeMap.put("long", o.b());
    if ((!paramBoolean1) && (!GB.a(paramString2))) {
      localTreeMap.put("reason", paramString2);
    }
    if (paramBoolean2) {
      localTreeMap.put("block", String.valueOf(paramBoolean2));
    }
    if (k) {}
    for (paramString2 = "1";; paramString2 = "0")
    {
      localTreeMap.put("bc", paramString2);
      paramString1 = zY.a(Aw.a().f(), paramString1, localTreeMap, o);
      paramString1 = new xv().a(paramString1).b();
      zY.a(true).a(paramString1).a(new DE(this, paramBoolean1, paramYak, paramBoolean2));
      return;
    }
  }
  
  private void a(Exception paramException)
  {
    if (!isAdded()) {
      return;
    }
    new Handler(u.getMainLooper()).post(new Dy(this, paramException));
  }
  
  private void a(String paramString1, boolean paramBoolean, String paramString2)
  {
    a(null, paramString1, paramBoolean, paramString2);
  }
  
  private boolean a(Yak paramYak)
  {
    Intent localIntent;
    if (NumberOfLikes < Aw.a().a("shareThreshold", "shareThreshold", 0))
    {
      paramYak = Aw.a().a("shareThreshold", "message", getResources().getString(2131231076));
      localIntent = new Intent(getActivity(), YikYakDialog.class);
      localIntent.putExtra("title", getActivity().getResources().getString(2131231081));
      localIntent.putExtra("message", paramYak);
      localIntent.putExtra("okText", "OK");
      localIntent.putExtra("okOnly", "true");
      startActivity(localIntent);
    }
    for (;;)
    {
      return true;
      if ((PosterID.equals(n.b())) && (NumberOfLikes <= Aw.a().a("shareThreshold", "famousThreshold", 20)))
      {
        localIntent = new Intent(getActivity(), FamousActivity.class);
        localIntent.addFlags(67108864);
        try
        {
          localIntent.putExtra("yak", new Aj().b(paramYak).toString());
          startActivity(localIntent);
        }
        catch (JSONException paramYak)
        {
          for (;;)
          {
            paramYak.printStackTrace();
          }
        }
      }
      else
      {
        new GH(getActivity(), paramYak).execute(new Void[0]);
      }
    }
  }
  
  private boolean a(String paramString, int paramInt)
  {
    if (!e)
    {
      Toast.makeText(getActivity(), 2131231024, 0).show();
      g = false;
      mReplyField.clearFocus();
      g();
      return false;
    }
    if (paramString.trim().length() == 0)
    {
      Toast.makeText(getActivity(), "You must enter a comment first.", 0).show();
      g = false;
      return false;
    }
    mReplyField.clearFocus();
    g();
    Object localObject = new TreeMap();
    ((TreeMap)localObject).put("userID", zQ.c());
    ((TreeMap)localObject).put("lat", o.a());
    ((TreeMap)localObject).put("long", o.b());
    ((TreeMap)localObject).put("messageID", l.ID);
    ((TreeMap)localObject).put("comment", paramString);
    ((TreeMap)localObject).put("bypassedThreatPopup", String.valueOf(paramInt));
    if (c() != null) {
      if (!c().booleanValue()) {
        break label284;
      }
    }
    label284:
    for (paramString = "1";; paramString = "0")
    {
      ((TreeMap)localObject).put("bc", paramString);
      paramString = zY.b(Aw.a().f(), "postComment", (TreeMap)localObject, o);
      localObject = (String)((TreeMap)localObject).get("RequestBody:body");
      GF.a(this, new Object[] { localObject });
      localObject = xw.a(xn.a("application/x-www-form-urlencoded"), (String)localObject);
      paramString = new xv().a((xw)localObject).a(paramString).b();
      zY.a(true).a(paramString).a(new Dv(this));
      return true;
    }
  }
  
  private void b(Intent paramIntent)
  {
    String str = paramIntent.getStringExtra("result");
    boolean bool = paramIntent.getBooleanExtra("KEY_SHOULD_BLOCK_YAKKER", false);
    if (m != null) {}
    for (paramIntent = "reportComment";; paramIntent = "reportMessage")
    {
      a(m, paramIntent, false, bool, str);
      paramIntent = new Intent(getActivity(), YikYakDialog.class);
      paramIntent.putExtra("title", getActivity().getResources().getString(2131231028));
      paramIntent.putExtra("message", getActivity().getResources().getString(2131231027));
      paramIntent.putExtra("okText", "OK");
      paramIntent.putExtra("okOnly", "true");
      paramIntent.putExtra("value", "" + bool);
      startActivityForResult(paramIntent, 7006);
      return;
    }
  }
  
  private boolean b(Yak paramYak)
  {
    Intent localIntent = new Intent(getActivity(), YikYakDialog.class);
    localIntent.putExtra("title", "DELETE YAK");
    localIntent.putExtra("message", "Are you sure you want to delete this Yak?");
    localIntent.putExtra("okText", "YES");
    localIntent.putExtra("cancelText", "NO");
    m = paramYak;
    if (paramYak == null) {
      startActivityForResult(localIntent, 7001);
    }
    for (;;)
    {
      return true;
      startActivityForResult(localIntent, 7003);
    }
  }
  
  private boolean b(String paramString)
  {
    return ((!zQ.a(2)) || (Aw.a().a("threatWords", "alwaysShowMessage", true))) && (GB.b(paramString) != null);
  }
  
  private Boolean c()
  {
    if ((getArguments() != null) && (getArguments().containsKey("isBasecamp"))) {
      return Boolean.valueOf(getArguments().getBoolean("isBasecamp"));
    }
    return null;
  }
  
  private boolean c(Yak paramYak)
  {
    GF.a(this, new Object[] { "attemptToReportReply" });
    if (n.a("YakBak", CommentID))
    {
      Toast.makeText(getActivity(), "You have already reported this comment.", 0).show();
      return true;
    }
    m = paramYak;
    if (zJ.a(2))
    {
      GF.a(this, new Object[] { "hasn't seen dialog, displaying" });
      i();
      return true;
    }
    zJ.b(2);
    l();
    return true;
  }
  
  private String d()
  {
    return getArguments().getString("replyId", null);
  }
  
  private void d(Yak paramYak)
  {
    l = paramYak;
  }
  
  private void e()
  {
    String str = d();
    getArguments().putString("replyId", null);
    i.putString("replyId", null);
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext())
    {
      YikYakObject localYikYakObject = (YikYakObject)localIterator.next();
      if ((localYikYakObject instanceof Yak))
      {
        Yak localYak = (Yak)localYikYakObject;
        if (CommentID.equals(str))
        {
          GF.a(this, new Object[] { "Found the comment i should scroll to! " + Comment });
          int i1 = b.indexOf(localYikYakObject);
          q.postDelayed(new DD(this, i1 + 1), 500L);
        }
      }
    }
  }
  
  private void h()
  {
    getActivity().setResult(-1);
    getActivity().finish();
  }
  
  private void i()
  {
    startActivityForResult(new Intent(getActivity(), ReportDialog.class), 7002);
  }
  
  private void j()
  {
    r = ((RefreshListView)t.findViewById(2131558819));
    r.e().addItemDecoration(new DividerItemDecoration(getResources().getDrawable(2130837729)));
    r.setOnRefreshListener(new DI(this));
    r.e().setLayoutManager(new LinearLayoutManager(getActivity()));
    p = new YakDetailAdapter(getActivity(), this);
    p.setHeaderData(l);
    r.setAdapter(p);
    p.notifyDataSetChanged();
    p.setShouldContextMenuShowOnSingleClick(true);
  }
  
  private void k()
  {
    String str1 = getString(2131230958);
    String str2 = getString(2131230953);
    String str3 = getString(2131231006);
    startActivityForResult(YikYakDialog.a(getActivity(), str1, str2, str3), 7009);
  }
  
  private void l()
  {
    String str1 = getString(2131230960);
    String str2 = getString(2131230957);
    String str3 = getString(2131231006);
    startActivityForResult(YikYakDialog.a(getActivity(), str1, str2, str3), 5003);
  }
  
  public void a()
  {
    a(false);
  }
  
  public void a(boolean paramBoolean)
  {
    g = false;
    if ((l == null) || (GB.a(l.ID)))
    {
      b.clear();
      p.notifyDataSetChanged();
      return;
    }
    TreeMap localTreeMap = new TreeMap();
    localTreeMap.put("userID", zQ.c());
    localTreeMap.put("messageID", l.ID);
    localTreeMap.put("lat", o.a());
    if (c() != null) {
      if (!c().booleanValue()) {
        break label181;
      }
    }
    label181:
    for (Object localObject = "1";; localObject = "0")
    {
      localTreeMap.put("bc", localObject);
      localObject = zY.a("getComments", localTreeMap, o);
      localObject = new xv().a((String)localObject).b();
      if (b.isEmpty()) {
        p.addLoadingYak();
      }
      zY.a(true).a((xt)localObject).a(new Dz(this, paramBoolean));
      return;
    }
  }
  
  protected void b()
  {
    if (!r.f())
    {
      if (!AF.c()) {
        break label73;
      }
      if (Aw.a().d())
      {
        r.setRefreshStyle(1);
        r.setRefreshImageDrawable(AF.c);
        r.setRefreshImage(AF.c);
      }
    }
    else
    {
      return;
    }
    r.setRefreshStyle(2);
    r.setAnimationBackgroundColor(AF.b());
    return;
    label73:
    r.setRefreshStyle(1);
    r.setRefreshImageDrawable(2130837864);
    r.setRefreshImage(2130837864);
  }
  
  public void onActivityCreated(@Nullable Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    setHasOptionsMenu(true);
    n = Aq.a(getActivity());
    if (getArguments() != null)
    {
      i = getArguments();
      c = i.getBoolean("canSubmit", true);
      d = i.getBoolean("canVote", true);
      e = i.getBoolean("canReply", true);
      f = i.getBoolean("canReport", true);
      j = i.getString("caller", "MainFeed");
      k = i.getBoolean("isBasecamp", false);
    }
    if ((paramBundle != null) && (l == null))
    {
      i = paramBundle;
      paramBundle = i.getString("yak", null);
    }
    try
    {
      l = Yak.initializeYak(getActivity(), new Aj().a(new JSONObject(paramBundle)), d, e, f, k);
      p.setHeaderData(l);
      p.notifyDataSetChanged();
      o = Aq.a(getActivity()).f();
      if ((o.getLatitude() == 0.0D) && (o.getLongitude() == 0.0D))
      {
        c = false;
        d = false;
        e = false;
      }
      if (e)
      {
        mReplyField.setFocusable(true);
        mReplyField.setFocusableInTouchMode(true);
        mReplyField.setClickable(true);
        mReplyField.setText("");
        mSendButton.setAlpha(1.0F);
        mSendButton.setClickable(true);
        if ((l != null) && (!GB.a(l.ID)))
        {
          a();
          Gs.a().a(l, j);
        }
        return;
      }
    }
    catch (JSONException paramBundle)
    {
      for (;;)
      {
        paramBundle.printStackTrace();
        continue;
        mReplyField.setFocusable(false);
        mReplyField.setFocusableInTouchMode(false);
        mReplyField.setClickable(false);
        mReplyField.setHint(2131231024);
        mSendButton.setAlpha(0.5F);
        mSendButton.setClickable(false);
      }
    }
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    default: 
    case 33: 
    case 7002: 
    case 7003: 
    case 7001: 
    case 7005: 
      do
      {
        do
        {
          do
          {
            return;
            if (paramInt2 == 1)
            {
              zQ.b(3);
              mReplyField.requestFocus();
              a(mReplyField);
              return;
            }
            getView().requestFocus();
            return;
            a(paramInt2, paramIntent);
            return;
          } while (paramInt2 != 1);
          a(m, "deleteComment", true, null);
          return;
        } while (paramInt2 != 1);
        a("deleteMessage2", true, null);
        return;
      } while (paramInt2 != 1);
      a(paramIntent.getStringExtra("value"), 1);
      zQ.b(2);
      return;
    case 7008: 
      if (paramInt2 == 1)
      {
        paramIntent.putExtra("KEY_SHOULD_BLOCK_YAKKER", true);
        b(paramIntent);
        return;
      }
      i();
      return;
    case 7006: 
      try
      {
        bool = Boolean.valueOf(paramIntent.getStringExtra("value")).booleanValue();
        if ((bool) && (!zJ.a(3)))
        {
          k();
          zJ.b(3);
          return;
        }
      }
      catch (Exception paramIntent)
      {
        for (;;)
        {
          paramIntent.printStackTrace();
          boolean bool = false;
        }
        if (m != null)
        {
          a();
          m = null;
          return;
        }
        h();
        return;
      }
    case 5003: 
      if (m != null)
      {
        c(m);
        return;
      }
      i();
      return;
    }
    if (m != null)
    {
      a();
      m = null;
      return;
    }
    h();
  }
  
  public boolean onContextItemSelected(MenuItem paramMenuItem)
  {
    Yak localYak = (Yak)paramMenuItem.getActionView().getTag();
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onContextItemSelected(paramMenuItem);
    case 0: 
      return a(localYak);
    case 1: 
      return b(localYak);
    }
    return c(localYak);
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    paramMenu.clear();
    paramMenuInflater.inflate(2131755009, paramMenu);
    if (l == null)
    {
      paramMenu.getItem(0).setVisible(false);
      paramMenu.getItem(1).setVisible(false);
      return;
    }
    if (!l.CanReport)
    {
      paramMenu.getItem(0).setVisible(false);
      paramMenu.getItem(1).setVisible(false);
      return;
    }
    if (l.PosterID.equals(zQ.c()))
    {
      paramMenu.getItem(0).setVisible(false);
      return;
    }
    paramMenu.getItem(1).setVisible(false);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    t = paramLayoutInflater.inflate(2130903117, paramViewGroup, false);
    u = getActivity();
    ButterKnife.inject(this, t);
    j();
    mReplyField.setOnFocusChangeListener(new DG(this));
    if (v != null) {}
    try
    {
      if (Build.VERSION.SDK_INT >= 16) {
        t.getViewTreeObserver().removeOnGlobalLayoutListener(v);
      }
      for (;;)
      {
        v = new DH(this);
        t.getViewTreeObserver().addOnGlobalLayoutListener(v);
        b();
        return t;
        t.getViewTreeObserver().removeGlobalOnLayoutListener(v);
      }
    }
    catch (NoSuchMethodError paramLayoutInflater)
    {
      for (;;) {}
    }
  }
  
  public void onDestroyView()
  {
    super.onDestroyView();
    b.clear();
    p.setData(null);
    r = null;
    ButterKnife.reset(this);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    case 2131558843: 
      if (!f) {
        Toast.makeText(getActivity(), "This yak cannot be reported.", 0).show();
      }
      for (;;)
      {
        return true;
        if (Aq.a(getActivity()).a("Yak", l.ID))
        {
          Toast.makeText(getActivity(), "You have already reported this comment.", 0).show();
        }
        else if (!zJ.a(2))
        {
          l();
          zJ.b(2);
        }
        else
        {
          i();
        }
      }
    }
    return b(null);
  }
  
  public void onPause()
  {
    super.onPause();
    q.removeCallbacksAndMessages(null);
  }
  
  public void onResume()
  {
    super.onResume();
    g = false;
    if (!e)
    {
      mCommentFooter.setVisibility(8);
      return;
    }
    mCommentFooter.setVisibility(0);
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putAll(i);
    if (l != null) {}
    try
    {
      paramBundle.putString("yak", new Aj().b(l).toString());
      return;
    }
    catch (JSONException paramBundle)
    {
      paramBundle.printStackTrace();
    }
  }
  
  @OnClick({2131558747})
  public void onSendCommentClicked()
  {
    String str;
    Intent localIntent;
    if (!g)
    {
      g = true;
      str = mReplyField.getText().toString();
      Configuration.ThreatCheck localThreatCheck = GB.b(str);
      if (localThreatCheck == null) {
        break label152;
      }
      if (!b(str)) {
        break label144;
      }
      localIntent = new Intent(getActivity(), YikYakDialog.class);
      localIntent.putExtra("title", "WHOA");
      localIntent.putExtra("message", message);
      localIntent.putExtra("value", str);
      if (allowContinue)
      {
        localIntent.putExtra("okText", "YES");
        localIntent.putExtra("cancelText", "NO");
        startActivityForResult(localIntent, 7005);
      }
    }
    else
    {
      return;
    }
    localIntent.putExtra("okText", "OK");
    localIntent.putExtra("okOnly", true);
    startActivity(localIntent);
    return;
    label144:
    a(str, 0);
    return;
    label152:
    a(str, 0);
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.fragment.CommentFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */