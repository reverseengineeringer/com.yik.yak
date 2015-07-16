public class vt
  implements vS<Number>
{
  public Float a(float paramFloat, Number paramNumber1, Number paramNumber2)
  {
    float f = paramNumber1.floatValue();
    return Float.valueOf(f + (paramNumber2.floatValue() - f) * paramFloat);
  }
}

/* Location:
 * Qualified Name:     vt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */