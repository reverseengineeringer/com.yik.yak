public class ds
  extends dm
{
  private float b;
  
  public Float a(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    paramFloat1 = paramFloat1 / paramFloat4 - 1.0F;
    return Float.valueOf(((paramFloat1 * (b + 1.0F) + b) * (paramFloat1 * paramFloat1) + 1.0F) * paramFloat3 + paramFloat2);
  }
}

/* Location:
 * Qualified Name:     ds
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */