.class LU;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LM",
        "<TTResult;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LZ;

.field final synthetic b:LM;

.field final synthetic c:Ljava/util/concurrent/Executor;

.field final synthetic d:LN;


# direct methods
.method constructor <init>(LN;LZ;LM;Ljava/util/concurrent/Executor;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, LU;->d:LN;

    iput-object p2, p0, LU;->a:LZ;

    iput-object p3, p0, LU;->b:LM;

    iput-object p4, p0, LU;->c:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LN;)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LN",
            "<TTResult;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 316
    iget-object v0, p0, LU;->a:LZ;

    iget-object v1, p0, LU;->b:LM;

    iget-object v2, p0, LU;->c:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1, v2}, LN;->a(LZ;LM;LN;Ljava/util/concurrent/Executor;)V

    .line 317
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 313
    invoke-virtual {p0, p1}, LU;->a(LN;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
