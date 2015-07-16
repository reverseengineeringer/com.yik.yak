.class public Lbs;
.super Lbt;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lbt;-><init>()V

    return-void
.end method

.method public static b()Lbs;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lbs;

    invoke-static {v0}, LHA;->a(Ljava/lang/Class;)LHK;

    move-result-object v0

    check-cast v0, Lbs;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(LIi;)V
    .locals 0

    .prologue
    .line 5
    invoke-super {p0, p1}, Lbt;->a(LIi;)V

    return-void
.end method

.method public bridge synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5
    invoke-super {p0}, Lbt;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5
    invoke-super {p0}, Lbt;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
