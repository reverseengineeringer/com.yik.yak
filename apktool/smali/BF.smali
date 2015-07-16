.class public LBF;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LFW;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, LBF;->a:Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 116
    iget-object v0, p0, LBF;->a:Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;->a(Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 117
    iget-object v0, p0, LBF;->a:Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;->b(Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setVisibility(I)V

    .line 118
    iget-object v0, p0, LBF;->a:Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;->c(Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, LBF;->a:Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;->a(Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;Z)Z

    .line 120
    iget-object v0, p0, LBF;->a:Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;->a(Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, LBF;->a:Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;

    iget-object v1, v1, Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;->d:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 122
    :cond_0
    return-void
.end method
