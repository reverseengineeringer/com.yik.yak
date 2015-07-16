package com.parse;

import L;
import android.annotation.SuppressLint;
import java.util.ArrayList;
import java.util.List;

class ParseQueryAdapter$3
  extends FindCallback<T>
{
  ParseQueryAdapter$3(ParseQueryAdapter paramParseQueryAdapter, ParseQuery paramParseQuery, boolean paramBoolean, L paramL, int paramInt) {}
  
  @SuppressLint({"ShowToast"})
  public void done(List<T> paramList, ParseException paramParseException)
  {
    if ((!OfflineStore.isEnabled()) && (val$query.getCachePolicy() == ParseQuery.CachePolicy.CACHE_ONLY) && (paramParseException != null) && (paramParseException.getCode() == 120)) {
      return;
    }
    if ((paramParseException != null) && ((paramParseException.getCode() == 100) || (paramParseException.getCode() != 120))) {
      ParseQueryAdapter.access$002(this$0, true);
    }
    while (paramList == null)
    {
      ParseQueryAdapter.access$600(this$0, paramList, paramParseException);
      return;
    }
    if ((val$shouldClear) && (((Boolean)val$firstCallBack.a()).booleanValue()))
    {
      ParseQueryAdapter.access$100(this$0).clear();
      ParseQueryAdapter.access$100(this$0).add(new ArrayList());
      ParseQueryAdapter.access$202(this$0, val$page);
      val$firstCallBack.a(Boolean.valueOf(false));
    }
    Object localObject;
    if (val$page >= ParseQueryAdapter.access$200(this$0))
    {
      ParseQueryAdapter.access$202(this$0, val$page);
      localObject = this$0;
      if (paramList.size() <= ParseQueryAdapter.access$300(this$0)) {
        break label307;
      }
    }
    label307:
    for (boolean bool = true;; bool = false)
    {
      ParseQueryAdapter.access$002((ParseQueryAdapter)localObject, bool);
      if ((ParseQueryAdapter.access$400(this$0)) && (paramList.size() > ParseQueryAdapter.access$300(this$0))) {
        paramList.remove(ParseQueryAdapter.access$300(this$0));
      }
      localObject = (List)ParseQueryAdapter.access$100(this$0).get(val$page);
      ((List)localObject).clear();
      ((List)localObject).addAll(paramList);
      ParseQueryAdapter.access$500(this$0);
      this$0.notifyDataSetChanged();
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseQueryAdapter.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */