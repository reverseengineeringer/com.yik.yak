public class dv
  extends dq
{
  private float b;
  
  public Float a(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    paramFloat1 /= paramFloat4 / 2.0F;
    if (paramFloat1 < 1.0F)
    {
      paramFloat3 /= 2.0F;
      paramFloat4 = (float)(b * 1.525D);
      b = paramFloat4;
      return Float.valueOf((paramFloat1 * (paramFloat4 + 1.0F) - b) * (paramFloat1 * paramFloat1) * paramFloat3 + paramFloat2);
    }
    paramFloat3 /= 2.0F;
    paramFloat1 -= 2.0F;
    paramFloat4 = (float)(b * 1.525D);
    b = paramFloat4;
    return Float.valueOf(((paramFloat1 * (paramFloat4 + 1.0F) + b) * (paramFloat1 * paramFloat1) + 2.0F) * paramFloat3 + paramFloat2);
  }
}

/* Location:
 * Qualified Name:     dv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */