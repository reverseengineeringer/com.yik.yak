import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff.Mode;
import android.os.AsyncTask;

class sk
  extends AsyncTask<Void, Void, Void>
{
  private final sl a;
  private final Activity b;
  private Bitmap c;
  private int d;
  
  public sk(Activity paramActivity, sl paramsl)
  {
    b = paramActivity;
    a = paramsl;
    d = -16777216;
  }
  
  protected Void a(Void... paramVarArgs)
  {
    if (c != null) {}
    try
    {
      tW.a(c, 20);
      new Canvas(c).drawColor(si.a(), PorterDuff.Mode.SRC_ATOP);
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
    c = tQ.a(b, 2, 2, true);
    d = tQ.a(c);
  }
}

/* Location:
 * Qualified Name:     sk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */