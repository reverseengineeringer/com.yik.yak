package com.squareup.picasso;

import android.net.Uri;

public abstract interface Downloader
{
  public abstract Downloader.Response load(Uri paramUri, boolean paramBoolean);
}

/* Location:
 * Qualified Name:     com.squareup.picasso.Downloader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */