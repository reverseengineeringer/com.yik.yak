.class public LBl;
.super LAe;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LAe",
        "<",
        "Lcom/yik/yak/ui/activity/MainActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/activity/MainActivity;)V
    .locals 0

    .prologue
    .line 831
    invoke-direct {p0, p1}, LAe;-><init>(Ljava/lang/Object;)V

    .line 832
    return-void
.end method


# virtual methods
.method public a(Lcom/yik/yak/ui/activity/MainActivity;Landroid/os/Message;)Z
    .locals 2

    .prologue
    .line 836
    sget-object v0, LCU;->b:LCU;

    iget v1, p2, Landroid/os/Message;->arg1:I

    invoke-virtual {p1, v0, v1}, Lcom/yik/yak/ui/activity/MainActivity;->a(LCU;I)V

    .line 837
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Landroid/os/Message;)Z
    .locals 1

    .prologue
    .line 828
    check-cast p1, Lcom/yik/yak/ui/activity/MainActivity;

    invoke-virtual {p0, p1, p2}, LBl;->a(Lcom/yik/yak/ui/activity/MainActivity;Landroid/os/Message;)Z

    move-result v0

    return v0
.end method
