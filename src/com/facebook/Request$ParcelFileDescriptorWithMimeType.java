package com.facebook;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

class Request$ParcelFileDescriptorWithMimeType
  implements Parcelable
{
  public static final Parcelable.Creator<ParcelFileDescriptorWithMimeType> CREATOR = new Request.ParcelFileDescriptorWithMimeType.1();
  private final ParcelFileDescriptor fileDescriptor;
  private final String mimeType;
  
  private Request$ParcelFileDescriptorWithMimeType(Parcel paramParcel)
  {
    mimeType = paramParcel.readString();
    fileDescriptor = paramParcel.readFileDescriptor();
  }
  
  public Request$ParcelFileDescriptorWithMimeType(ParcelFileDescriptor paramParcelFileDescriptor, String paramString)
  {
    mimeType = paramString;
    fileDescriptor = paramParcelFileDescriptor;
  }
  
  public int describeContents()
  {
    return 1;
  }
  
  public ParcelFileDescriptor getFileDescriptor()
  {
    return fileDescriptor;
  }
  
  public String getMimeType()
  {
    return mimeType;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(mimeType);
    paramParcel.writeFileDescriptor(fileDescriptor.getFileDescriptor());
  }
}

/* Location:
 * Qualified Name:     com.facebook.Request.ParcelFileDescriptorWithMimeType
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */