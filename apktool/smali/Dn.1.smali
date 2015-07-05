.class LDn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:LDh;


# direct methods
.method constructor <init>(LDh;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, LDn;->a:LDh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 104
    iget-object v0, p0, LDn;->a:LDh;

    iget-object v0, v0, LDh;->v:Landroid/view/animation/TranslateAnimation;

    if-ne p1, v0, :cond_0

    .line 105
    iget-object v0, p0, LDn;->a:LDh;

    iget-object v0, v0, LDh;->E:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 106
    iget-object v0, p0, LDn;->a:LDh;

    iget-object v0, v0, LDh;->G:Landroid/view/View;

    const v1, 0x7f0d01ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 107
    iget-object v0, p0, LDn;->a:LDh;

    iget-object v0, v0, LDh;->G:Landroid/view/View;

    const v1, 0x7f0d01a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 108
    iget-object v0, p0, LDn;->a:LDh;

    invoke-virtual {v0}, LDh;->f()Lcom/yik/yak/ui/activity/MainActivity;

    move-result-object v0

    iget-object v1, p0, LDn;->a:LDh;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/activity/MainActivity;->b(Landroid/support/v4/app/Fragment;)V

    .line 110
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, LDn;->a:LDh;

    iget-object v0, v0, LDh;->u:Landroid/view/animation/TranslateAnimation;

    if-ne p1, v0, :cond_0

    .line 94
    iget-object v0, p0, LDn;->a:LDh;

    invoke-virtual {v0}, LDh;->f()Lcom/yik/yak/ui/activity/MainActivity;

    move-result-object v0

    iget-object v1, p0, LDn;->a:LDh;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/activity/MainActivity;->b(Landroid/support/v4/app/Fragment;)V

    .line 96
    :cond_0
    return-void
.end method
