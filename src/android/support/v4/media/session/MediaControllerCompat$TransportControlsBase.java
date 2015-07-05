package android.support.v4.media.session;

import android.os.Bundle;
import android.os.RemoteException;
import android.support.v4.media.RatingCompat;

class MediaControllerCompat$TransportControlsBase
  extends MediaControllerCompat.TransportControls
{
  private IMediaSession mBinder;
  
  public MediaControllerCompat$TransportControlsBase(IMediaSession paramIMediaSession)
  {
    mBinder = paramIMediaSession;
  }
  
  public void fastForward()
  {
    try
    {
      mBinder.fastForward();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      new StringBuilder().append("Dead object in fastForward. ").append(localRemoteException).toString();
    }
  }
  
  public void pause()
  {
    try
    {
      mBinder.pause();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      new StringBuilder().append("Dead object in pause. ").append(localRemoteException).toString();
    }
  }
  
  public void play()
  {
    try
    {
      mBinder.play();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      new StringBuilder().append("Dead object in play. ").append(localRemoteException).toString();
    }
  }
  
  public void playFromMediaId(String paramString, Bundle paramBundle)
  {
    try
    {
      mBinder.playFromMediaId(paramString, paramBundle);
      return;
    }
    catch (RemoteException paramString)
    {
      new StringBuilder().append("Dead object in playFromMediaId. ").append(paramString).toString();
    }
  }
  
  public void playFromSearch(String paramString, Bundle paramBundle)
  {
    try
    {
      mBinder.playFromSearch(paramString, paramBundle);
      return;
    }
    catch (RemoteException paramString)
    {
      new StringBuilder().append("Dead object in playFromSearch. ").append(paramString).toString();
    }
  }
  
  public void rewind()
  {
    try
    {
      mBinder.rewind();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      new StringBuilder().append("Dead object in rewind. ").append(localRemoteException).toString();
    }
  }
  
  public void seekTo(long paramLong)
  {
    try
    {
      mBinder.seekTo(paramLong);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      new StringBuilder().append("Dead object in seekTo. ").append(localRemoteException).toString();
    }
  }
  
  public void sendCustomAction(PlaybackStateCompat.CustomAction paramCustomAction, Bundle paramBundle)
  {
    sendCustomAction(paramCustomAction.getAction(), paramBundle);
  }
  
  public void sendCustomAction(String paramString, Bundle paramBundle)
  {
    try
    {
      mBinder.sendCustomAction(paramString, paramBundle);
      return;
    }
    catch (RemoteException paramString)
    {
      new StringBuilder().append("Dead object in sendCustomAction. ").append(paramString).toString();
    }
  }
  
  public void setRating(RatingCompat paramRatingCompat)
  {
    try
    {
      mBinder.rate(paramRatingCompat);
      return;
    }
    catch (RemoteException paramRatingCompat)
    {
      new StringBuilder().append("Dead object in setRating. ").append(paramRatingCompat).toString();
    }
  }
  
  public void skipToNext()
  {
    try
    {
      mBinder.next();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      new StringBuilder().append("Dead object in skipToNext. ").append(localRemoteException).toString();
    }
  }
  
  public void skipToPrevious()
  {
    try
    {
      mBinder.previous();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      new StringBuilder().append("Dead object in skipToPrevious. ").append(localRemoteException).toString();
    }
  }
  
  public void skipToQueueItem(long paramLong)
  {
    try
    {
      mBinder.skipToQueueItem(paramLong);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      new StringBuilder().append("Dead object in skipToQueueItem. ").append(localRemoteException).toString();
    }
  }
  
  public void stop()
  {
    try
    {
      mBinder.stop();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      new StringBuilder().append("Dead object in stop. ").append(localRemoteException).toString();
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.session.MediaControllerCompat.TransportControlsBase
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */