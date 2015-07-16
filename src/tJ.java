import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.mixpanel.android.mpmetrics.Survey;
import org.json.JSONException;
import org.json.JSONObject;

public final class tj
  implements Parcelable.Creator<Survey>
{
  public Survey a(Parcel paramParcel)
  {
    paramParcel = paramParcel.readString();
    try
    {
      paramParcel = new Survey(new JSONObject(paramParcel));
      return paramParcel;
    }
    catch (JSONException paramParcel)
    {
      throw new RuntimeException("Corrupted JSON object written to survey parcel.", paramParcel);
    }
    catch (sm paramParcel)
    {
      throw new RuntimeException("Unexpected or incomplete object written to survey parcel.", paramParcel);
    }
  }
  
  public Survey[] a(int paramInt)
  {
    return new Survey[paramInt];
  }
}

/* Location:
 * Qualified Name:     tj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */