.class public Lcom/parse/signpost/exception/OAuthMessageSignerException;
.super Lcom/parse/signpost/exception/OAuthException;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/parse/signpost/exception/OAuthException;-><init>(Ljava/lang/Throwable;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/parse/signpost/exception/OAuthException;-><init>(Ljava/lang/String;)V

    .line 23
    return-void
.end method
