.class LFk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:LFj;


# direct methods
.method constructor <init>(LFj;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, LFk;->a:LFj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 304
    invoke-static {}, LAO;->a()LAO;

    move-result-object v0

    invoke-virtual {v0}, LAO;->e()I

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    new-instance v0, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;

    invoke-direct {v0}, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;-><init>()V

    .line 306
    iget-object v1, p0, LFk;->a:LFj;

    iget-object v1, v1, LFj;->a:Lcom/yik/yak/ui/fragment/PeekListFragment;

    sget-object v2, LCU;->b:LCU;

    invoke-virtual {v1, v2, v0}, Lcom/yik/yak/ui/fragment/PeekListFragment;->a(LCU;Landroid/support/v4/app/Fragment;)V

    .line 310
    :goto_0
    return-void

    .line 308
    :cond_0
    iget-object v0, p0, LFk;->a:LFj;

    iget-object v0, v0, LFj;->a:Lcom/yik/yak/ui/fragment/PeekListFragment;

    invoke-virtual {v0}, Lcom/yik/yak/ui/fragment/PeekListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "You don\'t have any saved peeks to manage."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
