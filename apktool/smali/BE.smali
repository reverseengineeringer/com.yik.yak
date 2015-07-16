.class public LBE;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, LBE;->a:Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 64
    iget-object v0, p0, LBE;->a:Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;

    iget-object v0, v0, Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;->e:Landroid/view/animation/TranslateAnimation;

    if-ne p1, v0, :cond_0

    .line 65
    iget-object v0, p0, LBE;->a:Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;->a(Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 66
    iget-object v0, p0, LBE;->a:Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;->b(Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setVisibility(I)V

    .line 68
    :cond_0
    iget-object v0, p0, LBE;->a:Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;->a(Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;Z)Z

    .line 69
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 53
    return-void
.end method
