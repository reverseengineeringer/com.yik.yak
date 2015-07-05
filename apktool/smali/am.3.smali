.class Lam;
.super LIm;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LIm",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lal;


# direct methods
.method constructor <init>(Lal;)V
    .locals 0

    .prologue
    .line 719
    iput-object p1, p0, Lam;->a:Lal;

    invoke-direct {p0}, LIm;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lam;->a:Lal;

    invoke-virtual {v0}, Lal;->b()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public b()LIi;
    .locals 1

    .prologue
    .line 727
    sget-object v0, LIi;->d:LIi;

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 719
    invoke-virtual {p0}, Lam;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
