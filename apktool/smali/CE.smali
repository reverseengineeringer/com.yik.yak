.class public LCE;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/ProgressDialog;

.field final synthetic b:Lcom/yik/yak/ui/activity/VerificationActivity;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/activity/VerificationActivity;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 529
    iput-object p1, p0, LCE;->b:Lcom/yik/yak/ui/activity/VerificationActivity;

    iput-object p2, p0, LCE;->a:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 532
    iget-object v0, p0, LCE;->b:Lcom/yik/yak/ui/activity/VerificationActivity;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/VerificationActivity;->j(Lcom/yik/yak/ui/activity/VerificationActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 533
    iget-object v0, p0, LCE;->b:Lcom/yik/yak/ui/activity/VerificationActivity;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/VerificationActivity;->k(Lcom/yik/yak/ui/activity/VerificationActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 534
    iget-object v0, p0, LCE;->b:Lcom/yik/yak/ui/activity/VerificationActivity;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/VerificationActivity;->b(Lcom/yik/yak/ui/activity/VerificationActivity;)LAz;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LCE;->b:Lcom/yik/yak/ui/activity/VerificationActivity;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/VerificationActivity;->b(Lcom/yik/yak/ui/activity/VerificationActivity;)LAz;

    move-result-object v0

    iget-object v0, v0, LAz;->b:Ljava/lang/String;

    .line 536
    :goto_0
    new-instance v3, Lcom/yik/yak/data/http/request/StartVerificationRequest;

    const-string v4, "sms"

    invoke-direct {v3, v4, v1, v2, v0}, Lcom/yik/yak/data/http/request/StartVerificationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, LCE;->b:Lcom/yik/yak/ui/activity/VerificationActivity;

    new-instance v1, LCF;

    invoke-direct {v1, p0}, LCF;-><init>(LCE;)V

    invoke-virtual {v3, v0, v1}, Lcom/yik/yak/data/http/request/StartVerificationRequest;->execute(Landroid/content/Context;LAp;)Landroid/os/Handler;

    .line 558
    return-void

    .line 534
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
