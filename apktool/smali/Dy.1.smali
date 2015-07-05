.class public LDy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lcom/yik/yak/ui/fragment/CommentFragment;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/fragment/CommentFragment;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, LDy;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    iput-object p2, p0, LDy;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 358
    iget-object v0, p0, LDy;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/CommentFragment;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 359
    iget-object v0, p0, LDy;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/CommentFragment;->p:Lcom/yik/yak/ui/adapter/YakDetailAdapter;

    invoke-virtual {v0}, Lcom/yik/yak/ui/adapter/YakDetailAdapter;->notifyDataSetChanged()V

    .line 360
    iget-object v0, p0, LDy;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/CommentFragment;->r:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-virtual {v0, v3}, Lcom/yik/yak/ui/view/RefreshListView;->setRefreshing(Z)V

    .line 362
    iget-object v0, p0, LDy;->a:Ljava/lang/Exception;

    instance-of v0, v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v0, :cond_0

    .line 363
    invoke-static {}, LGs;->a()LGs;

    move-result-object v0

    invoke-virtual {v0, v3}, LGs;->d(Z)V

    .line 364
    invoke-static {}, LAw;->a()LAw;

    move-result-object v0

    const-string v1, "googleAnalytics"

    const-string v2, "PeekSaved"

    invoke-virtual {v0, v1, v2, v4}, LAw;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    invoke-static {v4}, LzY;->a(Z)Lxo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lxo;->a(LwU;)Lxo;

    .line 366
    invoke-static {}, LGs;->a()LGs;

    move-result-object v0

    invoke-virtual {v0, v3}, LGs;->d(Z)V

    .line 367
    iget-object v0, p0, LDy;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    invoke-virtual {v0}, Lcom/yik/yak/ui/fragment/CommentFragment;->a()V

    .line 371
    :cond_0
    return-void
.end method
