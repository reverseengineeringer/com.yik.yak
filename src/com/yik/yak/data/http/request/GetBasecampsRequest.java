package com.yik.yak.data.http.request;

public class GetBasecampsRequest
  extends BaseRequest
{
  public MethodType getMethodType()
  {
    return MethodType.GET;
  }
  
  public String getUrl()
  {
    return "http://ec2-54-173-31-102.compute-1.amazonaws.com/getSites";
  }
}

/* Location:
 * Qualified Name:     com.yik.yak.data.http.request.GetBasecampsRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */