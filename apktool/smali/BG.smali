.class public LBG;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LFX;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, LBG;->a:Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, LBG;->a:Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;->c(Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, LBG;->a:Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;->a(Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;Z)Z

    .line 129
    iget-object v0, p0, LBG;->a:Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;->a(Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, LBG;->a:Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;

    iget-object v1, v1, Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;->e:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 131
    :cond_0
    return-void
.end method
