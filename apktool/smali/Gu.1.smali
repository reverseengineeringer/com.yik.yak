.class LGu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LwT;


# instance fields
.field final synthetic a:LGs;


# direct methods
.method constructor <init>(LGs;)V
    .locals 0

    .prologue
    .line 779
    iput-object p1, p0, LGu;->a:LGs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lxt;Ljava/io/IOException;)V
    .locals 2

    .prologue
    .line 788
    instance-of v0, p2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p0, LGu;->a:LGs;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LGs;->d(Z)V

    .line 791
    :cond_0
    return-void
.end method

.method public a(Lxz;)V
    .locals 2

    .prologue
    .line 783
    iget-object v0, p0, LGu;->a:LGs;

    invoke-virtual {p1}, Lxz;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, LGs;->d(Z)V

    .line 784
    return-void
.end method
