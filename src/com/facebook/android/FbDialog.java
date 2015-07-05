package com.facebook.android;

import android.content.Context;
import android.os.Bundle;
import com.facebook.FacebookDialogException;
import com.facebook.FacebookException;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.widget.WebDialog;

@Deprecated
public class FbDialog
  extends WebDialog
{
  private Facebook.DialogListener mListener;
  
  public FbDialog(Context paramContext, String paramString, Bundle paramBundle, Facebook.DialogListener paramDialogListener)
  {
    super(paramContext, paramString, paramBundle, 16973840, null);
    setDialogListener(paramDialogListener);
  }
  
  public FbDialog(Context paramContext, String paramString, Bundle paramBundle, Facebook.DialogListener paramDialogListener, int paramInt)
  {
    super(paramContext, paramString, paramBundle, paramInt, null);
    setDialogListener(paramDialogListener);
  }
  
  public FbDialog(Context paramContext, String paramString, Facebook.DialogListener paramDialogListener)
  {
    this(paramContext, paramString, paramDialogListener, 16973840);
  }
  
  public FbDialog(Context paramContext, String paramString, Facebook.DialogListener paramDialogListener, int paramInt)
  {
    super(paramContext, paramString, paramInt);
    setDialogListener(paramDialogListener);
  }
  
  private void callDialogListener(Bundle paramBundle, FacebookException paramFacebookException)
  {
    if (mListener == null) {
      return;
    }
    if (paramBundle != null)
    {
      mListener.onComplete(paramBundle);
      return;
    }
    if ((paramFacebookException instanceof FacebookDialogException))
    {
      paramBundle = (FacebookDialogException)paramFacebookException;
      paramBundle = new DialogError(paramBundle.getMessage(), paramBundle.getErrorCode(), paramBundle.getFailingUrl());
      mListener.onError(paramBundle);
      return;
    }
    if ((paramFacebookException instanceof FacebookOperationCanceledException))
    {
      mListener.onCancel();
      return;
    }
    paramBundle = new FacebookError(paramFacebookException.getMessage());
    mListener.onFacebookError(paramBundle);
  }
  
  private void setDialogListener(Facebook.DialogListener paramDialogListener)
  {
    mListener = paramDialogListener;
    setOnCompleteListener(new FbDialog.1(this));
  }
}

/* Location:
 * Qualified Name:     com.facebook.android.FbDialog
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */