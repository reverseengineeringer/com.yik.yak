package com.parse;

import R;
import ad;

class Parse$6$1
  implements Runnable
{
  Parse$6$1(Parse.6 param6, R paramR) {}
  
  public void run()
  {
    try
    {
      localObject1 = val$task.f();
      if ((localObject1 == null) || ((localObject1 instanceof ParseException))) {
        break label189;
      }
      localObject1 = new ParseException((Throwable)localObject1);
    }
    finally
    {
      label189:
      for (;;)
      {
        Object localObject1;
        if (val$task.c()) {
          this$0.val$tcs.c();
        }
        for (;;)
        {
          throw ((Throwable)localObject2);
          if (val$task.d()) {
            this$0.val$tcs.b(val$task.f());
          } else {
            this$0.val$tcs.b(val$task.e());
          }
        }
      }
    }
    this$0.val$callback.internalDone(val$task.e(), (ParseException)localObject1);
    if (val$task.c())
    {
      this$0.val$tcs.c();
      return;
    }
    if (val$task.d())
    {
      this$0.val$tcs.b(val$task.f());
      return;
    }
    this$0.val$tcs.b(val$task.e());
  }
}

/* Location:
 * Qualified Name:     com.parse.Parse.6.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */