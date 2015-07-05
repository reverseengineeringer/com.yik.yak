.class public LEb;
.super LzU;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LzU",
        "<",
        "Lcom/yik/yak/ui/fragment/HomeFragment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/fragment/HomeFragment;)V
    .locals 0

    .prologue
    .line 772
    invoke-direct {p0, p1}, LzU;-><init>(Ljava/lang/Object;)V

    .line 773
    return-void
.end method


# virtual methods
.method public a(Lcom/yik/yak/ui/fragment/HomeFragment;Landroid/os/Message;)Z
    .locals 1

    .prologue
    .line 777
    invoke-virtual {p1}, Lcom/yik/yak/ui/fragment/HomeFragment;->f()Lcom/yik/yak/ui/activity/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yik/yak/ui/activity/MainActivity;->c()I

    .line 778
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Landroid/os/Message;)Z
    .locals 1

    .prologue
    .line 769
    check-cast p1, Lcom/yik/yak/ui/fragment/HomeFragment;

    invoke-virtual {p0, p1, p2}, LEb;->a(Lcom/yik/yak/ui/fragment/HomeFragment;Landroid/os/Message;)Z

    move-result v0

    return v0
.end method
