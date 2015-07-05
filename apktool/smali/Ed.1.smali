.class LEd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:LEc;


# direct methods
.method constructor <init>(LEc;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, LEd;->a:LEc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, LEd;->a:LEc;

    invoke-static {v0}, LEc;->a(LEc;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LEd;->a:LEc;

    invoke-static {v0}, LEc;->a(LEc;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v1, p0, LEd;->a:LEc;

    iget-object v0, p0, LEd;->a:LEc;

    invoke-static {v0}, LEc;->a(LEc;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/PeekLocation;

    invoke-static {v1, v0}, LEc;->a(LEc;Lcom/yik/yak/data/models/PeekLocation;)Lcom/yik/yak/data/models/PeekLocation;

    .line 78
    iget-object v0, p0, LEd;->a:LEc;

    invoke-static {v0}, LEc;->b(LEc;)Lcom/yik/yak/data/models/PeekLocation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LEd;->a:LEc;

    invoke-static {v0}, LEc;->b(LEc;)Lcom/yik/yak/data/models/PeekLocation;

    move-result-object v0

    iget-boolean v0, v0, Lcom/yik/yak/data/models/PeekLocation;->isDefault:Z

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, LEd;->a:LEc;

    invoke-virtual {v0}, LEc;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v4/app/FragmentActivity;->openContextMenu(Landroid/view/View;)V

    goto :goto_0
.end method
