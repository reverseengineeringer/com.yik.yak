.class final LyC;
.super LxM;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, LxM;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lxx;
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 102
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public c()LKB;
    .locals 1

    .prologue
    .line 105
    new-instance v0, LKx;

    invoke-direct {v0}, LKx;-><init>()V

    return-object v0
.end method
