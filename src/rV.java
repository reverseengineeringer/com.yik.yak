import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.util.concurrent.BlockingQueue;

class rv
  implements Runnable
{
  private rv(rt paramrt) {}
  
  public void run()
  {
    Thread.currentThread().setName("WebsocketWriteThread");
    try
    {
      while (!Thread.interrupted())
      {
        ByteBuffer localByteBuffer = (ByteBuffer)aa).f.take();
        rt.b(a).write(localByteBuffer.array(), 0, localByteBuffer.limit());
        rt.b(a).flush();
      }
      return;
    }
    catch (IOException localIOException)
    {
      rt.a(a).b();
      return;
    }
    catch (InterruptedException localInterruptedException) {}
  }
}

/* Location:
 * Qualified Name:     rv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */