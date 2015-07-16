package com.yik.yak.ui.view;

import FL;
import Gh;
import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.ScaleAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Toast;
import com.yik.yak.data.models.Yak;

public class VoteView
  extends LinearLayout
  implements View.OnClickListener
{
  private boolean a = true;
  private Yak b;
  private AnimatedTextView c;
  private VoteArrowView d;
  private VoteArrowView e;
  
  public VoteView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  private void a(ImageView paramImageView)
  {
    ScaleAnimation localScaleAnimation = new ScaleAnimation(1.25F, 1.0F, 1.25F, 1.0F, 1, 0.5F, 1, 0.5F);
    localScaleAnimation.setInterpolator(new DecelerateInterpolator());
    localScaleAnimation.setDuration(1000L);
    localScaleAnimation.setFillAfter(true);
    paramImageView.startAnimation(localScaleAnimation);
  }
  
  private void a(boolean paramBoolean)
  {
    if (paramBoolean) {
      c().setNumber(b.NumberOfLikes);
    }
    for (;;)
    {
      setVotingEnabled(b.CanVote);
      if (!a) {
        break label121;
      }
      c().setColor(getContext().getResources().getColor(2131427561));
      if (b.Liked != 1) {
        break;
      }
      setVoteType(Gh.a);
      return;
      c().setNumber(b.NumberOfLikes, FL.c);
    }
    if (b.Liked == -1)
    {
      setVoteType(Gh.b);
      return;
    }
    setVoteType(Gh.c);
    return;
    label121:
    setVotingEnabled(false);
  }
  
  private void b(boolean paramBoolean)
  {
    a(e());
    if (a) {
      if (b.upvote(paramBoolean)) {
        a(true);
      }
    }
    while (b.mLoadingYak) {
      return;
    }
    f();
  }
  
  private void f()
  {
    Toast.makeText(getContext(), getContext().getString(2131231063), 0).show();
  }
  
  private void g()
  {
    a(d());
    if (a) {
      if (b.downvote()) {
        a(true);
      }
    }
    while (b.mLoadingYak) {
      return;
    }
    f();
  }
  
  public void a()
  {
    onClick(e());
  }
  
  public void b()
  {
    onClick(this);
  }
  
  public AnimatedTextView c()
  {
    if (c == null) {
      c = ((AnimatedTextView)findViewById(2131558871));
    }
    return c;
  }
  
  public VoteArrowView d()
  {
    if (d == null)
    {
      d = ((VoteArrowView)findViewById(2131558872));
      d.setOnClickListener(this);
    }
    return d;
  }
  
  public VoteArrowView e()
  {
    if (e == null)
    {
      e = ((VoteArrowView)findViewById(2131558870));
      e.setOnClickListener(this);
    }
    return e;
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    case 2131558871: 
    default: 
      b(true);
      return;
    case 2131558872: 
      g();
      return;
    }
    b(false);
  }
  
  public void setVoteType(Gh paramGh)
  {
    boolean bool2 = true;
    VoteArrowView localVoteArrowView = d();
    if (paramGh == Gh.b)
    {
      bool1 = true;
      localVoteArrowView.setSelected(bool1);
      localVoteArrowView = e();
      if (paramGh != Gh.a) {
        break label50;
      }
    }
    label50:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      localVoteArrowView.setSelected(bool1);
      return;
      bool1 = false;
      break;
    }
  }
  
  public void setVotingEnabled(boolean paramBoolean)
  {
    a = paramBoolean;
    d().setEnabled(paramBoolean);
    e().setEnabled(paramBoolean);
    c().setColor(getContext().getResources().getColor(2131427669));
  }
  
  public void setYak(Yak paramYak)
  {
    if (b != paramYak)
    {
      b = paramYak;
      a(false);
    }
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.view.VoteView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */