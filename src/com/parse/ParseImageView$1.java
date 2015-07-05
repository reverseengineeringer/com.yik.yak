package com.parse;

import Q;
import R;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;

class ParseImageView$1
  implements Q<byte[], R<byte[]>>
{
  ParseImageView$1(ParseImageView paramParseImageView, ParseFile paramParseFile) {}
  
  public R<byte[]> then(R<byte[]> paramR)
  {
    Object localObject2 = (byte[])paramR.e();
    Object localObject1;
    if (ParseImageView.access$000(this$0) != val$loadingFile) {
      localObject1 = R.h();
    }
    do
    {
      do
      {
        return (R<byte[]>)localObject1;
        localObject1 = paramR;
      } while (localObject2 == null);
      localObject2 = BitmapFactory.decodeByteArray((byte[])localObject2, 0, localObject2.length);
      localObject1 = paramR;
    } while (localObject2 == null);
    this$0.setImageBitmap((Bitmap)localObject2);
    return paramR;
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseImageView.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */