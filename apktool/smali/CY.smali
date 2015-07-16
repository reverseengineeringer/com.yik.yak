.class public LCY;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yik/yak/data/models/Website;",
            ">;>;"
        }
    .end annotation
.end field

.field protected c:Landroid/view/LayoutInflater;

.field private d:LDa;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yik/yak/data/models/Website;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LCY;->b:Ljava/util/HashMap;

    .line 36
    iput-object p1, p0, LCY;->a:Landroid/content/Context;

    .line 37
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, LCY;->c:Landroid/view/LayoutInflater;

    .line 38
    iput-object p2, p0, LCY;->b:Ljava/util/HashMap;

    .line 39
    return-void
.end method

.method private a()I
    .locals 1

    .prologue
    .line 123
    const v0, 0x7f03005d

    return v0
.end method

.method static synthetic a(LCY;Lcom/yik/yak/data/models/Website;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, LCY;->a(Lcom/yik/yak/data/models/Website;)V

    return-void
.end method

.method private a(Lcom/yik/yak/data/models/Website;)V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, LCY;->d:LDa;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, LCY;->d:LDa;

    invoke-interface {v0, p1}, LDa;->a(Lcom/yik/yak/data/models/Website;)V

    .line 162
    :cond_0
    return-void
.end method

.method private b()I
    .locals 1

    .prologue
    .line 127
    const v0, 0x7f030061

    return v0
.end method

.method private b(I)Z
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0, p1}, LCY;->a(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 116
    const/4 v0, 0x1

    .line 119
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 73
    iget-object v0, p0, LCY;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 74
    const/4 v0, 0x0

    .line 76
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 77
    if-ne v1, p1, :cond_2

    .line 94
    :cond_1
    :goto_0
    return-object v0

    .line 81
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 83
    iget-object v3, p0, LCY;->b:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 85
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Website;

    .line 86
    if-eq v1, p1, :cond_1

    .line 90
    add-int/lit8 v1, v1, 0x1

    .line 91
    goto :goto_1

    .line 94
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(LDa;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, LCY;->d:LDa;

    .line 112
    return-void
.end method

.method public getItemCount()I
    .locals 4

    .prologue
    .line 99
    const/4 v0, 0x0

    .line 101
    iget-object v1, p0, LCY;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 103
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 104
    iget-object v3, p0, LCY;->b:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 105
    goto :goto_0

    .line 107
    :cond_0
    iget-object v0, p0, LCY;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0, p1}, LCY;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    const/4 v0, 0x0

    .line 46
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .prologue
    .line 65
    instance-of v0, p1, LCZ;

    if-eqz v0, :cond_1

    .line 66
    check-cast p1, LCZ;

    invoke-virtual {p0, p2}, LCY;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, LCZ;->a(Ljava/lang/String;)V

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    instance-of v0, p1, LDb;

    if-eqz v0, :cond_0

    .line 68
    check-cast p1, LDb;

    invoke-virtual {p0, p2}, LCY;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Website;

    invoke-virtual {p1, v0}, LDb;->a(Lcom/yik/yak/data/models/Website;)V

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 52
    packed-switch p2, :pswitch_data_0

    .line 60
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 54
    :pswitch_0
    new-instance v0, LCZ;

    iget-object v1, p0, LCY;->c:Landroid/view/LayoutInflater;

    invoke-direct {p0}, LCY;->a()I

    move-result v2

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, LCZ;-><init>(LCY;Landroid/view/View;)V

    goto :goto_0

    .line 57
    :pswitch_1
    new-instance v0, LDb;

    iget-object v1, p0, LCY;->c:Landroid/view/LayoutInflater;

    invoke-direct {p0}, LCY;->b()I

    move-result v2

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, LDb;-><init>(LCY;Landroid/view/View;)V

    goto :goto_0

    .line 52
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
