.class public Lcom/yik/yak/data/http/request/GetBasecampsRequest;
.super Lcom/yik/yak/data/http/request/BaseRequest;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/yik/yak/data/http/request/BaseRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public getMethodType()Lcom/yik/yak/data/http/request/MethodType;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/yik/yak/data/http/request/MethodType;->GET:Lcom/yik/yak/data/http/request/MethodType;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    const-string v0, "http://ec2-54-173-31-102.compute-1.amazonaws.com/getSites"

    return-object v0
.end method
