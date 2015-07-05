.class LEw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LwT;


# instance fields
.field a:Landroid/os/Handler;

.field b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:LEv;


# direct methods
.method constructor <init>(LEv;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 141
    iput-object p1, p0, LEw;->d:LEv;

    iput-object p2, p0, LEw;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, LEw;->d:LEv;

    invoke-virtual {v1}, LEv;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, LEw;->a:Landroid/os/Handler;

    .line 143
    const/4 v0, 0x0

    iput v0, p0, LEw;->b:I

    return-void
.end method


# virtual methods
.method public a(Lxt;Ljava/io/IOException;)V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, LEw;->d:LEv;

    invoke-virtual {v0}, LEv;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LEw;->d:LEv;

    invoke-virtual {v0}, LEv;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    iget-object v0, p0, LEw;->d:LEv;

    invoke-virtual {v0, p2}, LEv;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public a(Lxz;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 147
    iget-object v0, p0, LEw;->d:LEv;

    invoke-virtual {v0}, LEv;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LEw;->d:LEv;

    invoke-virtual {v0}, LEv;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    invoke-virtual {p1}, Lxz;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 152
    iget-object v0, p0, LEw;->d:LEv;

    invoke-virtual {v0, v2}, LEv;->a(Ljava/lang/Exception;)V

    goto :goto_0

    .line 156
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

    .line 166
    iget-object v1, p0, LEw;->a:Landroid/os/Handler;

    new-instance v2, LEx;

    invoke-direct {v2, p0, v0}, LEx;-><init>(LEw;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    iget-object v0, p0, LEw;->d:LEv;

    invoke-virtual {v0, v2}, LEv;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
