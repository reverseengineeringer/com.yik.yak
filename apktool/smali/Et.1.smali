.class LEt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LwT;


# instance fields
.field a:Landroid/os/Handler;

.field b:I

.field final synthetic c:LEs;


# direct methods
.method constructor <init>(LEs;)V
    .locals 2

    .prologue
    .line 87
    iput-object p1, p0, LEt;->c:LEs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, LEt;->c:LEs;

    invoke-virtual {v1}, LEs;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, LEt;->a:Landroid/os/Handler;

    .line 89
    const/4 v0, 0x0

    iput v0, p0, LEt;->b:I

    return-void
.end method


# virtual methods
.method public a(Lxt;Ljava/io/IOException;)V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, LEt;->c:LEs;

    invoke-virtual {v0}, LEs;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LEt;->c:LEs;

    invoke-virtual {v0}, LEs;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v0, p0, LEt;->c:LEs;

    invoke-virtual {v0, p2}, LEs;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public a(Lxz;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 93
    iget-object v0, p0, LEt;->c:LEs;

    invoke-virtual {v0}, LEs;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LEt;->c:LEs;

    invoke-virtual {v0}, LEs;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    invoke-virtual {p1}, Lxz;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 97
    iget-object v0, p0, LEt;->c:LEs;

    invoke-virtual {v0, v2}, LEs;->a(Ljava/lang/Exception;)V

    goto :goto_0

    .line 100
    :cond_2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lxz;->h()LxC;

    move-result-object v1

    invoke-virtual {v1}, LxC;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    iget-object v1, p0, LEt;->a:Landroid/os/Handler;

    new-instance v2, LEu;

    invoke-direct {v2, p0, v0}, LEu;-><init>(LEt;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    iget-object v0, p0, LEt;->c:LEs;

    invoke-virtual {v0, v2}, LEs;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
