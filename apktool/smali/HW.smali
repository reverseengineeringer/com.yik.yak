.class LHW;
.super LIe;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LIe",
        "<TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic a:LHU;


# direct methods
.method constructor <init>(LHU;)V
    .locals 1

    .prologue
    .line 288
    iput-object p1, p0, LHW;->a:LHU;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, LIe;-><init>(LHV;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .prologue
    .line 290
    iget-object v0, p0, LHW;->a:LHU;

    invoke-static {v0}, LHU;->a(LHU;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 292
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 294
    iget-object v0, p0, LHW;->a:LHU;

    iget-object v1, p0, LHW;->a:LHU;

    iget-object v2, p0, LHW;->b:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, LHU;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, LHU;->a(LHU;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
