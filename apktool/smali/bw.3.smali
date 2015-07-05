.class public Lbw;
.super Lbx;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lbx;-><init>()V

    return-void
.end method

.method public static b()Lbw;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lbw;

    invoke-static {v0}, LGS;->a(Ljava/lang/Class;)LHc;

    move-result-object v0

    check-cast v0, Lbw;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(LHA;)V
    .locals 0

    .prologue
    .line 5
    invoke-super {p0, p1}, Lbx;->a(LHA;)V

    return-void
.end method

.method public bridge synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5
    invoke-super {p0}, Lbx;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5
    invoke-super {p0}, Lbx;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
