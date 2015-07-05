.class final Lbh;
.super Lbj;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lbl;Lbk;Lbk;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 233
    const/4 v0, 0x3

    new-array v0, v0, [Lbj;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    aput-object p1, v0, v2

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-direct {p0, v2, v0}, Lbj;-><init>(I[Lbj;)V

    .line 234
    return-void
.end method
