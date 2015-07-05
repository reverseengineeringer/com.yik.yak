.class public Lcom/parse/oauth/OAuth1FlowException;
.super Ljava/lang/Exception;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x3b4b8b79b1ad87c7L


# instance fields
.field private final description:Ljava/lang/String;

.field private final errorCode:I

.field private final failingUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 13
    const-string v0, "OAuth Flow Error %d: Url: %s Description: %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 15
    iput p1, p0, Lcom/parse/oauth/OAuth1FlowException;->errorCode:I

    .line 16
    iput-object p2, p0, Lcom/parse/oauth/OAuth1FlowException;->description:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/parse/oauth/OAuth1FlowException;->failingUrl:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/parse/oauth/OAuth1FlowException;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/parse/oauth/OAuth1FlowException;->errorCode:I

    return v0
.end method

.method public getFailingUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/parse/oauth/OAuth1FlowException;->failingUrl:Ljava/lang/String;

    return-object v0
.end method
