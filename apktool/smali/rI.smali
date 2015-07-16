.class public LrI;
.super LrF;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    const/16 v0, 0x3f1

    invoke-direct {p0, v0}, LrF;-><init>(I)V

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 17
    const/16 v0, 0x3f1

    invoke-direct {p0, v0, p1}, LrF;-><init>(ILjava/lang/String;)V

    .line 18
    return-void
.end method
