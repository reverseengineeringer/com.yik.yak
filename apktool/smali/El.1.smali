.class LEl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LEk;


# direct methods
.method constructor <init>(LEk;)V
    .locals 0

    .prologue
    .line 673
    iput-object p1, p0, LEl;->a:LEk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 677
    :try_start_0
    iget-object v0, p0, LEl;->a:LEk;

    iget-boolean v0, v0, LEk;->c:Z

    if-eqz v0, :cond_2

    .line 678
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    iget-object v1, p0, LEl;->a:LEk;

    iget-object v1, v1, LEk;->f:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-object v1, v1, Lcom/yik/yak/ui/fragment/CommentFragment;->m:Lcom/yik/yak/data/models/Yak;

    invoke-virtual {v0, v1}, LHa;->a(Lcom/yik/yak/data/models/Yak;)V

    .line 680
    iget-object v0, p0, LEl;->a:LEk;

    iget-object v0, v0, LEk;->d:Lcom/yik/yak/data/models/Yak;

    if-nez v0, :cond_1

    .line 681
    iget-object v0, p0, LEl;->a:LEk;

    iget-object v0, v0, LEk;->f:Lcom/yik/yak/ui/fragment/CommentFragment;

    invoke-static {v0}, Lcom/yik/yak/ui/fragment/CommentFragment;->c(Lcom/yik/yak/ui/fragment/CommentFragment;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 703
    :cond_0
    :goto_0
    iget-object v0, p0, LEl;->a:LEk;

    iget-object v0, v0, LEk;->f:Lcom/yik/yak/ui/fragment/CommentFragment;

    invoke-virtual {v0}, Lcom/yik/yak/ui/fragment/CommentFragment;->a()V

    .line 704
    return-void

    .line 683
    :cond_1
    :try_start_1
    iget-object v0, p0, LEl;->a:LEk;

    iget-object v0, v0, LEk;->f:Lcom/yik/yak/ui/fragment/CommentFragment;

    invoke-virtual {v0}, Lcom/yik/yak/ui/fragment/CommentFragment;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 700
    :catch_0
    move-exception v0

    .line 701
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 686
    :cond_2
    :try_start_2
    iget-object v0, p0, LEl;->a:LEk;

    iget-object v0, v0, LEk;->d:Lcom/yik/yak/data/models/Yak;

    if-eqz v0, :cond_3

    .line 687
    invoke-static {}, LAD;->a()LAD;

    move-result-object v0

    const-string v1, "YakBak"

    iget-object v2, p0, LEl;->a:LEk;

    iget-object v2, v2, LEk;->d:Lcom/yik/yak/data/models/Yak;

    iget-object v2, v2, Lcom/yik/yak/data/models/Yak;->CommentID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LAD;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    iget-object v0, p0, LEl;->a:LEk;

    iget-boolean v0, v0, LEk;->e:Z

    if-eqz v0, :cond_0

    .line 690
    new-instance v0, LAv;

    invoke-direct {v0}, LAv;-><init>()V

    iget-object v1, p0, LEl;->a:LEk;

    iget-object v1, v1, LEk;->d:Lcom/yik/yak/data/models/Yak;

    invoke-virtual {v0, v1}, LAv;->a(Lcom/yik/yak/data/models/Yak;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-static {v0}, Lcom/yik/yak/data/db/helper/BlockedYakTableHelper;->insertNewBlockedYak(Landroid/content/ContentValues;)V

    goto :goto_0

    .line 693
    :cond_3
    invoke-static {}, LAD;->a()LAD;

    move-result-object v0

    const-string v1, "Yak"

    iget-object v2, p0, LEl;->a:LEk;

    iget-object v2, v2, LEk;->f:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-object v2, v2, Lcom/yik/yak/ui/fragment/CommentFragment;->m:Lcom/yik/yak/data/models/Yak;

    iget-object v2, v2, Lcom/yik/yak/data/models/Yak;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LAD;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    iget-object v0, p0, LEl;->a:LEk;

    iget-boolean v0, v0, LEk;->e:Z

    if-eqz v0, :cond_0

    .line 696
    new-instance v0, LAv;

    invoke-direct {v0}, LAv;-><init>()V

    iget-object v1, p0, LEl;->a:LEk;

    iget-object v1, v1, LEk;->f:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-object v1, v1, Lcom/yik/yak/ui/fragment/CommentFragment;->m:Lcom/yik/yak/data/models/Yak;

    invoke-virtual {v0, v1}, LAv;->a(Lcom/yik/yak/data/models/Yak;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-static {v0}, Lcom/yik/yak/data/db/helper/BlockedYakTableHelper;->insertNewBlockedYak(Landroid/content/ContentValues;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method
