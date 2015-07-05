.class LED;
.super LzU;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LzU",
        "<",
        "LEy;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(LEy;)V
    .locals 0

    .prologue
    .line 262
    invoke-direct {p0, p1}, LzU;-><init>(Ljava/lang/Object;)V

    .line 263
    return-void
.end method


# virtual methods
.method public a(LEy;Landroid/os/Message;)Z
    .locals 2

    .prologue
    .line 267
    invoke-virtual {p1}, LEy;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 269
    invoke-virtual {p1}, LEy;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p1, LEy;->b:LEB;

    invoke-static {}, LAB;->a()LAB;

    move-result-object v1

    invoke-virtual {v1}, LAB;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, LEB;->a(Ljava/util/ArrayList;)V

    .line 273
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Landroid/os/Message;)Z
    .locals 1

    .prologue
    .line 259
    check-cast p1, LEy;

    invoke-virtual {p0, p1, p2}, LED;->a(LEy;Landroid/os/Message;)Z

    move-result v0

    return v0
.end method
