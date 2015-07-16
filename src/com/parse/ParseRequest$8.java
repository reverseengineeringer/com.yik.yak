package com.parse;

import M;
import N;
import Z;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import org.apache.http.client.methods.HttpUriRequest;

class ParseRequest$8
  implements M<Response, N<Response>>
{
  ParseRequest$8(ParseRequest paramParseRequest, int paramInt, long paramLong, ProgressCallback paramProgressCallback) {}
  
  public N<Response> then(N<Response> paramN)
  {
    Object localObject = paramN;
    if (paramN.d())
    {
      localObject = paramN;
      if ((paramN.f() instanceof ParseException))
      {
        if (!((Z)ParseRequest.access$400(this$0).get()).a().c()) {
          break label49;
        }
        localObject = N.h();
      }
    }
    label49:
    do
    {
      return (N<Response>)localObject;
      if (val$attemptsMade < this$0.maxRetries)
      {
        Parse.logI("com.parse.ParseRequest", "Request failed. Waiting " + val$delay + " milliseconds before attempt #" + (val$attemptsMade + 1));
        paramN = N.a();
        Parse.getScheduledExecutor().schedule(new ParseRequest.8.1(this, paramN), val$delay, TimeUnit.MILLISECONDS);
        return paramN.a();
      }
      localObject = paramN;
    } while (ParseRequest.access$000(this$0).isAborted());
    Parse.logI("com.parse.ParseRequest", "Request failed. Giving up.");
    return paramN;
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseRequest.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */