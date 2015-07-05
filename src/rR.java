import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.util.concurrent.BlockingQueue;

class rr
  implements Runnable
{
  private rr(rp paramrp) {}
  
  public void run()
  {
    Thread.currentThread().setName("WebsocketWriteThread");
    try
    {
      while (!Thread.interrupted())
      {
        ByteBuffer localByteBuffer = (ByteBuffer)aa).f.take();
        rp.b(a).write(localByteBuffer.array(), 0, localByteBuffer.limit());
        rp.b(a).flush();
      }
      return;
    }
    catch (IOException localIOException)
    {
      rp.a(a).b();
      return;
    }
    catch (InterruptedException localInterruptedException) {}
  }
}

/* Location:
 * Qualified Name:     rr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */