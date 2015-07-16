.class public LEV;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/fragment/MeFragment;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/fragment/MeFragment;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, LEV;->a:Lcom/yik/yak/ui/fragment/MeFragment;

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
    .line 210
    iget-object v0, p0, LEV;->a:Lcom/yik/yak/ui/fragment/MeFragment;

    invoke-static {v0}, Lcom/yik/yak/ui/fragment/MeFragment;->b(Lcom/yik/yak/ui/fragment/MeFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/SimpleListItem;

    .line 212
    invoke-virtual {v0}, Lcom/yik/yak/data/models/SimpleListItem;->isSectionHeader()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    :goto_0
    return-void

    .line 216
    :cond_0
    iget-object v1, p0, LEV;->a:Lcom/yik/yak/ui/fragment/MeFragment;

    invoke-static {v1, v0}, Lcom/yik/yak/ui/fragment/MeFragment;->a(Lcom/yik/yak/ui/fragment/MeFragment;Lcom/yik/yak/data/models/SimpleListItem;)V

    goto :goto_0
.end method
