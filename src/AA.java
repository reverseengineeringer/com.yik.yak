class aa
  implements Q<TResult, R<TContinuationResult>>
{
  aa(R paramR, Q paramQ) {}
  
  public R<TContinuationResult> a(R<TResult> paramR)
  {
    if (paramR.d()) {
      return R.a(paramR.f());
    }
    if (paramR.c()) {
      return R.h();
    }
    return paramR.a(a);
  }
}

/* Location:
 * Qualified Name:     aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */