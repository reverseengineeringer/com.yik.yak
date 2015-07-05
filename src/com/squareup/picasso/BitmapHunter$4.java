package com.squareup.picasso;

final class BitmapHunter$4
  implements Runnable
{
  BitmapHunter$4(Transformation paramTransformation) {}
  
  public void run()
  {
    throw new IllegalStateException("Transformation " + val$transformation.key() + " mutated input Bitmap but failed to recycle the original.");
  }
}

/* Location:
 * Qualified Name:     com.squareup.picasso.BitmapHunter.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */