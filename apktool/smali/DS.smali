.class public LDS;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lcom/yik/yak/ui/fragment/BaseYakFragment;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/fragment/BaseYakFragment;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, LDS;->b:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    iput-object p2, p0, LDS;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const v7, 0x3b9ac9ff

    const v6, 0x1869f

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 228
    iget-object v0, p0, LDS;->a:Ljava/lang/Exception;

    instance-of v0, v0, Ljava/io/IOException;

    if-eqz v0, :cond_0

    iget-object v0, p0, LDS;->a:Ljava/lang/Exception;

    instance-of v0, v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, LDS;->b:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->n:Ljava/util/ArrayList;

    .line 230
    iget-object v0, p0, LDS;->b:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    iput-object v5, v0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->o:Ljava/util/ArrayList;

    .line 231
    new-instance v0, Lcom/yik/yak/data/models/Yak;

    invoke-direct {v0}, Lcom/yik/yak/data/models/Yak;-><init>()V

    .line 232
    iget-object v1, p0, LDS;->b:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    invoke-virtual {v1}, Lcom/yik/yak/ui/fragment/BaseYakFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080136

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yik/yak/data/models/Yak;->YakkerHandle:Ljava/lang/String;

    .line 233
    iput v3, v0, Lcom/yik/yak/data/models/Yak;->Type:I

    .line 234
    iget-object v1, p0, LDS;->b:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    invoke-virtual {v1}, Lcom/yik/yak/ui/fragment/BaseYakFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080135

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yik/yak/data/models/Yak;->Content:Ljava/lang/String;

    .line 235
    iput v4, v0, Lcom/yik/yak/data/models/Yak;->Comments:I

    .line 236
    iput v3, v0, Lcom/yik/yak/data/models/Yak;->Liked:I

    .line 237
    iput v6, v0, Lcom/yik/yak/data/models/Yak;->NumberOfLikes:I

    .line 238
    iput v7, v0, Lcom/yik/yak/data/models/Yak;->DeliveryID:I

    .line 239
    iget-object v1, p0, LDS;->b:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    sget-object v2, LDX;->a:LDX;

    iput-object v2, v1, Lcom/yik/yak/ui/fragment/BaseYakFragment;->y:LDX;

    .line 240
    iget-object v1, p0, LDS;->b:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    iget-object v1, v1, Lcom/yik/yak/ui/fragment/BaseYakFragment;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    iget-object v0, p0, LDS;->b:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    iget-object v1, p0, LDS;->b:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    iget-object v1, v1, Lcom/yik/yak/ui/fragment/BaseYakFragment;->r:Ljava/util/Comparator;

    iget-object v2, p0, LDS;->b:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    iget-object v2, v2, Lcom/yik/yak/ui/fragment/BaseYakFragment;->r:Ljava/util/Comparator;

    invoke-virtual {v0, v1, v2}, Lcom/yik/yak/ui/fragment/BaseYakFragment;->a(Ljava/util/Comparator;Ljava/util/Comparator;)V

    .line 244
    :cond_0
    iget-object v0, p0, LDS;->a:Ljava/lang/Exception;

    instance-of v0, v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v0, :cond_2

    .line 246
    invoke-static {}, LAJ;->a()LAJ;

    move-result-object v0

    const-string v1, "googleAnalytics"

    const-string v2, "PeekSaved"

    invoke-virtual {v0, v1, v2, v3}, LAJ;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    invoke-static {v3}, LAj;->a(Z)Lxy;

    move-result-object v0

    invoke-virtual {v0, v5}, Lxy;->a(Lxd;)Lxy;

    .line 248
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    invoke-virtual {v0, v4}, LHa;->c(Z)V

    .line 249
    iget-object v0, p0, LDS;->b:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    invoke-virtual {v0}, Lcom/yik/yak/ui/fragment/BaseYakFragment;->a_()V

    .line 278
    :goto_0
    return-void

    .line 252
    :cond_1
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    invoke-virtual {v0, v4}, LHa;->c(Z)V

    .line 253
    iget-object v0, p0, LDS;->b:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->n:Ljava/util/ArrayList;

    .line 254
    iget-object v0, p0, LDS;->b:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    iput-object v5, v0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->o:Ljava/util/ArrayList;

    .line 255
    new-instance v0, Lcom/yik/yak/data/models/Yak;

    invoke-direct {v0}, Lcom/yik/yak/data/models/Yak;-><init>()V

    .line 256
    iget-object v1, p0, LDS;->b:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    invoke-virtual {v1}, Lcom/yik/yak/ui/fragment/BaseYakFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080136

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yik/yak/data/models/Yak;->YakkerHandle:Ljava/lang/String;

    .line 257
    iput v3, v0, Lcom/yik/yak/data/models/Yak;->Type:I

    .line 258
    iget-object v1, p0, LDS;->b:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    invoke-virtual {v1}, Lcom/yik/yak/ui/fragment/BaseYakFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080154

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yik/yak/data/models/Yak;->Content:Ljava/lang/String;

    .line 259
    iput v4, v0, Lcom/yik/yak/data/models/Yak;->Comments:I

    .line 260
    iput v3, v0, Lcom/yik/yak/data/models/Yak;->Liked:I

    .line 261
    iput v6, v0, Lcom/yik/yak/data/models/Yak;->NumberOfLikes:I

    .line 262
    iput v7, v0, Lcom/yik/yak/data/models/Yak;->DeliveryID:I

    .line 263
    iget-object v1, p0, LDS;->b:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    sget-object v2, LDX;->a:LDX;

    iput-object v2, v1, Lcom/yik/yak/ui/fragment/BaseYakFragment;->y:LDX;

    .line 264
    iget-object v1, p0, LDS;->b:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    iget-object v1, v1, Lcom/yik/yak/ui/fragment/BaseYakFragment;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_2
    :try_start_0
    iget-object v0, p0, LDS;->b:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->G:Lcom/yik/yak/ui/view/RefreshListView;

    if-eqz v0, :cond_3

    iget-object v0, p0, LDS;->b:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->G:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-virtual {v0}, Lcom/yik/yak/ui/view/RefreshListView;->e()Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 270
    iget-object v0, p0, LDS;->b:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->G:Lcom/yik/yak/ui/view/RefreshListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/RefreshListView;->setRefreshing(Z)V

    .line 272
    :cond_3
    iget-object v0, p0, LDS;->b:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    iget-object v1, p0, LDS;->b:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    iget-object v1, v1, Lcom/yik/yak/ui/fragment/BaseYakFragment;->r:Ljava/util/Comparator;

    iget-object v2, p0, LDS;->b:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    iget-object v2, v2, Lcom/yik/yak/ui/fragment/BaseYakFragment;->r:Ljava/util/Comparator;

    invoke-virtual {v0, v1, v2}, Lcom/yik/yak/ui/fragment/BaseYakFragment;->a(Ljava/util/Comparator;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :goto_1
    iget-object v0, p0, LDS;->b:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    invoke-virtual {v0}, Lcom/yik/yak/ui/fragment/BaseYakFragment;->q()V

    goto :goto_0

    .line 273
    :catch_0
    move-exception v0

    .line 274
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
