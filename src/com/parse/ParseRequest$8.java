package com.parse;

import Q;
import R;
import ad;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import org.apache.http.client.methods.HttpUriRequest;

class ParseRequest$8
  implements Q<Response, R<Response>>
{
  ParseRequest$8(ParseRequest paramParseRequest, int paramInt, long paramLong, ProgressCallback paramProgressCallback) {}
  
  public R<Response> then(R<Response> paramR)
  {
    Object localObject = paramR;
    if (paramR.d())
    {
      localObject = paramR;
      if ((paramR.f() instanceof ParseException))
      {
        if (!((ad)ParseRequest.access$400(this$0).get()).a().c()) {
          break label49;
        }
        localObject = R.h();
      }
    }
    label49:
    do
    {
      return (R<Response>)localObject;
      if (val$attemptsMade < this$0.maxRetries)
      {
        Parse.logI("com.parse.ParseRequest", "Request failed. Waiting " + val$delay + " milliseconds before attempt #" + (val$attemptsMade + 1));
        paramR = R.a();
        Parse.getScheduledExecutor().schedule(new ParseRequest.8.1(this, paramR), val$delay, TimeUnit.MILLISECONDS);
        return paramR.a();
      }
      localObject = paramR;
    } while (ParseRequest.access$000(this$0).isAborted());
    Parse.logI("com.parse.ParseRequest", "Request failed. Giving up.");
    return paramR;
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseRequest.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */