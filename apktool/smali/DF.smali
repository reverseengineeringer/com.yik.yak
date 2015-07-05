.class LDF;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LDE;


# direct methods
.method constructor <init>(LDE;)V
    .locals 0

    .prologue
    .line 649
    iput-object p1, p0, LDF;->a:LDE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 653
    :try_start_0
    iget-object v0, p0, LDF;->a:LDE;

    iget-boolean v0, v0, LDE;->c:Z

    if-eqz v0, :cond_2

    .line 654
    invoke-static {}, LGs;->a()LGs;

    move-result-object v0

    iget-object v1, p0, LDF;->a:LDE;

    iget-object v1, v1, LDE;->f:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-object v1, v1, Lcom/yik/yak/ui/fragment/CommentFragment;->l:Lcom/yik/yak/data/models/Yak;

    invoke-virtual {v0, v1}, LGs;->a(Lcom/yik/yak/data/models/Yak;)V

    .line 656
    iget-object v0, p0, LDF;->a:LDE;

    iget-object v0, v0, LDE;->d:Lcom/yik/yak/data/models/Yak;

    if-nez v0, :cond_1

    .line 657
    iget-object v0, p0, LDF;->a:LDE;

    iget-object v0, v0, LDE;->f:Lcom/yik/yak/ui/fragment/CommentFragment;

    invoke-static {v0}, Lcom/yik/yak/ui/fragment/CommentFragment;->c(Lcom/yik/yak/ui/fragment/CommentFragment;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 679
    :cond_0
    :goto_0
    iget-object v0, p0, LDF;->a:LDE;

    iget-object v0, v0, LDE;->f:Lcom/yik/yak/ui/fragment/CommentFragment;

    invoke-virtual {v0}, Lcom/yik/yak/ui/fragment/CommentFragment;->a()V

    .line 680
    return-void

    .line 659
    :cond_1
    :try_start_1
    iget-object v0, p0, LDF;->a:LDE;

    iget-object v0, v0, LDE;->f:Lcom/yik/yak/ui/fragment/CommentFragment;

    invoke-virtual {v0}, Lcom/yik/yak/ui/fragment/CommentFragment;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 676
    :catch_0
    move-exception v0

    .line 677
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 662
    :cond_2
    :try_start_2
    iget-object v0, p0, LDF;->a:LDE;

    iget-object v0, v0, LDE;->d:Lcom/yik/yak/data/models/Yak;

    if-eqz v0, :cond_3

    .line 663
    iget-object v0, p0, LDF;->a:LDE;

    iget-object v0, v0, LDE;->f:Lcom/yik/yak/ui/fragment/CommentFragment;

    invoke-virtual {v0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, LAq;->a(Landroid/content/Context;)LAq;

    move-result-object v0

    const-string v1, "YakBak"

    iget-object v2, p0, LDF;->a:LDE;

    iget-object v2, v2, LDE;->d:Lcom/yik/yak/data/models/Yak;

    iget-object v2, v2, Lcom/yik/yak/data/models/Yak;->CommentID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LAq;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    iget-object v0, p0, LDF;->a:LDE;

    iget-boolean v0, v0, LDE;->e:Z

    if-eqz v0, :cond_0

    .line 666
    new-instance v0, LAj;

    invoke-direct {v0}, LAj;-><init>()V

    iget-object v1, p0, LDF;->a:LDE;

    iget-object v1, v1, LDE;->d:Lcom/yik/yak/data/models/Yak;

    invoke-virtual {v0, v1}, LAj;->a(Lcom/yik/yak/data/models/Yak;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-static {v0}, Lcom/yik/yak/data/db/helper/BlockedYakTableHelper;->insertNewBlockedYak(Landroid/content/ContentValues;)V

    goto :goto_0

    .line 669
    :cond_3
    iget-object v0, p0, LDF;->a:LDE;

    iget-object v0, v0, LDE;->f:Lcom/yik/yak/ui/fragment/CommentFragment;

    invoke-virtual {v0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, LAq;->a(Landroid/content/Context;)LAq;

    move-result-object v0

    const-string v1, "Yak"

    iget-object v2, p0, LDF;->a:LDE;

    iget-object v2, v2, LDE;->f:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-object v2, v2, Lcom/yik/yak/ui/fragment/CommentFragment;->l:Lcom/yik/yak/data/models/Yak;

    iget-object v2, v2, Lcom/yik/yak/data/models/Yak;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LAq;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    iget-object v0, p0, LDF;->a:LDE;

    iget-boolean v0, v0, LDE;->e:Z

    if-eqz v0, :cond_0

    .line 672
    new-instance v0, LAj;

    invoke-direct {v0}, LAj;-><init>()V

    iget-object v1, p0, LDF;->a:LDE;

    iget-object v1, v1, LDE;->f:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-object v1, v1, Lcom/yik/yak/ui/fragment/CommentFragment;->l:Lcom/yik/yak/data/models/Yak;

    invoke-virtual {v0, v1}, LAj;->a(Lcom/yik/yak/data/models/Yak;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-static {v0}, Lcom/yik/yak/data/db/helper/BlockedYakTableHelper;->insertNewBlockedYak(Landroid/content/ContentValues;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method
