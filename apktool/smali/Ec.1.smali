.class public LEc;
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
    .line 358
    iput-object p1, p0, LEc;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    iput-object p2, p0, LEc;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 361
    iget-object v0, p0, LEc;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/CommentFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 362
    iget-object v0, p0, LEc;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/CommentFragment;->q:Lcom/yik/yak/ui/adapter/YakDetailAdapter;

    invoke-virtual {v0}, Lcom/yik/yak/ui/adapter/YakDetailAdapter;->notifyDataSetChanged()V

    .line 363
    iget-object v0, p0, LEc;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/CommentFragment;->s:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-virtual {v0, v3}, Lcom/yik/yak/ui/view/RefreshListView;->setRefreshing(Z)V

    .line 365
    iget-object v0, p0, LEc;->a:Ljava/lang/Exception;

    instance-of v0, v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v0, :cond_0

    .line 366
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    invoke-virtual {v0, v3}, LHa;->c(Z)V

    .line 367
    invoke-static {}, LAJ;->a()LAJ;

    move-result-object v0

    const-string v1, "googleAnalytics"

    const-string v2, "PeekSaved"

    invoke-virtual {v0, v1, v2, v4}, LAJ;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    invoke-static {v4}, LAj;->a(Z)Lxy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lxy;->a(Lxd;)Lxy;

    .line 369
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    invoke-virtual {v0, v3}, LHa;->c(Z)V

    .line 370
    iget-object v0, p0, LEc;->b:Lcom/yik/yak/ui/fragment/CommentFragment;

    invoke-virtual {v0}, Lcom/yik/yak/ui/fragment/CommentFragment;->a()V

    .line 374
    :cond_0
    return-void
.end method
