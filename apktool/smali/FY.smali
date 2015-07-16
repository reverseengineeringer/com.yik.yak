.class public LFY;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Landroid/widget/RelativeLayout$LayoutParams;

.field final synthetic b:Lcom/yik/yak/ui/view/PromotedActionButtonView;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/view/PromotedActionButtonView;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, LFY;->b:Lcom/yik/yak/ui/view/PromotedActionButtonView;

    iput-object p2, p0, LFY;->a:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 81
    iget-object v1, p0, LFY;->a:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 82
    iget-object v0, p0, LFY;->b:Lcom/yik/yak/ui/view/PromotedActionButtonView;

    iget-object v1, p0, LFY;->a:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/PromotedActionButtonView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    return-void
.end method
