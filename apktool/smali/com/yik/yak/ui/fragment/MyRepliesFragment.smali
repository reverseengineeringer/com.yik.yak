.class public Lcom/yik/yak/ui/fragment/MyRepliesFragment;
.super Lcom/yik/yak/ui/fragment/BaseYakFragment;
.source "SourceFile"

# interfaces
.implements LBn;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    const v0, 0x7f030055

    invoke-direct {p0, v0}, Lcom/yik/yak/ui/fragment/BaseYakFragment;-><init>(I)V

    .line 37
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    const-string v0, "My Replies"

    return-object v0
.end method

.method public a_()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 49
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/MyRepliesFragment;->p()V

    .line 51
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/MyRepliesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    .line 52
    invoke-static {}, LAD;->a()LAD;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, LAD;->g()Lcom/yik/yak/data/models/YakkerLocation;

    move-result-object v1

    .line 56
    iput-boolean v4, p0, Lcom/yik/yak/ui/fragment/MyRepliesFragment;->i:Z

    .line 58
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 59
    const-string v0, "userID"

    invoke-static {}, LAa;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v0, "lat"

    invoke-virtual {v1}, Lcom/yik/yak/data/models/YakkerLocation;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v0, "long"

    invoke-virtual {v1}, Lcom/yik/yak/data/models/YakkerLocation;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/MyRepliesFragment;->y:LDX;

    sget-object v3, LDX;->b:LDX;

    if-ne v0, v3, :cond_0

    .line 66
    const-string v0, "getMyTops"

    .line 67
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/yik/yak/ui/fragment/MyRepliesFragment;->o:Ljava/util/ArrayList;

    .line 72
    :goto_0
    iput-boolean v4, p0, Lcom/yik/yak/ui/fragment/MyRepliesFragment;->j:Z

    .line 74
    invoke-static {v0, v2, v1}, LAj;->a(Ljava/lang/String;Ljava/util/TreeMap;Lcom/yik/yak/data/models/YakkerLocation;)Ljava/lang/String;

    move-result-object v0

    .line 75
    new-instance v1, LxF;

    invoke-direct {v1}, LxF;-><init>()V

    invoke-virtual {v1, v0}, LxF;->a(Ljava/lang/String;)LxF;

    move-result-object v0

    invoke-virtual {v0}, LxF;->b()LxD;

    move-result-object v0

    .line 79
    const/4 v1, 0x1

    invoke-static {v1}, LAj;->a(Z)Lxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lxy;->a(LxD;)LwY;

    move-result-object v0

    .line 80
    new-instance v1, LFb;

    invoke-direct {v1, p0}, LFb;-><init>(Lcom/yik/yak/ui/fragment/MyRepliesFragment;)V

    invoke-virtual {v0, v1}, LwY;->a(Lxc;)V

    .line 150
    return-void

    .line 69
    :cond_0
    const-string v0, "getMyRecentReplies"

    .line 70
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/yik/yak/ui/fragment/MyRepliesFragment;->n:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 41
    invoke-super {p0, p1, p2, p3}, Lcom/yik/yak/ui/fragment/BaseYakFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 42
    const-string v1, "MyReplies"

    iput-object v1, p0, Lcom/yik/yak/ui/fragment/MyRepliesFragment;->m:Ljava/lang/String;

    .line 43
    sget-object v1, LDX;->a:LDX;

    iput-object v1, p0, Lcom/yik/yak/ui/fragment/MyRepliesFragment;->y:LDX;

    .line 44
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/MyRepliesFragment;->a_()V

    .line 45
    return-object v0
.end method
