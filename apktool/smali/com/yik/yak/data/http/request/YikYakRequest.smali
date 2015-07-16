.class public interface abstract Lcom/yik/yak/data/http/request/YikYakRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract buildBody()Lorg/json/JSONObject;
.end method

.method public abstract buildRequest()LxD;
.end method

.method public abstract buildResponse(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract getMethodType()Lcom/yik/yak/data/http/request/MethodType;
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method
