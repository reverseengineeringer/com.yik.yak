import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;

class ug
  implements SensorEventListener
{
  private int a = -1;
  private int b = 0;
  private long c = -1L;
  private final float[] d = new float[3];
  private final uh e;
  
  public ug(uh paramuh)
  {
    e = paramuh;
  }
  
  private float[] a(float[] paramArrayOfFloat)
  {
    int i = 0;
    while (i < 3)
    {
      float f = d[i];
      d[i] = (f + 0.7F * (paramArrayOfFloat[i] - f));
      i += 1;
    }
    return d;
  }
  
  public void onAccuracyChanged(Sensor paramSensor, int paramInt) {}
  
  public void onSensorChanged(SensorEvent paramSensorEvent)
  {
    float[] arrayOfFloat = a(values);
    int i = b;
    float f = arrayOfFloat[0] * arrayOfFloat[0] + arrayOfFloat[1] * arrayOfFloat[1] + arrayOfFloat[2] * arrayOfFloat[2];
    b = 0;
    if ((arrayOfFloat[2] > 7.8F) && (arrayOfFloat[2] < 11.8F)) {
      b = -1;
    }
    if ((arrayOfFloat[2] < -7.8F) && (arrayOfFloat[2] > -11.8F)) {
      b = 1;
    }
    if ((f < 60.840004F) || (f > 139.24F)) {
      b = 0;
    }
    if (i != b) {
      c = timestamp;
    }
    long l = timestamp - c;
    switch (b)
    {
    }
    do
    {
      do
      {
        do
        {
          return;
        } while ((l <= 250000000L) || (a != 0));
        bool = sD.a;
        a = 1;
        return;
      } while ((l <= 250000000L) || (a != 1));
      bool = sD.a;
      a = 0;
      e.a();
      return;
    } while ((l <= 1000000000L) || (a == 0));
    boolean bool = sD.a;
    a = 0;
  }
}

/* Location:
 * Qualified Name:     ug
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */