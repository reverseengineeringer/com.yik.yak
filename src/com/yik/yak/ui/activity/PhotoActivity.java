package com.yik.yak.ui.activity;

import Bt;
import Gg;
import android.content.Intent;
import android.os.Bundle;
import android.widget.ImageView;
import butterknife.ButterKnife;
import butterknife.InjectView;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.RequestCreator;

public class PhotoActivity
  extends BaseYikYakFragmentActivity
{
  public Gg b;
  @InjectView(2131558533)
  public ImageView mImageView;
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903072);
    ButterKnife.inject(this);
    overridePendingTransition(2130968601, 2130968606);
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    if (b != null) {
      b.a();
    }
  }
  
  public void onPause()
  {
    super.onPause();
    overridePendingTransition(2130968600, 2130968607);
  }
  
  public void onResume()
  {
    super.onResume();
    Object localObject = getIntent().getExtras();
    if ((localObject != null) && (((Bundle)localObject).containsKey("url")))
    {
      localObject = ((Bundle)localObject).getString("url");
      Picasso.with(this).load((String)localObject).into(mImageView, new Bt(this));
      return;
    }
    finish();
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.ui.activity.PhotoActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */