.class final Lbc;
.super Lbj;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lbh;Lbk;)V
    .locals 3

    .prologue
    .line 220
    const/4 v0, 0x3

    const/4 v1, 0x2

    new-array v1, v1, [Lbj;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-direct {p0, v0, v1}, Lbj;-><init>(I[Lbj;)V

    .line 221
    return-void
.end method
