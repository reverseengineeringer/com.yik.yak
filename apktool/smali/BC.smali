.class LBC;
.super Landroid/widget/Filter;
.source "SourceFile"


# instance fields
.field final synthetic a:LBA;


# direct methods
.method constructor <init>(LBA;)V
    .locals 0

    .prologue
    .line 564
    iput-object p1, p0, LBC;->a:LBA;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 4

    .prologue
    .line 568
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 569
    if-eqz p1, :cond_1

    .line 570
    iget-object v1, p0, LBC;->a:LBA;

    invoke-static {v1}, LBA;->a(LBA;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, LBC;->a:LBA;

    iget-boolean v1, v1, LBA;->a:Z

    if-eqz v1, :cond_1

    .line 572
    :cond_0
    iget-object v1, p0, LBC;->a:LBA;

    iget-object v2, p0, LBC;->a:LBA;

    iget-object v2, v2, LBA;->b:Lcom/yik/yak/ui/activity/PeekSearchActivity;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/yik/yak/ui/activity/PeekSearchActivity;->a(Lcom/yik/yak/ui/activity/PeekSearchActivity;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2}, LBA;->a(LBA;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 574
    iget-object v1, p0, LBC;->a:LBA;

    invoke-static {v1}, LBA;->b(LBA;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 575
    iget-object v1, p0, LBC;->a:LBA;

    invoke-static {v1}, LBA;->b(LBA;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 578
    :cond_1
    iget-object v1, p0, LBC;->a:LBA;

    const/4 v2, 0x0

    iput-boolean v2, v1, LBA;->a:Z

    .line 579
    return-object v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 1

    .prologue
    .line 584
    if-eqz p2, :cond_0

    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_0

    .line 585
    iget-object v0, p0, LBC;->a:LBA;

    invoke-virtual {v0}, LBA;->notifyDataSetChanged()V

    .line 589
    :goto_0
    return-void

    .line 587
    :cond_0
    iget-object v0, p0, LBC;->a:LBA;

    invoke-virtual {v0}, LBA;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
