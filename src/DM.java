public class dM
  extends dm
{
  public Float a(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    paramFloat1 /= paramFloat4 / 2.0F;
    if (paramFloat1 < 1.0F) {
      return Float.valueOf(paramFloat1 * (paramFloat3 / 2.0F * paramFloat1 * paramFloat1 * paramFloat1 * paramFloat1) + paramFloat2);
    }
    paramFloat3 /= 2.0F;
    paramFloat1 -= 2.0F;
    return Float.valueOf((paramFloat1 * (paramFloat1 * paramFloat1 * paramFloat1 * paramFloat1) + 2.0F) * paramFloat3 + paramFloat2);
  }
}

/* Location:
 * Qualified Name:     dM
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */