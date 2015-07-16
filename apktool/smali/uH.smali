.class LuH;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LuE;

.field private volatile b:Z


# direct methods
.method public constructor <init>(LuE;)V
    .locals 1

    .prologue
    .line 149
    iput-object p1, p0, LuH;->a:LuE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, LuH;->b:Z

    .line 151
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, LuH;->b:Z

    .line 165
    iget-object v0, p0, LuH;->a:LuE;

    invoke-static {v0}, LuE;->a(LuE;)LuM;

    move-result-object v0

    invoke-virtual {v0, p0}, LuM;->post(Ljava/lang/Runnable;)Z

    .line 166
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, LuH;->b:Z

    .line 170
    iget-object v0, p0, LuH;->a:LuE;

    invoke-static {v0}, LuE;->a(LuE;)LuM;

    move-result-object v0

    invoke-virtual {v0, p0}, LuM;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 171
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 155
    iget-boolean v0, p0, LuH;->b:Z

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, LuH;->a:LuE;

    invoke-static {v0}, LuE;->a(LuE;)LuM;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LuM;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 157
    iget-object v1, p0, LuH;->a:LuE;

    invoke-static {v1}, LuE;->a(LuE;)LuM;

    move-result-object v1

    invoke-virtual {v1, v0}, LuM;->sendMessage(Landroid/os/Message;)Z

    .line 160
    :cond_0
    iget-object v0, p0, LuH;->a:LuE;

    invoke-static {v0}, LuE;->a(LuE;)LuM;

    move-result-object v0

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, p0, v2, v3}, LuM;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 161
    return-void
.end method
