public class dv
  extends dm
{
  public Float a(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    paramFloat1 /= paramFloat4;
    if (paramFloat1 < 0.36363637F) {
      return Float.valueOf(paramFloat1 * (7.5625F * paramFloat1) * paramFloat3 + paramFloat2);
    }
    if (paramFloat1 < 0.72727275F)
    {
      paramFloat1 -= 0.54545456F;
      return Float.valueOf((paramFloat1 * (7.5625F * paramFloat1) + 0.75F) * paramFloat3 + paramFloat2);
    }
    if (paramFloat1 < 0.9090909090909091D)
    {
      paramFloat1 -= 0.8181818F;
      return Float.valueOf((paramFloat1 * (7.5625F * paramFloat1) + 0.9375F) * paramFloat3 + paramFloat2);
    }
    paramFloat1 -= 0.95454544F;
    return Float.valueOf((paramFloat1 * (7.5625F * paramFloat1) + 0.984375F) * paramFloat3 + paramFloat2);
  }
}

/* Location:
 * Qualified Name:     dv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */