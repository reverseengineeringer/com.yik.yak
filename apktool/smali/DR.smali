.class public LDR;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/fragment/BaseYakFragment;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/fragment/BaseYakFragment;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, LDR;->a:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 105
    iget-object v0, p0, LDR;->a:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->w:Landroid/view/animation/TranslateAnimation;

    if-ne p1, v0, :cond_0

    .line 106
    iget-object v0, p0, LDR;->a:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->F:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 107
    iget-object v0, p0, LDR;->a:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->H:Landroid/view/View;

    const v1, 0x7f0d01c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 108
    iget-object v0, p0, LDR;->a:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->H:Landroid/view/View;

    const v1, 0x7f0d01c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 109
    iget-object v0, p0, LDR;->a:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    invoke-virtual {v0}, Lcom/yik/yak/ui/fragment/BaseYakFragment;->h()Lcom/yik/yak/ui/activity/MainActivity;

    move-result-object v0

    iget-object v1, p0, LDR;->a:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/activity/MainActivity;->b(Landroid/support/v4/app/Fragment;)V

    .line 111
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, LDR;->a:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/BaseYakFragment;->v:Landroid/view/animation/TranslateAnimation;

    if-ne p1, v0, :cond_0

    .line 95
    iget-object v0, p0, LDR;->a:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    invoke-virtual {v0}, Lcom/yik/yak/ui/fragment/BaseYakFragment;->h()Lcom/yik/yak/ui/activity/MainActivity;

    move-result-object v0

    iget-object v1, p0, LDR;->a:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/activity/MainActivity;->b(Landroid/support/v4/app/Fragment;)V

    .line 97
    :cond_0
    return-void
.end method
