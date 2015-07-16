.class public LEQ;
.super LAe;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LAe",
        "<",
        "Lcom/yik/yak/ui/fragment/HomeFragment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/fragment/HomeFragment;)V
    .locals 0

    .prologue
    .line 826
    invoke-direct {p0, p1}, LAe;-><init>(Ljava/lang/Object;)V

    .line 827
    return-void
.end method


# virtual methods
.method public a(Lcom/yik/yak/ui/fragment/HomeFragment;Landroid/os/Message;)Z
    .locals 1

    .prologue
    .line 831
    invoke-virtual {p1}, Lcom/yik/yak/ui/fragment/HomeFragment;->h()Lcom/yik/yak/ui/activity/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yik/yak/ui/activity/MainActivity;->c()I

    .line 832
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Landroid/os/Message;)Z
    .locals 1

    .prologue
    .line 823
    check-cast p1, Lcom/yik/yak/ui/fragment/HomeFragment;

    invoke-virtual {p0, p1, p2}, LEQ;->a(Lcom/yik/yak/ui/fragment/HomeFragment;Landroid/os/Message;)Z

    move-result v0

    return v0
.end method
