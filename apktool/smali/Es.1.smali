.class public LEs;
.super LDh;
.source "SourceFile"

# interfaces
.implements LBd;


# instance fields
.field private H:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    const v0, 0x7f03004f

    invoke-direct {p0, v0}, LDh;-><init>(I)V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, LEs;->H:Z

    .line 39
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    const-string v0, "My Yaks"

    return-object v0
.end method

.method public a_()V
    .locals 4

    .prologue
    .line 60
    invoke-virtual {p0}, LEs;->l()V

    .line 63
    invoke-virtual {p0}, LEs;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 64
    invoke-static {v0}, LAq;->a(Landroid/content/Context;)LAq;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, LAq;->f()Lcom/yik/yak/data/models/YakkerLocation;

    move-result-object v0

    .line 68
    const/4 v1, 0x0

    iput-boolean v1, p0, LEs;->h:Z

    .line 70
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 71
    const-string v2, "userID"

    invoke-static {}, LzQ;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v2, "lat"

    invoke-virtual {v0}, Lcom/yik/yak/data/models/YakkerLocation;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v2, "long"

    invoke-virtual {v0}, Lcom/yik/yak/data/models/YakkerLocation;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v2, "getMyRecentYaks"

    .line 77
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, LEs;->m:Ljava/util/ArrayList;

    .line 78
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, LEs;->n:Ljava/util/ArrayList;

    .line 80
    invoke-static {v2, v1, v0}, LzY;->a(Ljava/lang/String;Ljava/util/TreeMap;Lcom/yik/yak/data/models/YakkerLocation;)Ljava/lang/String;

    move-result-object v0

    .line 81
    new-instance v1, Lxv;

    invoke-direct {v1}, Lxv;-><init>()V

    invoke-virtual {v1, v0}, Lxv;->a(Ljava/lang/String;)Lxv;

    move-result-object v0

    invoke-virtual {v0}, Lxv;->b()Lxt;

    move-result-object v0

    .line 86
    const/4 v1, 0x1

    invoke-static {v1}, LzY;->a(Z)Lxo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lxo;->a(Lxt;)LwP;

    move-result-object v0

    .line 87
    new-instance v1, LEt;

    invoke-direct {v1, p0}, LEt;-><init>(LEs;)V

    invoke-virtual {v0, v1}, LwP;->a(LwT;)V

    .line 154
    return-void
.end method

.method public h()V
    .locals 2

    .prologue
    .line 53
    iget-boolean v0, p0, LEs;->H:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LEs;->x:LDt;

    sget-object v1, LDt;->b:LDt;

    if-ne v0, v1, :cond_0

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, LEs;->H:Z

    .line 55
    invoke-static {}, LGs;->a()LGs;

    move-result-object v0

    invoke-virtual {v0}, LGs;->p()V

    .line 57
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 43
    invoke-super {p0, p1, p2, p3}, LDh;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 44
    const-string v1, "MyYaks"

    iput-object v1, p0, LEs;->l:Ljava/lang/String;

    .line 45
    sget-object v1, LDt;->a:LDt;

    iput-object v1, p0, LEs;->x:LDt;

    .line 46
    invoke-virtual {p0}, LEs;->a_()V

    .line 47
    return-object v0
.end method
