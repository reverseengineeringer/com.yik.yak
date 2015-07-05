.class LaP;
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
.field final synthetic a:Ljava/util/Date;

.field final synthetic b:Ljava/lang/Thread;

.field final synthetic c:Ljava/lang/Throwable;

.field final synthetic d:LaD;


# direct methods
.method constructor <init>(LaD;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, LaP;->d:LaD;

    iput-object p2, p0, LaP;->a:Ljava/util/Date;

    iput-object p3, p0, LaP;->b:Ljava/lang/Thread;

    iput-object p4, p0, LaP;->c:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 4

    .prologue
    .line 277
    iget-object v0, p0, LaP;->d:LaD;

    iget-object v1, p0, LaP;->a:Ljava/util/Date;

    iget-object v2, p0, LaP;->b:Ljava/lang/Thread;

    iget-object v3, p0, LaP;->c:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2, v3}, LaD;->a(LaD;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 278
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 274
    invoke-virtual {p0}, LaP;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
