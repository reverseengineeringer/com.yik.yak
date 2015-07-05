import java.io.Serializable;

public abstract class qn<MessageType extends qn<MessageType>>
  extends pO
  implements Serializable
{
  protected pT b = pT.a;
  
  public abstract MessageType a(MessageType paramMessageType);
}

/* Location:
 * Qualified Name:     qn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */