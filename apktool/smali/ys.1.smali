.class final Lys;
.super LxC;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, LxC;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lxn;
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

.method public c()LJT;
    .locals 1

    .prologue
    .line 105
    new-instance v0, LJP;

    invoke-direct {v0}, LJP;-><init>()V

    return-object v0
.end method
