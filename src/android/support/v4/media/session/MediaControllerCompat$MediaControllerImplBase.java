package android.support.v4.media.session;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.support.v4.media.MediaMetadataCompat;
import android.view.KeyEvent;
import java.util.List;

class MediaControllerCompat$MediaControllerImplBase
  implements MediaControllerCompat.MediaControllerImpl
{
  private IMediaSession mBinder;
  private MediaSessionCompat.Token mToken;
  private MediaControllerCompat.TransportControls mTransportControls;
  
  public MediaControllerCompat$MediaControllerImplBase(MediaSessionCompat.Token paramToken)
  {
    mToken = paramToken;
    mBinder = IMediaSession.Stub.asInterface((IBinder)paramToken.getToken());
  }
  
  public void adjustVolume(int paramInt1, int paramInt2)
  {
    try
    {
      mBinder.adjustVolume(paramInt1, paramInt2, null);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      new StringBuilder().append("Dead object in adjustVolume. ").append(localRemoteException).toString();
    }
  }
  
  public boolean dispatchMediaButtonEvent(KeyEvent paramKeyEvent)
  {
    if (paramKeyEvent == null) {
      throw new IllegalArgumentException("event may not be null.");
    }
    try
    {
      mBinder.sendMediaButton(paramKeyEvent);
      return false;
    }
    catch (RemoteException paramKeyEvent)
    {
      for (;;)
      {
        new StringBuilder().append("Dead object in dispatchMediaButtonEvent. ").append(paramKeyEvent).toString();
      }
    }
  }
  
  public Bundle getExtras()
  {
    try
    {
      Bundle localBundle = mBinder.getExtras();
      return localBundle;
    }
    catch (RemoteException localRemoteException)
    {
      new StringBuilder().append("Dead object in getExtras. ").append(localRemoteException).toString();
    }
    return null;
  }
  
  public long getFlags()
  {
    try
    {
      long l = mBinder.getFlags();
      return l;
    }
    catch (RemoteException localRemoteException)
    {
      new StringBuilder().append("Dead object in getFlags. ").append(localRemoteException).toString();
    }
    return 0L;
  }
  
  public Object getMediaController()
  {
    return null;
  }
  
  public MediaMetadataCompat getMetadata()
  {
    try
    {
      MediaMetadataCompat localMediaMetadataCompat = mBinder.getMetadata();
      return localMediaMetadataCompat;
    }
    catch (RemoteException localRemoteException)
    {
      new StringBuilder().append("Dead object in getMetadata. ").append(localRemoteException).toString();
    }
    return null;
  }
  
  public String getPackageName()
  {
    try
    {
      String str = mBinder.getPackageName();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      new StringBuilder().append("Dead object in getPackageName. ").append(localRemoteException).toString();
    }
    return null;
  }
  
  public MediaControllerCompat.PlaybackInfo getPlaybackInfo()
  {
    try
    {
      Object localObject = mBinder.getVolumeAttributes();
      localObject = new MediaControllerCompat.PlaybackInfo(volumeType, audioStream, controlType, maxVolume, currentVolume);
      return (MediaControllerCompat.PlaybackInfo)localObject;
    }
    catch (RemoteException localRemoteException)
    {
      new StringBuilder().append("Dead object in getPlaybackInfo. ").append(localRemoteException).toString();
    }
    return null;
  }
  
  public PlaybackStateCompat getPlaybackState()
  {
    try
    {
      PlaybackStateCompat localPlaybackStateCompat = mBinder.getPlaybackState();
      return localPlaybackStateCompat;
    }
    catch (RemoteException localRemoteException)
    {
      new StringBuilder().append("Dead object in getPlaybackState. ").append(localRemoteException).toString();
    }
    return null;
  }
  
  public List<MediaSessionCompat.QueueItem> getQueue()
  {
    try
    {
      List localList = mBinder.getQueue();
      return localList;
    }
    catch (RemoteException localRemoteException)
    {
      new StringBuilder().append("Dead object in getQueue. ").append(localRemoteException).toString();
    }
    return null;
  }
  
  public CharSequence getQueueTitle()
  {
    try
    {
      CharSequence localCharSequence = mBinder.getQueueTitle();
      return localCharSequence;
    }
    catch (RemoteException localRemoteException)
    {
      new StringBuilder().append("Dead object in getQueueTitle. ").append(localRemoteException).toString();
    }
    return null;
  }
  
  public int getRatingType()
  {
    try
    {
      int i = mBinder.getRatingType();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      new StringBuilder().append("Dead object in getRatingType. ").append(localRemoteException).toString();
    }
    return 0;
  }
  
  public PendingIntent getSessionActivity()
  {
    try
    {
      PendingIntent localPendingIntent = mBinder.getLaunchPendingIntent();
      return localPendingIntent;
    }
    catch (RemoteException localRemoteException)
    {
      new StringBuilder().append("Dead object in getSessionActivity. ").append(localRemoteException).toString();
    }
    return null;
  }
  
  public MediaControllerCompat.TransportControls getTransportControls()
  {
    if (mTransportControls == null) {
      mTransportControls = new MediaControllerCompat.TransportControlsBase(mBinder);
    }
    return mTransportControls;
  }
  
  public void registerCallback(MediaControllerCompat.Callback paramCallback, Handler paramHandler)
  {
    if (paramCallback == null) {
      throw new IllegalArgumentException("callback may not be null.");
    }
    try
    {
      mBinder.asBinder().linkToDeath(paramCallback, 0);
      mBinder.registerCallbackListener((IMediaControllerCallback)MediaControllerCompat.Callback.access$400(paramCallback));
      MediaControllerCompat.Callback.access$500(paramCallback, paramHandler);
      MediaControllerCompat.Callback.access$302(paramCallback, true);
      return;
    }
    catch (RemoteException paramHandler)
    {
      new StringBuilder().append("Dead object in registerCallback. ").append(paramHandler).toString();
      paramCallback.onSessionDestroyed();
    }
  }
  
  public void sendCommand(String paramString, Bundle paramBundle, ResultReceiver paramResultReceiver)
  {
    try
    {
      mBinder.sendCommand(paramString, paramBundle, new MediaSessionCompat.ResultReceiverWrapper(paramResultReceiver));
      return;
    }
    catch (RemoteException paramString)
    {
      new StringBuilder().append("Dead object in sendCommand. ").append(paramString).toString();
    }
  }
  
  public void setVolumeTo(int paramInt1, int paramInt2)
  {
    try
    {
      mBinder.setVolumeTo(paramInt1, paramInt2, null);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      new StringBuilder().append("Dead object in setVolumeTo. ").append(localRemoteException).toString();
    }
  }
  
  public void unregisterCallback(MediaControllerCompat.Callback paramCallback)
  {
    if (paramCallback == null) {
      throw new IllegalArgumentException("callback may not be null.");
    }
    try
    {
      mBinder.unregisterCallbackListener((IMediaControllerCallback)MediaControllerCompat.Callback.access$400(paramCallback));
      mBinder.asBinder().unlinkToDeath(paramCallback, 0);
      MediaControllerCompat.Callback.access$302(paramCallback, false);
      return;
    }
    catch (RemoteException paramCallback)
    {
      new StringBuilder().append("Dead object in unregisterCallback. ").append(paramCallback).toString();
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.session.MediaControllerCompat.MediaControllerImplBase
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */