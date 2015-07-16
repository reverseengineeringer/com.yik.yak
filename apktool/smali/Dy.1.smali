.class public LDy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, LDy;->a:Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 59
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    const-string v1, "Update"

    invoke-virtual {v0, v1}, LHa;->e(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, LDy;->a:Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;

    iget-object v1, p0, LDy;->a:Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;

    invoke-static {v1}, Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;->a(Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;->startActivity(Landroid/content/Intent;)V

    .line 61
    return-void
.end method
