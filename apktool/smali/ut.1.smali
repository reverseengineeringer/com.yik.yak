.class Lut;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Luq;

.field private volatile b:Z


# direct methods
.method public constructor <init>(Luq;)V
    .locals 1

    .prologue
    .line 120
    iput-object p1, p0, Lut;->a:Luq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lut;->b:Z

    .line 122
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lut;->b:Z

    .line 136
    iget-object v0, p0, Lut;->a:Luq;

    invoke-static {v0}, Luq;->a(Luq;)Luv;

    move-result-object v0

    invoke-virtual {v0, p0}, Luv;->post(Ljava/lang/Runnable;)Z

    .line 137
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lut;->b:Z

    .line 141
    iget-object v0, p0, Lut;->a:Luq;

    invoke-static {v0}, Luq;->a(Luq;)Luv;

    move-result-object v0

    invoke-virtual {v0, p0}, Luv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 142
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 126
    iget-boolean v0, p0, Lut;->b:Z

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lut;->a:Luq;

    invoke-static {v0}, Luq;->a(Luq;)Luv;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Luv;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lut;->a:Luq;

    invoke-static {v1}, Luq;->a(Luq;)Luv;

    move-result-object v1

    invoke-virtual {v1, v0}, Luv;->sendMessage(Landroid/os/Message;)Z

    .line 131
    :cond_0
    iget-object v0, p0, Lut;->a:Luq;

    invoke-static {v0}, Luq;->a(Luq;)Luv;

    move-result-object v0

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, p0, v2, v3}, Luv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 132
    return-void
.end method
