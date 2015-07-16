.class public Lcom/yik/yak/ui/fragment/AreaTopYaksFragment;
.super Lcom/yik/yak/ui/fragment/BaseYakFragment;
.source "SourceFile"

# interfaces
.implements LBn;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    const v0, 0x7f030055

    invoke-direct {p0, v0}, Lcom/yik/yak/ui/fragment/BaseYakFragment;-><init>(I)V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yik/yak/ui/fragment/AreaTopYaksFragment;->j:Z

    .line 40
    return-void
.end method

.method public static a(Ljava/lang/String;ZZZZ)Lcom/yik/yak/ui/fragment/AreaTopYaksFragment;
    .locals 3

    .prologue
    .line 47
    new-instance v0, Lcom/yik/yak/ui/fragment/AreaTopYaksFragment;

    invoke-direct {v0}, Lcom/yik/yak/ui/fragment/AreaTopYaksFragment;-><init>()V

    .line 48
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 49
    const-string v2, "title"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v2, "canSubmit"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 51
    const-string v2, "canVote"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 52
    const-string v2, "canReply"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 53
    const-string v2, "canReport"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 54
    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/fragment/AreaTopYaksFragment;->setArguments(Landroid/os/Bundle;)V

    .line 55
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/AreaTopYaksFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a_()V
    .locals 4

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/AreaTopYaksFragment;->p()V

    .line 68
    sget-object v0, LDX;->b:LDX;

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/AreaTopYaksFragment;->y:LDX;

    .line 70
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/AreaTopYaksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    .line 71
    invoke-static {}, LAD;->a()LAD;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, LAD;->g()Lcom/yik/yak/data/models/YakkerLocation;

    move-result-object v0

    .line 75
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/yik/yak/ui/fragment/AreaTopYaksFragment;->i:Z

    .line 77
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 78
    const-string v2, "userID"

    invoke-static {}, LAa;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v2, "lat"

    invoke-virtual {v0}, Lcom/yik/yak/data/models/YakkerLocation;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v2, "long"

    invoke-virtual {v0}, Lcom/yik/yak/data/models/YakkerLocation;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v2, "getAreaTops"

    .line 84
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/yik/yak/ui/fragment/AreaTopYaksFragment;->n:Ljava/util/ArrayList;

    .line 85
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/yik/yak/ui/fragment/AreaTopYaksFragment;->o:Ljava/util/ArrayList;

    .line 87
    invoke-static {v2, v1, v0}, LAj;->a(Ljava/lang/String;Ljava/util/TreeMap;Lcom/yik/yak/data/models/YakkerLocation;)Ljava/lang/String;

    move-result-object v0

    .line 89
    new-instance v1, LxF;

    invoke-direct {v1}, LxF;-><init>()V

    invoke-virtual {v1, v0}, LxF;->a(Ljava/lang/String;)LxF;

    move-result-object v0

    invoke-virtual {v0}, LxF;->b()LxD;

    move-result-object v0

    .line 93
    const/4 v1, 0x1

    invoke-static {v1}, LAj;->a(Z)Lxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lxy;->a(LxD;)LwY;

    move-result-object v0

    .line 94
    new-instance v1, LDJ;

    invoke-direct {v1, p0}, LDJ;-><init>(Lcom/yik/yak/ui/fragment/AreaTopYaksFragment;)V

    invoke-virtual {v0, v1}, LwY;->a(Lxc;)V

    .line 162
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 60
    invoke-super {p0, p1, p2, p3}, Lcom/yik/yak/ui/fragment/BaseYakFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/yik/yak/ui/fragment/AreaTopYaksFragment;->F:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 62
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/AreaTopYaksFragment;->a_()V

    .line 63
    return-object v0
.end method
