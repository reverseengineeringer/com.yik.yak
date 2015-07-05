.class final LuR;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LuP;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:I


# direct methods
.method constructor <init>(LuP;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, LuR;->a:LuP;

    iput-object p2, p0, LuR;->b:Ljava/lang/String;

    iput p3, p0, LuR;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, LuR;->a:LuP;

    iget-object v0, v0, LuP;->i:LuQ;

    iget-object v1, p0, LuR;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, LuQ;->B(Ljava/lang/String;)V

    iget-object v0, p0, LuR;->a:LuP;

    iget-object v0, v0, LuP;->i:LuQ;

    iget v1, p0, LuR;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LuQ;->C(Ljava/lang/String;)V

    iget-object v0, p0, LuR;->a:LuP;

    iput-boolean v2, v0, LuP;->d:Z

    iget-object v0, p0, LuR;->a:LuP;

    iget-boolean v0, v0, LuP;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LuR;->a:LuP;

    iget-boolean v0, v0, LuP;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LuR;->a:LuP;

    iget-object v1, v0, LuP;->k:Ljava/util/concurrent/ExecutorService;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, LuR;->a:LuP;

    iget-object v0, v0, LuP;->k:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    iget-object v0, p0, LuR;->a:LuP;

    const/4 v2, 0x1

    iput-boolean v2, v0, LuP;->g:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
