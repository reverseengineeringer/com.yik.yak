.class public LEn;
.super LDf;
.source "SourceFile"

# interfaces
.implements LBe;


# instance fields
.field private b:Landroid/widget/ListView;

.field private c:I

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yik/yak/data/models/SimpleListItem;",
            ">;"
        }
    .end annotation
.end field

.field private e:LCJ;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, LDf;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, LEn;->c:I

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LEn;->d:Ljava/util/List;

    return-void
.end method

.method static synthetic a(LEn;)Ljava/util/List;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, LEn;->d:Ljava/util/List;

    return-object v0
.end method

.method private d()Z
    .locals 2

    .prologue
    .line 43
    invoke-virtual {p0}, LEn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/yik/yak/data/models/Configuration;->get(Landroid/content/Context;)Lcom/yik/yak/data/models/Configuration;

    move-result-object v0

    iget-object v0, v0, Lcom/yik/yak/data/models/Configuration;->yikYakRepApplicationConfiguration:Lcom/yik/yak/data/models/Configuration$YikYakRepApplicationConfiguration;

    .line 45
    if-eqz v0, :cond_0

    .line 46
    invoke-static {}, LzQ;->g()I

    move-result v1

    iget v0, v0, Lcom/yik/yak/data/models/Configuration$YikYakRepApplicationConfiguration;->yakarmaThreshold:I

    if-lt v1, v0, :cond_0

    .line 47
    const/4 v0, 0x1

    .line 51
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()I
    .locals 4

    .prologue
    .line 55
    invoke-virtual {p0}, LEn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/yik/yak/data/models/Configuration;->get(Landroid/content/Context;)Lcom/yik/yak/data/models/Configuration;

    move-result-object v0

    iget-object v2, v0, Lcom/yik/yak/data/models/Configuration;->yikYakRepApplicationConfiguration:Lcom/yik/yak/data/models/Configuration$YikYakRepApplicationConfiguration;

    .line 57
    if-eqz v2, :cond_1

    .line 58
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, LEn;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 59
    iget-object v0, p0, LEn;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/SimpleListItem;

    .line 60
    iget-object v0, v0, Lcom/yik/yak/data/models/SimpleListItem;->item:Ljava/lang/String;

    iget-object v3, v2, Lcom/yik/yak/data/models/Configuration$YikYakRepApplicationConfiguration;->entryText:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    :goto_1
    return v1

    .line 58
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 66
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    const-string v0, "More"

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 300
    invoke-virtual {p0}, LEn;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, LEn;->e:LCJ;

    invoke-virtual {v0}, LCJ;->notifyDataSetChanged()V

    .line 303
    :cond_0
    return-void
.end method

.method public c()Z
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 70
    invoke-direct {p0}, LEn;->e()I

    move-result v0

    .line 71
    new-array v1, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fixApplyToBeARepButton: indexOfApplyButton = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {p0, v1}, LGF;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 73
    invoke-direct {p0}, LEn;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 74
    if-ne v0, v6, :cond_1

    .line 75
    new-instance v4, Lcom/yik/yak/data/models/SimpleListItem;

    invoke-direct {v4}, Lcom/yik/yak/data/models/SimpleListItem;-><init>()V

    .line 76
    invoke-virtual {p0}, LEn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/yik/yak/data/models/Configuration;->get(Landroid/content/Context;)Lcom/yik/yak/data/models/Configuration;

    move-result-object v0

    iget-object v0, v0, Lcom/yik/yak/data/models/Configuration;->yikYakRepApplicationConfiguration:Lcom/yik/yak/data/models/Configuration$YikYakRepApplicationConfiguration;

    .line 78
    if-eqz v0, :cond_0

    .line 79
    iget-object v1, v0, Lcom/yik/yak/data/models/Configuration$YikYakRepApplicationConfiguration;->applicationUrl:Ljava/lang/String;

    iput-object v1, v4, Lcom/yik/yak/data/models/SimpleListItem;->url:Ljava/lang/String;

    .line 80
    iget-object v0, v0, Lcom/yik/yak/data/models/Configuration$YikYakRepApplicationConfiguration;->entryText:Ljava/lang/String;

    iput-object v0, v4, Lcom/yik/yak/data/models/SimpleListItem;->item:Ljava/lang/String;

    :cond_0
    move v1, v2

    .line 83
    :goto_0
    iget-object v0, p0, LEn;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 84
    iget-object v0, p0, LEn;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/SimpleListItem;

    .line 86
    invoke-virtual {v0}, Lcom/yik/yak/data/models/SimpleListItem;->isSectionHeader()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 91
    iget-object v0, v0, Lcom/yik/yak/data/models/SimpleListItem;->item:Ljava/lang/String;

    const-string v5, "Love On Us"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    iget-object v0, p0, LEn;->d:Ljava/util/List;

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move v2, v3

    .line 105
    :cond_1
    :goto_1
    return v2

    .line 83
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 99
    :cond_3
    if-eq v0, v6, :cond_1

    .line 100
    iget-object v1, p0, LEn;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v2, v3

    .line 101
    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 110
    const v0, 0x7f030048

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 115
    :try_start_0
    invoke-static {}, LzQ;->g()I

    move-result v0

    iput v0, p0, LEn;->c:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    new-instance v0, Lcom/yik/yak/data/models/SimpleListItem;

    invoke-direct {v0}, Lcom/yik/yak/data/models/SimpleListItem;-><init>()V

    .line 121
    invoke-virtual {p0}, LEn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v4, LAo;->b:LAo;

    invoke-virtual {v0, v1, v4}, Lcom/yik/yak/data/models/SimpleListItem;->getItemList(Landroid/content/Context;LAo;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LEn;->d:Ljava/util/List;

    .line 123
    iget v0, p0, LEn;->c:I

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_0

    move v1, v2

    .line 124
    :goto_1
    iget-object v0, p0, LEn;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 125
    iget-object v0, p0, LEn;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/SimpleListItem;

    iget-object v0, v0, Lcom/yik/yak/data/models/SimpleListItem;->index:Ljava/lang/String;

    const-string v4, "18"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, LEn;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 132
    :cond_0
    invoke-virtual {p0}, LEn;->c()Z

    .line 134
    new-instance v0, LCJ;

    invoke-virtual {p0}, LEn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v4, 0x7f030057

    iget-object v5, p0, LEn;->d:Ljava/util/List;

    invoke-direct {v0, v1, v4, v5}, LCJ;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, LEn;->e:LCJ;

    .line 136
    const v0, 0x7f0d0126

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, LEn;->b:Landroid/widget/ListView;

    .line 137
    iget-object v0, p0, LEn;->b:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 138
    iget-object v0, p0, LEn;->b:Landroid/widget/ListView;

    iget-object v1, p0, LEn;->e:LCJ;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 140
    iget-object v0, p0, LEn;->b:Landroid/widget/ListView;

    new-instance v1, LEo;

    invoke-direct {v1, p0}, LEo;-><init>(LEn;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 284
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LEn;->setHasOptionsMenu(Z)V

    .line 285
    return-object v3

    .line 117
    :catch_0
    move-exception v0

    iput v2, p0, LEn;->c:I

    goto :goto_0

    .line 124
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method
