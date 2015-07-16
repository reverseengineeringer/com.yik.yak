public class dx
  extends dm
{
  public Float a(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    paramFloat1 /= paramFloat4 / 2.0F;
    if (paramFloat1 < 1.0F)
    {
      paramFloat3 = -paramFloat3 / 2.0F;
      return Float.valueOf(((float)Math.sqrt(1.0F - paramFloat1 * paramFloat1) - 1.0F) * paramFloat3 + paramFloat2);
    }
    paramFloat3 /= 2.0F;
    paramFloat1 -= 2.0F;
    return Float.valueOf(((float)Math.sqrt(1.0F - paramFloat1 * paramFloat1) + 1.0F) * paramFloat3 + paramFloat2);
  }
}

/* Location:
 * Qualified Name:     dx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */