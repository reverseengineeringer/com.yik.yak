.class public Lcom/parse/signpost/exception/OAuthNotAuthorizedException;
.super Lcom/parse/signpost/exception/OAuthException;
.source "SourceFile"


# static fields
.field private static final ERROR:Ljava/lang/String; = "Authorization failed (server replied with a 401). This can happen if the consumer key was not correct or the signatures did not match."


# instance fields
.field private responseBody:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "Authorization failed (server replied with a 401). This can happen if the consumer key was not correct or the signatures did not match."

    invoke-direct {p0, v0}, Lcom/parse/signpost/exception/OAuthException;-><init>(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 32
    const-string v0, "Authorization failed (server replied with a 401). This can happen if the consumer key was not correct or the signatures did not match."

    invoke-direct {p0, v0}, Lcom/parse/signpost/exception/OAuthException;-><init>(Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/parse/signpost/exception/OAuthNotAuthorizedException;->responseBody:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public getResponseBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/parse/signpost/exception/OAuthNotAuthorizedException;->responseBody:Ljava/lang/String;

    return-object v0
.end method
