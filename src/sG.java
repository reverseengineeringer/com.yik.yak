import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff.Mode;
import android.os.AsyncTask;

class sg
  extends AsyncTask<Void, Void, Void>
{
  private final sh a;
  private final Activity b;
  private Bitmap c;
  private int d;
  
  public sg(Activity paramActivity, sh paramsh)
  {
    b = paramActivity;
    a = paramsh;
    d = -16777216;
  }
  
  protected Void a(Void... paramVarArgs)
  {
    if (c != null) {}
    try
    {
      tN.a(c, 20);
      new Canvas(c).drawColor(se.a(), PorterDuff.Mode.SRC_ATOP);
      return null;
    }
    catch (ArrayIndexOutOfBoundsException paramVarArgs)
    {
      c = null;
      return null;
    }
    catch (OutOfMemoryError paramVarArgs)
    {
      c = null;
    }
    return null;
  }
  
  protected void a(Void paramVoid)
  {
    a.a(c, d);
  }
  
  protected void onPreExecute()
  {
    c = tK.a(b, 2, 2, true);
    d = tK.a(c);
  }
}

/* Location:
 * Qualified Name:     sg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */