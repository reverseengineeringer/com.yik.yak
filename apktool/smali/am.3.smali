.class Lam;
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
    .line 931
    iput-object p1, p0, Lam;->a:Lah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LKm;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 934
    iget-object v1, p1, LKm;->d:LKc;

    iget-boolean v1, v1, LKc;->a:Z

    if-eqz v1, :cond_1

    .line 935
    iget-object v1, p0, Lam;->a:Lah;

    invoke-virtual {v1}, Lah;->w()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 937
    :goto_0
    return-object v0

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic b(LKm;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 931
    invoke-virtual {p0, p1}, Lam;->a(LKm;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
