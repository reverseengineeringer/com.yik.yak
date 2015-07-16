public class dw
  extends dm
{
  public Float a(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    paramFloat3 = -paramFloat3;
    paramFloat1 /= paramFloat4;
    return Float.valueOf(paramFloat3 * ((float)Math.sqrt(1.0F - paramFloat1 * paramFloat1) - 1.0F) + paramFloat2);
  }
}

/* Location:
 * Qualified Name:     dw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */