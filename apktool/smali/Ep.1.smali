.class public LEp;
.super LDh;
.source "SourceFile"

# interfaces
.implements LBd;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    const v0, 0x7f03004f

    invoke-direct {p0, v0}, LDh;-><init>(I)V

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
    invoke-virtual {p0}, LEp;->l()V

    .line 51
    invoke-virtual {p0}, LEp;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 52
    invoke-static {v0}, LAq;->a(Landroid/content/Context;)LAq;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, LAq;->f()Lcom/yik/yak/data/models/YakkerLocation;

    move-result-object v1

    .line 56
    iput-boolean v4, p0, LEp;->h:Z

    .line 58
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 59
    const-string v0, "userID"

    invoke-static {}, LzQ;->c()Ljava/lang/String;

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
    iget-object v0, p0, LEp;->x:LDt;

    sget-object v3, LDt;->b:LDt;

    if-ne v0, v3, :cond_0

    .line 66
    const-string v0, "getMyTops"

    .line 67
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, LEp;->n:Ljava/util/ArrayList;

    .line 72
    :goto_0
    iput-boolean v4, p0, LEp;->i:Z

    .line 74
    invoke-static {v0, v2, v1}, LzY;->a(Ljava/lang/String;Ljava/util/TreeMap;Lcom/yik/yak/data/models/YakkerLocation;)Ljava/lang/String;

    move-result-object v0

    .line 75
    new-instance v1, Lxv;

    invoke-direct {v1}, Lxv;-><init>()V

    invoke-virtual {v1, v0}, Lxv;->a(Ljava/lang/String;)Lxv;

    move-result-object v0

    invoke-virtual {v0}, Lxv;->b()Lxt;

    move-result-object v0

    .line 79
    const/4 v1, 0x1

    invoke-static {v1}, LzY;->a(Z)Lxo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lxo;->a(Lxt;)LwP;

    move-result-object v0

    .line 80
    new-instance v1, LEq;

    invoke-direct {v1, p0}, LEq;-><init>(LEp;)V

    invoke-virtual {v0, v1}, LwP;->a(LwT;)V

    .line 150
    return-void

    .line 69
    :cond_0
    const-string v0, "getMyRecentReplies"

    .line 70
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, LEp;->m:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 41
    invoke-super {p0, p1, p2, p3}, LDh;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 42
    const-string v1, "MyReplies"

    iput-object v1, p0, LEp;->l:Ljava/lang/String;

    .line 43
    sget-object v1, LDt;->a:LDt;

    iput-object v1, p0, LEp;->x:LDt;

    .line 44
    invoke-virtual {p0}, LEp;->a_()V

    .line 45
    return-object v0
.end method
