package com.facebook.widget;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.facebook.Session;

class LoginButton$LoginClickListener$1
  implements DialogInterface.OnClickListener
{
  LoginButton$LoginClickListener$1(LoginButton.LoginClickListener paramLoginClickListener, Session paramSession) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    val$openSession.closeAndClearTokenInformation();
  }
}

/* Location:
 * Qualified Name:     com.facebook.widget.LoginButton.LoginClickListener.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */