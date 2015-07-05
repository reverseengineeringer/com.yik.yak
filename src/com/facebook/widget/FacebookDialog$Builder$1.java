package com.facebook.widget;

import android.content.Context;
import com.facebook.NativeAppCallAttachmentStore;
import java.util.HashMap;

class FacebookDialog$Builder$1
  implements FacebookDialog.OnPresentCallback
{
  FacebookDialog$Builder$1(FacebookDialog.Builder paramBuilder) {}
  
  public void onPresent(Context paramContext)
  {
    if ((this$0.imageAttachments != null) && (this$0.imageAttachments.size() > 0)) {
      FacebookDialog.access$900().addAttachmentsForCall(paramContext, this$0.appCall.getCallId(), this$0.imageAttachments);
    }
    if ((this$0.mediaAttachmentFiles != null) && (this$0.mediaAttachmentFiles.size() > 0)) {
      FacebookDialog.access$900().addAttachmentFilesForCall(paramContext, this$0.appCall.getCallId(), this$0.mediaAttachmentFiles);
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.widget.FacebookDialog.Builder.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */