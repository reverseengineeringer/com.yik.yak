.class LEi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:LEf;


# direct methods
.method constructor <init>(LEf;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, LEi;->a:LEf;

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
    .line 209
    iget-object v0, p0, LEi;->a:LEf;

    invoke-static {v0}, LEf;->b(LEf;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/SimpleListItem;

    .line 211
    invoke-virtual {v0}, Lcom/yik/yak/data/models/SimpleListItem;->isSectionHeader()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v1, p0, LEi;->a:LEf;

    invoke-static {v1, v0}, LEf;->a(LEf;Lcom/yik/yak/data/models/SimpleListItem;)V

    goto :goto_0
.end method
