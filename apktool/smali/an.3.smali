.class Lan;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LKj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LKj",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lah;


# direct methods
.method constructor <init>(Lah;)V
    .locals 0

    .prologue
    .line 955
    iput-object p1, p0, Lan;->a:Lah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LKm;)Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 958
    const/4 v0, 0x1

    .line 960
    iget-object v1, p0, Lan;->a:Lah;

    invoke-virtual {v1}, Lah;->D()LHA;

    move-result-object v1

    invoke-virtual {v1}, LHA;->b()Landroid/app/Activity;

    move-result-object v1

    .line 962
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lan;->a:Lah;

    invoke-virtual {v2}, Lah;->v()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 964
    iget-object v0, p0, Lan;->a:Lah;

    iget-object v2, p1, LKm;->c:LKe;

    invoke-static {v0, v1, v2}, Lah;->a(Lah;Landroid/app/Activity;LKe;)Z

    move-result v0

    .line 967
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(LKm;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 955
    invoke-virtual {p0, p1}, Lan;->a(LKm;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
