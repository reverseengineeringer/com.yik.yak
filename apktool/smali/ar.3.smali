.class Lar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJB;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LJB",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lal;


# direct methods
.method constructor <init>(Lal;)V
    .locals 0

    .prologue
    .line 955
    iput-object p1, p0, Lar;->a:Lal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LJE;)Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 958
    const/4 v0, 0x1

    .line 960
    iget-object v1, p0, Lar;->a:Lal;

    invoke-virtual {v1}, Lal;->D()LGS;

    move-result-object v1

    invoke-virtual {v1}, LGS;->b()Landroid/app/Activity;

    move-result-object v1

    .line 962
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lar;->a:Lal;

    invoke-virtual {v2}, Lal;->v()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 964
    iget-object v0, p0, Lar;->a:Lal;

    iget-object v2, p1, LJE;->c:LJw;

    invoke-static {v0, v1, v2}, Lal;->a(Lal;Landroid/app/Activity;LJw;)Z

    move-result v0

    .line 967
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(LJE;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 955
    invoke-virtual {p0, p1}, Lar;->a(LJE;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
