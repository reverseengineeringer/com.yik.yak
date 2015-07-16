import java.io.IOException;

public class qc
  extends IOException
{
  qc()
  {
    super("CodedOutputStream was writing to a flat byte array and ran out of space.");
  }
}

/* Location:
 * Qualified Name:     qc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */