.class public LrD;
.super LrB;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    const/16 v0, 0x3ea

    invoke-direct {p0, v0}, LrB;-><init>(I)V

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 21
    const/16 v0, 0x3ea

    invoke-direct {p0, v0, p1}, LrB;-><init>(ILjava/lang/String;)V

    .line 22
    return-void
.end method
