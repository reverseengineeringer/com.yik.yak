.class public Lcom/yik/yak/ui/activity/WebsiteWhiteListActivity;
.super Lcom/yik/yak/ui/activity/BaseAppCompatActivity;
.source "SourceFile"

# interfaces
.implements LCN;


# instance fields
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

.field protected c:Landroid/support/v7/widget/RecyclerView;

.field protected d:LCL;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yik/yak/ui/activity/WebsiteWhiteListActivity;->b:Ljava/util/HashMap;

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 51
    const v0, 0x7f030025

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/WebsiteWhiteListActivity;->setContentView(I)V

    .line 52
    const-string v0, "Supported Links"

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/WebsiteWhiteListActivity;->a(Ljava/lang/String;)V

    .line 53
    const v0, 0x7f0d009c

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/WebsiteWhiteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/WebsiteWhiteListActivity;->c:Landroid/support/v7/widget/RecyclerView;

    .line 54
    iget-object v0, p0, Lcom/yik/yak/ui/activity/WebsiteWhiteListActivity;->c:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 55
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 34
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yik/yak/ui/activity/WebActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    const-string v1, "url"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    const-string v1, "shareEnabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 38
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/yik/yak/ui/activity/WebsiteWhiteListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 39
    return-void
.end method

.method private c()V
    .locals 7

    .prologue
    .line 58
    invoke-static {}, Lcom/yik/yak/data/db/helper/WhiteListedWebsiteTableHelper;->getAllWhiteListedWebsites()[Lcom/yik/yak/data/models/Website;

    move-result-object v2

    .line 60
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    .line 61
    invoke-virtual {v4}, Lcom/yik/yak/data/models/Website;->getCategory()Ljava/lang/String;

    move-result-object v0

    .line 63
    iget-object v5, p0, Lcom/yik/yak/ui/activity/WebsiteWhiteListActivity;->b:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 64
    iget-object v5, p0, Lcom/yik/yak/ui/activity/WebsiteWhiteListActivity;->b:Ljava/util/HashMap;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_0
    invoke-virtual {v4}, Lcom/yik/yak/data/models/Website;->shouldDisplay()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 68
    iget-object v5, p0, Lcom/yik/yak/ui/activity/WebsiteWhiteListActivity;->b:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 72
    :cond_2
    new-instance v0, LCL;

    iget-object v1, p0, Lcom/yik/yak/ui/activity/WebsiteWhiteListActivity;->b:Ljava/util/HashMap;

    invoke-direct {v0, p0, v1}, LCL;-><init>(Landroid/content/Context;Ljava/util/HashMap;)V

    iput-object v0, p0, Lcom/yik/yak/ui/activity/WebsiteWhiteListActivity;->d:LCL;

    .line 73
    iget-object v0, p0, Lcom/yik/yak/ui/activity/WebsiteWhiteListActivity;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/yik/yak/ui/activity/WebsiteWhiteListActivity;->d:LCL;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 74
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/yik/yak/ui/activity/WebsiteWhiteListActivity;->d:LCL;

    invoke-virtual {v0, p0}, LCL;->a(LCN;)V

    .line 78
    return-void
.end method


# virtual methods
.method public a(Lcom/yik/yak/data/models/Website;)V
    .locals 2

    .prologue
    .line 88
    invoke-virtual {p1}, Lcom/yik/yak/data/models/Website;->getName()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-virtual {p1}, Lcom/yik/yak/data/models/Website;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-direct {p0, v0, v1}, Lcom/yik/yak/ui/activity/WebsiteWhiteListActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0, p1, p2, p3}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 97
    if-nez p2, :cond_0

    .line 107
    :goto_0
    return-void

    .line 101
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 103
    :pswitch_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p3}, Lcom/yik/yak/ui/activity/WebsiteWhiteListActivity;->setResult(ILandroid/content/Intent;)V

    .line 104
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/WebsiteWhiteListActivity;->finish()V

    goto :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/WebsiteWhiteListActivity;->a()V

    .line 45
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/WebsiteWhiteListActivity;->c()V

    .line 46
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/WebsiteWhiteListActivity;->d()V

    .line 47
    const v0, 0x7f04001b

    const v1, 0x7f04001c

    invoke-virtual {p0, v0, v1}, Lcom/yik/yak/ui/activity/WebsiteWhiteListActivity;->overridePendingTransition(II)V

    .line 48
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 82
    invoke-super {p0}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onPause()V

    .line 83
    const v0, 0x7f04001b

    const v1, 0x7f04001c

    invoke-virtual {p0, v0, v1}, Lcom/yik/yak/ui/activity/WebsiteWhiteListActivity;->overridePendingTransition(II)V

    .line 84
    return-void
.end method
