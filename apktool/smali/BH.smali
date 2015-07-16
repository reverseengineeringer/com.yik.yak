.class public LBH;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, LBH;->a:Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .prologue
    .line 139
    if-eqz p2, :cond_0

    .line 140
    iget-object v0, p0, LBH;->a:Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;->d(Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;)V

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, LAa;->m(Z)V

    goto :goto_0
.end method
