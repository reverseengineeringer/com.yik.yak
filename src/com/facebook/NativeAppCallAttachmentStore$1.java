package com.facebook;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import com.facebook.internal.Utility;
import java.io.File;
import java.io.FileOutputStream;

class NativeAppCallAttachmentStore$1
  implements NativeAppCallAttachmentStore.ProcessAttachment<Bitmap>
{
  NativeAppCallAttachmentStore$1(NativeAppCallAttachmentStore paramNativeAppCallAttachmentStore) {}
  
  public void processAttachment(Bitmap paramBitmap, File paramFile)
  {
    paramFile = new FileOutputStream(paramFile);
    try
    {
      paramBitmap.compress(Bitmap.CompressFormat.JPEG, 100, paramFile);
      return;
    }
    finally
    {
      Utility.closeQuietly(paramFile);
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.NativeAppCallAttachmentStore.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */