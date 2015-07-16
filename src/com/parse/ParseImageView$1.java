package com.parse;

import M;
import N;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;

class ParseImageView$1
  implements M<byte[], N<byte[]>>
{
  ParseImageView$1(ParseImageView paramParseImageView, ParseFile paramParseFile) {}
  
  public N<byte[]> then(N<byte[]> paramN)
  {
    Object localObject2 = (byte[])paramN.e();
    Object localObject1;
    if (ParseImageView.access$000(this$0) != val$loadingFile) {
      localObject1 = N.h();
    }
    do
    {
      do
      {
        return (N<byte[]>)localObject1;
        localObject1 = paramN;
      } while (localObject2 == null);
      localObject2 = BitmapFactory.decodeByteArray((byte[])localObject2, 0, localObject2.length);
      localObject1 = paramN;
    } while (localObject2 == null);
    this$0.setImageBitmap((Bitmap)localObject2);
    return paramN;
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseImageView.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */