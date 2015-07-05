public class vm
  implements vJ<Integer>
{
  public Integer a(float paramFloat, Integer paramInteger1, Integer paramInteger2)
  {
    int i = paramInteger1.intValue();
    float f = i;
    return Integer.valueOf((int)((paramInteger2.intValue() - i) * paramFloat + f));
  }
}

/* Location:
 * Qualified Name:     vm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */