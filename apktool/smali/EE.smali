.class public LEE;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/fragment/DraftsFragment;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/fragment/DraftsFragment;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, LEE;->a:Lcom/yik/yak/ui/fragment/DraftsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 99
    iget-object v0, p0, LEE;->a:Lcom/yik/yak/ui/fragment/DraftsFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/DraftsFragment;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 100
    iget-object v0, p0, LEE;->a:Lcom/yik/yak/ui/fragment/DraftsFragment;

    invoke-static {v0}, Lcom/yik/yak/ui/fragment/DraftsFragment;->a(Lcom/yik/yak/ui/fragment/DraftsFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d0124

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 101
    iget-object v0, p0, LEE;->a:Lcom/yik/yak/ui/fragment/DraftsFragment;

    invoke-static {v0}, Lcom/yik/yak/ui/fragment/DraftsFragment;->a(Lcom/yik/yak/ui/fragment/DraftsFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d0126

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 102
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 91
    return-void
.end method
