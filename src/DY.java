public class dy
  extends dq
{
  private dz b;
  private dx c;
  
  public Float a(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    if (paramFloat1 < paramFloat4 / 2.0F) {
      return Float.valueOf(c.a(2.0F * paramFloat1, 0.0F, paramFloat3, paramFloat4).floatValue() * 0.5F + paramFloat2);
    }
    return Float.valueOf(b.a(2.0F * paramFloat1 - paramFloat4, 0.0F, paramFloat3, paramFloat4).floatValue() * 0.5F + paramFloat3 * 0.5F + paramFloat2);
  }
}

/* Location:
 * Qualified Name:     dy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */