package com.yik.yak.ui.fragment;

import AD;
import AJ;
import AS;
import Aa;
import Aj;
import Av;
import DZ;
import Ec;
import Ed;
import Eh;
import Ek;
import Em;
import En;
import Eo;
import Ha;
import Hi;
import Hm;
import Ho;
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
import com.yik.yak.ui.activity.VerificationActivity;
import com.yik.yak.ui.activity.YakDetailActivity;
import com.yik.yak.ui.adapter.YakDetailAdapter;
import com.yik.yak.ui.dialog.ReportDialog;
import com.yik.yak.ui.dialog.YikYakDialog;
import com.yik.yak.ui.view.DividerItemDecoration;
import com.yik.yak.ui.view.RefreshListView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.TreeMap;
import org.json.JSONException;
import org.json.JSONObject;
import wY;
import xD;
import xF;
import xG;
import xx;
import xy;
import zT;

public class CommentFragment
  extends BaseFragment
{
  public ArrayList<YikYakObject> c = new ArrayList();
  protected boolean d = true;
  public boolean e = true;
  public boolean f = true;
  public boolean g = true;
  public boolean h = false;
  public boolean i = false;
  protected Bundle j = null;
  protected String k = "MainFeed";
  public boolean l = false;
  public Yak m;
  @InjectView(2131558766)
  protected RelativeLayout mCommentFooter;
  @InjectView(2131558768)
  public EditText mReplyField;
  @InjectView(2131558767)
  protected TextView mSendButton;
  protected Yak n;
  protected AD o = null;
  protected YakkerLocation p;
  public YakDetailAdapter q;
  public Handler r = new Handler();
  public RefreshListView s;
  private final int t = 500;
  private View u;
  private Context v;
  private ViewTreeObserver.OnGlobalLayoutListener w;
  
  public static Intent a(Context paramContext, boolean paramBoolean, Yak paramYak, Boolean paramBoolean1, String paramString)
  {
    paramContext = new Intent(paramContext, YakDetailActivity.class);
    paramContext.putExtra("canSubmit", paramBoolean);
    paramContext.putExtra("canVote", CanVote);
    paramContext.putExtra("canReply", CanReply);
    paramContext.putExtra("canReport", CanReport);
    try
    {
      paramContext.putExtra("yak", new Av().b(paramYak).toString());
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
    localTreeMap.put("messageID", m.ID);
    if (paramYak != null) {
      localTreeMap.put("commentID", CommentID);
    }
    localTreeMap.put("userID", Aa.g());
    localTreeMap.put("lat", p.a());
    localTreeMap.put("long", p.b());
    if ((!paramBoolean1) && (!Hi.a(paramString2))) {
      localTreeMap.put("reason", paramString2);
    }
    if (paramBoolean2) {
      localTreeMap.put("block", String.valueOf(paramBoolean2));
    }
    if (l) {}
    for (paramString2 = "1";; paramString2 = "0")
    {
      localTreeMap.put("bc", paramString2);
      paramString1 = Aj.a(AJ.a().f(), paramString1, localTreeMap, p);
      paramString1 = new xF().a(paramString1).b();
      Aj.a(true).a(paramString1).a(new Ek(this, paramBoolean1, paramYak, paramBoolean2));
      return;
    }
  }
  
  private void a(Exception paramException)
  {
    if (!isAdded()) {
      return;
    }
    new Handler(v.getMainLooper()).post(new Ec(this, paramException));
  }
  
  private void a(String paramString1, boolean paramBoolean, String paramString2)
  {
    a(null, paramString1, paramBoolean, paramString2);
  }
  
  private boolean a(Yak paramYak)
  {
    Intent localIntent;
    if (NumberOfLikes < AJ.a().a("shareThreshold", "shareThreshold", 0))
    {
      paramYak = AJ.a().a("shareThreshold", "message", getResources().getString(2131231120));
      localIntent = new Intent(getActivity(), YikYakDialog.class);
      localIntent.putExtra("title", getActivity().getResources().getString(2131231125));
      localIntent.putExtra("message", paramYak);
      localIntent.putExtra("okText", "OK");
      localIntent.putExtra("okOnly", "true");
      startActivity(localIntent);
    }
    for (;;)
    {
      return true;
      if ((PosterID.equals(o.b())) && (NumberOfLikes <= AJ.a().a("shareThreshold", "famousThreshold", 20)))
      {
        localIntent = new Intent(getActivity(), FamousActivity.class);
        localIntent.addFlags(67108864);
        try
        {
          localIntent.putExtra("yak", new Av().b(paramYak).toString());
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
        new Ho(getActivity(), paramYak).execute(new Void[0]);
      }
    }
  }
  
  private boolean a(String paramString, int paramInt)
  {
    if (!f)
    {
      Toast.makeText(getActivity(), 2131231063, 0).show();
      h = false;
      mReplyField.clearFocus();
      i();
      return false;
    }
    if (paramString.trim().length() == 0)
    {
      Toast.makeText(getActivity(), "You must enter a comment first.", 0).show();
      h = false;
      return false;
    }
    mReplyField.clearFocus();
    i();
    Object localObject = new TreeMap();
    ((TreeMap)localObject).put("userID", Aa.g());
    ((TreeMap)localObject).put("lat", p.a());
    ((TreeMap)localObject).put("long", p.b());
    ((TreeMap)localObject).put("messageID", m.ID);
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
      paramString = Aj.b(AJ.a().f(), "postComment", (TreeMap)localObject, p);
      localObject = (String)((TreeMap)localObject).get("RequestBody:body");
      Hm.a(this, new Object[] { localObject });
      localObject = xG.a(xx.a("application/x-www-form-urlencoded"), (String)localObject);
      paramString = new xF().a((xG)localObject).a(paramString).b();
      Aj.a(true).a(paramString).a(new DZ(this));
      return true;
    }
  }
  
  private void b(Intent paramIntent)
  {
    String str = paramIntent.getStringExtra("result");
    boolean bool = paramIntent.getBooleanExtra("KEY_SHOULD_BLOCK_YAKKER", false);
    if (n != null)
    {
      paramIntent = "reportComment";
      Ha.a().a(n, str, bool);
    }
    for (;;)
    {
      a(n, paramIntent, false, bool, str);
      paramIntent = new Intent(getActivity(), YikYakDialog.class);
      paramIntent.putExtra("title", getActivity().getResources().getString(2131231067));
      paramIntent.putExtra("message", getActivity().getResources().getString(2131231066));
      paramIntent.putExtra("okText", "OK");
      paramIntent.putExtra("okOnly", "true");
      paramIntent.putExtra("value", "" + bool);
      startActivityForResult(paramIntent, 7006);
      return;
      paramIntent = "reportMessage";
      Ha.a().a(m, str, bool);
    }
  }
  
  private boolean b(Yak paramYak)
  {
    Intent localIntent = new Intent(getActivity(), YikYakDialog.class);
    localIntent.putExtra("title", "DELETE YAK");
    localIntent.putExtra("message", "Are you sure you want to delete this Yak?");
    localIntent.putExtra("okText", "YES");
    localIntent.putExtra("cancelText", "NO");
    n = paramYak;
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
    return ((!Aa.a(2)) || (AJ.a().a("threatWords", "alwaysShowMessage", true))) && (Hi.b(paramString) != null);
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
    Hm.a(this, new Object[] { "attemptToReportReply" });
    if (o.a("YakBak", CommentID))
    {
      Toast.makeText(getActivity(), "You have already reported this comment.", 0).show();
      return true;
    }
    n = paramYak;
    if (zT.a(2))
    {
      Hm.a(this, new Object[] { "hasn't seen dialog, displaying" });
      g();
      return true;
    }
    zT.b(2);
    m();
    return true;
  }
  
  private String d()
  {
    return getArguments().getString("replyId", null);
  }
  
  private void d(Yak paramYak)
  {
    m = paramYak;
  }
  
  private void e()
  {
    String str = d();
    getArguments().putString("replyId", null);
    j.putString("replyId", null);
    Iterator localIterator = c.iterator();
    YikYakObject localYikYakObject;
    for (;;)
    {
      if (localIterator.hasNext())
      {
        localYikYakObject = (YikYakObject)localIterator.next();
        if (((localYikYakObject instanceof Yak)) && (CommentID.equals(str))) {
          if (c.contains(localYikYakObject)) {
            break;
          }
        }
      }
    }
    for (;;)
    {
      return;
      for (int i1 = c.indexOf(localYikYakObject) + 1; i1 != -1; i1 = -1)
      {
        r.postDelayed(new Eh(this, i1), 500L);
        return;
      }
    }
  }
  
  private void f()
  {
    getActivity().setResult(-1);
    getActivity().finish();
  }
  
  private void g()
  {
    startActivityForResult(new Intent(getActivity(), ReportDialog.class), 7002);
  }
  
  private void k()
  {
    s = ((RefreshListView)u.findViewById(2131558844));
    s.f().addItemDecoration(new DividerItemDecoration(getResources().getDrawable(2130837729)));
    s.setOnRefreshListener(new Eo(this));
    s.f().setLayoutManager(new LinearLayoutManager(getActivity()));
    q = new YakDetailAdapter(getActivity(), this);
    q.setHeaderData(m);
    s.setAdapter(q);
    q.notifyDataSetChanged();
    q.setShouldContextMenuShowOnSingleClick(true);
  }
  
  private void l()
  {
    String str1 = getString(2131230983);
    String str2 = getString(2131230978);
    String str3 = getString(2131231036);
    startActivityForResult(YikYakDialog.a(getActivity(), str1, str2, str3), 7009);
  }
  
  private void m()
  {
    String str1 = getString(2131230985);
    String str2 = getString(2131230982);
    String str3 = getString(2131231036);
    startActivityForResult(YikYakDialog.a(getActivity(), str1, str2, str3), 5003);
  }
  
  public void a()
  {
    a(false);
  }
  
  public void a(boolean paramBoolean)
  {
    h = false;
    if ((m == null) || (Hi.a(m.ID)))
    {
      c.clear();
      q.notifyDataSetChanged();
      return;
    }
    TreeMap localTreeMap = new TreeMap();
    localTreeMap.put("userID", Aa.g());
    localTreeMap.put("messageID", m.ID);
    localTreeMap.put("lat", p.a());
    if (c() != null) {
      if (!c().booleanValue()) {
        break label181;
      }
    }
    label181:
    for (Object localObject = "1";; localObject = "0")
    {
      localTreeMap.put("bc", localObject);
      localObject = Aj.a("getComments", localTreeMap, p);
      localObject = new xF().a((String)localObject).b();
      if (c.isEmpty()) {
        q.addLoadingYak();
      }
      Aj.a(true).a((xD)localObject).a(new Ed(this, paramBoolean));
      return;
    }
  }
  
  protected void b()
  {
    if (!s.g())
    {
      if (!AS.c()) {
        break label73;
      }
      if (AJ.a().d())
      {
        s.setRefreshStyle(1);
        s.setRefreshImageDrawable(AS.c);
        s.setRefreshImage(AS.c);
      }
    }
    else
    {
      return;
    }
    s.setRefreshStyle(2);
    s.setAnimationBackgroundColor(AS.b());
    return;
    label73:
    s.setRefreshStyle(1);
    s.setRefreshImageDrawable(2130837876);
    s.setRefreshImage(2130837876);
  }
  
  public void onActivityCreated(@Nullable Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    setHasOptionsMenu(true);
    o = AD.a();
    if (getArguments() != null)
    {
      j = getArguments();
      d = j.getBoolean("canSubmit", true);
      e = j.getBoolean("canVote", true);
      f = j.getBoolean("canReply", true);
      g = j.getBoolean("canReport", true);
      k = j.getString("caller", "MainFeed");
      l = j.getBoolean("isBasecamp", false);
    }
    if ((paramBundle != null) && (m == null))
    {
      j = paramBundle;
      paramBundle = j.getString("yak", null);
    }
    try
    {
      m = Yak.initializeYak(getActivity(), new Av().a(new JSONObject(paramBundle)), e, f, g, l);
      q.setHeaderData(m);
      q.notifyDataSetChanged();
      p = o.g();
      if (f)
      {
        mReplyField.setFocusable(true);
        mReplyField.setFocusableInTouchMode(true);
        mReplyField.setClickable(true);
        mReplyField.setText("");
        mSendButton.setAlpha(1.0F);
        mSendButton.setClickable(true);
        if ((m != null) && (!Hi.a(m.ID)))
        {
          a();
          Ha.a().a(m, k);
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
        mReplyField.setHint(2131231063);
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
    case 1241: 
    case 33: 
    case 7002: 
    case 7003: 
    case 7001: 
      do
      {
        do
        {
          do
          {
            return;
          } while (paramInt2 != -1);
          onSendCommentClicked();
          return;
          if (paramInt2 == 1)
          {
            Aa.b(3);
            mReplyField.requestFocus();
            a(mReplyField);
            return;
          }
          getView().requestFocus();
          return;
          a(paramInt2, paramIntent);
          return;
        } while (paramInt2 != 1);
        a(n, "deleteComment", true, null);
        return;
      } while (paramInt2 != 1);
      a("deleteMessage2", true, null);
      return;
    case 7005: 
      if (paramInt2 == 1)
      {
        a(paramIntent.getStringExtra("value"), 1);
        Ha.a().a("Reply", l, Boolean.valueOf(true));
        Aa.b(2);
        return;
      }
      Ha.a().a("Reply", l, Boolean.valueOf(false));
      return;
    case 7008: 
      if (paramInt2 == 1)
      {
        paramIntent.putExtra("KEY_SHOULD_BLOCK_YAKKER", true);
        b(paramIntent);
        return;
      }
      g();
      return;
    case 7006: 
      try
      {
        bool = Boolean.valueOf(paramIntent.getStringExtra("value")).booleanValue();
        if ((bool) && (!zT.a(3)))
        {
          l();
          zT.b(3);
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
        if (n != null)
        {
          a();
          n = null;
          return;
        }
        f();
        return;
      }
    case 5003: 
      if (n != null)
      {
        c(n);
        return;
      }
      g();
      return;
    }
    if (n != null)
    {
      a();
      n = null;
      return;
    }
    f();
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
    if (m == null)
    {
      paramMenu.getItem(0).setVisible(false);
      paramMenu.getItem(1).setVisible(false);
      return;
    }
    if (!m.CanReport)
    {
      paramMenu.getItem(0).setVisible(false);
      paramMenu.getItem(1).setVisible(false);
      return;
    }
    if (m.PosterID.equals(Aa.g()))
    {
      paramMenu.getItem(0).setVisible(false);
      return;
    }
    paramMenu.getItem(1).setVisible(false);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    u = paramLayoutInflater.inflate(2130903123, paramViewGroup, false);
    v = getActivity();
    ButterKnife.inject(this, u);
    k();
    mReplyField.setOnFocusChangeListener(new Em(this));
    if (w != null) {}
    try
    {
      if (Build.VERSION.SDK_INT >= 16) {
        u.getViewTreeObserver().removeOnGlobalLayoutListener(w);
      }
      for (;;)
      {
        w = new En(this);
        u.getViewTreeObserver().addOnGlobalLayoutListener(w);
        b();
        return u;
        u.getViewTreeObserver().removeGlobalOnLayoutListener(w);
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
    c.clear();
    q.setData(null);
    s = null;
    ButterKnife.reset(this);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    case 2131558878: 
      if (!g) {
        Toast.makeText(getActivity(), "This yak cannot be reported.", 0).show();
      }
      for (;;)
      {
        return true;
        if (AD.a().a("Yak", m.ID))
        {
          Toast.makeText(getActivity(), "You have already reported this comment.", 0).show();
        }
        else if (!zT.a(2))
        {
          m();
          zT.b(2);
        }
        else
        {
          g();
        }
      }
    }
    return b(null);
  }
  
  public void onPause()
  {
    super.onPause();
    r.removeCallbacksAndMessages(null);
  }
  
  public void onResume()
  {
    super.onResume();
    h = false;
    if (!f)
    {
      mCommentFooter.setVisibility(8);
      return;
    }
    mCommentFooter.setVisibility(0);
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putAll(j);
    if (m != null) {}
    try
    {
      paramBundle.putString("yak", new Av().b(m).toString());
      return;
    }
    catch (JSONException paramBundle)
    {
      paramBundle.printStackTrace();
    }
  }
  
  @OnClick({2131558767})
  public void onSendCommentClicked()
  {
    if (Aa.f())
    {
      String str;
      Intent localIntent;
      if (!h)
      {
        h = true;
        str = mReplyField.getText().toString();
        Configuration.ThreatCheck localThreatCheck = Hi.b(str);
        if (localThreatCheck == null) {
          break label175;
        }
        if (!b(str)) {
          break label167;
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
      Ha.a().a("Reply", l, Boolean.valueOf(false));
      startActivity(localIntent);
      return;
      label167:
      a(str, 0);
      return;
      label175:
      a(str, 0);
      return;
    }
    startActivityForResult(new Intent(getActivity(), VerificationActivity.class), 1241);
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.fragment.CommentFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */