.class LY;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LQ",
        "<TTResult;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lad;

.field final synthetic b:LQ;

.field final synthetic c:Ljava/util/concurrent/Executor;

.field final synthetic d:LR;


# direct methods
.method constructor <init>(LR;Lad;LQ;Ljava/util/concurrent/Executor;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, LY;->d:LR;

    iput-object p2, p0, LY;->a:Lad;

    iput-object p3, p0, LY;->b:LQ;

    iput-object p4, p0, LY;->c:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LR;)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR",
            "<TTResult;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 316
    iget-object v0, p0, LY;->a:Lad;

    iget-object v1, p0, LY;->b:LQ;

    iget-object v2, p0, LY;->c:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1, v2}, LR;->a(Lad;LQ;LR;Ljava/util/concurrent/Executor;)V

    .line 317
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 313
    invoke-virtual {p0, p1}, LY;->a(LR;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
