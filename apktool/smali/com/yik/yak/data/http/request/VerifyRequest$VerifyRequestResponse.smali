.class public Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mErrorCode:I

.field public mErrorMessage:Ljava/lang/String;

.field public mVerificationSuccessful:Z

.field final synthetic this$0:Lcom/yik/yak/data/http/request/VerifyRequest;


# direct methods
.method public constructor <init>(Lcom/yik/yak/data/http/request/VerifyRequest;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestResponse;->this$0:Lcom/yik/yak/data/http/request/VerifyRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
