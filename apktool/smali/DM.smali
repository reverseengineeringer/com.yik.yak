.class LDM;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LwT;


# instance fields
.field a:Landroid/os/Handler;

.field b:I

.field final synthetic c:LDJ;


# direct methods
.method constructor <init>(LDJ;)V
    .locals 2

    .prologue
    .line 256
    iput-object p1, p0, LDM;->c:LDJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, LDM;->c:LDJ;

    invoke-virtual {v1}, LDJ;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, LDM;->a:Landroid/os/Handler;

    .line 258
    const/4 v0, 0x0

    iput v0, p0, LDM;->b:I

    return-void
.end method


# virtual methods
.method public a(Lxt;Ljava/io/IOException;)V
    .locals 0

    .prologue
    .line 266
    return-void
.end method

.method public a(Lxz;)V
    .locals 0

    .prologue
    .line 262
    return-void
.end method
