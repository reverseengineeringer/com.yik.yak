.class LaB;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Laz;


# direct methods
.method constructor <init>(Laz;)V
    .locals 0

    .prologue
    .line 452
    iput-object p1, p0, LaB;->a:Laz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, LaB;->a:Laz;

    invoke-virtual {v0}, Laz;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 456
    iget-object v0, p0, LaB;->a:Laz;

    invoke-static {v0}, Laz;->c(Laz;)V

    .line 458
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 452
    invoke-virtual {p0}, LaB;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
