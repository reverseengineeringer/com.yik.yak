.class LDo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:LDh;


# direct methods
.method constructor <init>(LDh;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, LDo;->b:LDh;

    iput-object p2, p0, LDo;->a:Ljava/lang/Exception;

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

    .line 221
    iget-object v0, p0, LDo;->a:Ljava/lang/Exception;

    instance-of v0, v0, Ljava/io/IOException;

    if-eqz v0, :cond_0

    iget-object v0, p0, LDo;->a:Ljava/lang/Exception;

    instance-of v0, v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, LDo;->b:LDh;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, LDh;->m:Ljava/util/ArrayList;

    .line 223
    iget-object v0, p0, LDo;->b:LDh;

    iput-object v5, v0, LDh;->n:Ljava/util/ArrayList;

    .line 224
    new-instance v0, Lcom/yik/yak/data/models/Yak;

    invoke-direct {v0}, Lcom/yik/yak/data/models/Yak;-><init>()V

    .line 225
    iget-object v1, p0, LDo;->b:LDh;

    invoke-virtual {v1}, LDh;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08011a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yik/yak/data/models/Yak;->YakkerHandle:Ljava/lang/String;

    .line 226
    iput v3, v0, Lcom/yik/yak/data/models/Yak;->Type:I

    .line 227
    iget-object v1, p0, LDo;->b:LDh;

    invoke-virtual {v1}, LDh;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080119

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yik/yak/data/models/Yak;->Content:Ljava/lang/String;

    .line 228
    iput v4, v0, Lcom/yik/yak/data/models/Yak;->Comments:I

    .line 229
    iput v3, v0, Lcom/yik/yak/data/models/Yak;->Liked:I

    .line 230
    iput v6, v0, Lcom/yik/yak/data/models/Yak;->NumberOfLikes:I

    .line 231
    iput v7, v0, Lcom/yik/yak/data/models/Yak;->DeliveryID:I

    .line 232
    iget-object v1, p0, LDo;->b:LDh;

    sget-object v2, LDt;->a:LDt;

    iput-object v2, v1, LDh;->x:LDt;

    .line 233
    iget-object v1, p0, LDo;->b:LDh;

    iget-object v1, v1, LDh;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    iget-object v0, p0, LDo;->b:LDh;

    iget-object v1, p0, LDo;->b:LDh;

    iget-object v1, v1, LDh;->q:Ljava/util/Comparator;

    iget-object v2, p0, LDo;->b:LDh;

    iget-object v2, v2, LDh;->q:Ljava/util/Comparator;

    invoke-virtual {v0, v1, v2}, LDh;->a(Ljava/util/Comparator;Ljava/util/Comparator;)V

    .line 237
    :cond_0
    iget-object v0, p0, LDo;->a:Ljava/lang/Exception;

    instance-of v0, v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v0, :cond_2

    .line 239
    invoke-static {}, LAw;->a()LAw;

    move-result-object v0

    const-string v1, "googleAnalytics"

    const-string v2, "PeekSaved"

    invoke-virtual {v0, v1, v2, v3}, LAw;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    invoke-static {v3}, LzY;->a(Z)Lxo;

    move-result-object v0

    invoke-virtual {v0, v5}, Lxo;->a(LwU;)Lxo;

    .line 241
    invoke-static {}, LGs;->a()LGs;

    move-result-object v0

    invoke-virtual {v0, v4}, LGs;->d(Z)V

    .line 242
    iget-object v0, p0, LDo;->b:LDh;

    invoke-virtual {v0}, LDh;->a_()V

    .line 271
    :goto_0
    return-void

    .line 245
    :cond_1
    invoke-static {}, LGs;->a()LGs;

    move-result-object v0

    invoke-virtual {v0, v4}, LGs;->d(Z)V

    .line 246
    iget-object v0, p0, LDo;->b:LDh;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, LDh;->m:Ljava/util/ArrayList;

    .line 247
    iget-object v0, p0, LDo;->b:LDh;

    iput-object v5, v0, LDh;->n:Ljava/util/ArrayList;

    .line 248
    new-instance v0, Lcom/yik/yak/data/models/Yak;

    invoke-direct {v0}, Lcom/yik/yak/data/models/Yak;-><init>()V

    .line 249
    iget-object v1, p0, LDo;->b:LDh;

    invoke-virtual {v1}, LDh;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08011a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yik/yak/data/models/Yak;->YakkerHandle:Ljava/lang/String;

    .line 250
    iput v3, v0, Lcom/yik/yak/data/models/Yak;->Type:I

    .line 251
    iget-object v1, p0, LDo;->b:LDh;

    invoke-virtual {v1}, LDh;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08012d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yik/yak/data/models/Yak;->Content:Ljava/lang/String;

    .line 252
    iput v4, v0, Lcom/yik/yak/data/models/Yak;->Comments:I

    .line 253
    iput v3, v0, Lcom/yik/yak/data/models/Yak;->Liked:I

    .line 254
    iput v6, v0, Lcom/yik/yak/data/models/Yak;->NumberOfLikes:I

    .line 255
    iput v7, v0, Lcom/yik/yak/data/models/Yak;->DeliveryID:I

    .line 256
    iget-object v1, p0, LDo;->b:LDh;

    sget-object v2, LDt;->a:LDt;

    iput-object v2, v1, LDh;->x:LDt;

    .line 257
    iget-object v1, p0, LDo;->b:LDh;

    iget-object v1, v1, LDh;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    :cond_2
    :try_start_0
    iget-object v0, p0, LDo;->b:LDh;

    iget-object v0, v0, LDh;->F:Lcom/yik/yak/ui/view/RefreshListView;

    if-eqz v0, :cond_3

    iget-object v0, p0, LDo;->b:LDh;

    iget-object v0, v0, LDh;->F:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-virtual {v0}, Lcom/yik/yak/ui/view/RefreshListView;->d()Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 263
    iget-object v0, p0, LDo;->b:LDh;

    iget-object v0, v0, LDh;->F:Lcom/yik/yak/ui/view/RefreshListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/RefreshListView;->setRefreshing(Z)V

    .line 265
    :cond_3
    iget-object v0, p0, LDo;->b:LDh;

    iget-object v1, p0, LDo;->b:LDh;

    iget-object v1, v1, LDh;->q:Ljava/util/Comparator;

    iget-object v2, p0, LDo;->b:LDh;

    iget-object v2, v2, LDh;->q:Ljava/util/Comparator;

    invoke-virtual {v0, v1, v2}, LDh;->a(Ljava/util/Comparator;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :goto_1
    iget-object v0, p0, LDo;->b:LDh;

    invoke-virtual {v0}, LDh;->m()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
