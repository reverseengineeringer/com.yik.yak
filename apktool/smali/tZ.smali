.class LtZ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Ljava/lang/Runnable;


# instance fields
.field private volatile a:Z

.field private b:Z

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final d:LuB;

.field private final e:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/view/View;LuB;Landroid/os/Handler;)V
    .locals 2

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p2, p0, LtZ;->d:LuB;

    .line 132
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, LtZ;->c:Ljava/lang/ref/WeakReference;

    .line 133
    iput-object p3, p0, LtZ;->e:Landroid/os/Handler;

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, LtZ;->b:Z

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, LtZ;->a:Z

    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 141
    :cond_0
    invoke-virtual {p0}, LtZ;->run()V

    .line 142
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 174
    iget-boolean v0, p0, LtZ;->b:Z

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, LtZ;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 176
    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 182
    :cond_0
    iget-object v0, p0, LtZ;->d:LuB;

    invoke-virtual {v0}, LuB;->a()V

    .line 184
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, LtZ;->b:Z

    .line 185
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, LtZ;->a:Z

    .line 169
    iget-object v0, p0, LtZ;->e:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 170
    return-void
.end method

.method public onGlobalLayout()V
    .locals 0

    .prologue
    .line 146
    invoke-virtual {p0}, LtZ;->run()V

    .line 147
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 151
    iget-boolean v0, p0, LtZ;->b:Z

    if-nez v0, :cond_0

    .line 165
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, LtZ;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 156
    if-eqz v0, :cond_1

    iget-boolean v1, p0, LtZ;->a:Z

    if-eqz v1, :cond_2

    .line 157
    :cond_1
    invoke-direct {p0}, LtZ;->b()V

    goto :goto_0

    .line 162
    :cond_2
    iget-object v1, p0, LtZ;->d:LuB;

    invoke-virtual {v1, v0}, LuB;->b(Landroid/view/View;)V

    .line 163
    iget-object v0, p0, LtZ;->e:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 164
    iget-object v0, p0, LtZ;->e:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
