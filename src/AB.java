class ab
  implements Q<TResult, R<TContinuationResult>>
{
  ab(R paramR, Q paramQ) {}
  
  public R<TContinuationResult> a(R<TResult> paramR)
  {
    if (paramR.d()) {
      return R.a(paramR.f());
    }
    if (paramR.c()) {
      return R.h();
    }
    return paramR.b(a);
  }
}

/* Location:
 * Qualified Name:     ab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */