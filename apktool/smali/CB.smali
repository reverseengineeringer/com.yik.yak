.class public LCB;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/app/ProgressDialog;

.field final synthetic c:Lcom/yik/yak/ui/activity/VerificationActivity;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/activity/VerificationActivity;Ljava/lang/String;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, LCB;->c:Lcom/yik/yak/ui/activity/VerificationActivity;

    iput-object p2, p0, LCB;->a:Ljava/lang/String;

    iput-object p3, p0, LCB;->b:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 317
    new-instance v0, Lcom/yik/yak/data/http/request/VerifyRequest;

    invoke-static {}, LAa;->g()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, LCB;->a:Ljava/lang/String;

    iget-object v3, p0, LCB;->c:Lcom/yik/yak/ui/activity/VerificationActivity;

    invoke-static {v3}, Lcom/yik/yak/ui/activity/VerificationActivity;->n(Lcom/yik/yak/ui/activity/VerificationActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/yik/yak/data/http/request/VerifyRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, LCB;->c:Lcom/yik/yak/ui/activity/VerificationActivity;

    new-instance v2, LCC;

    invoke-direct {v2, p0}, LCC;-><init>(LCB;)V

    invoke-virtual {v0, v1, v2}, Lcom/yik/yak/data/http/request/VerifyRequest;->execute(Landroid/content/Context;LAp;)Landroid/os/Handler;

    .line 354
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    iget-object v1, p0, LCB;->c:Lcom/yik/yak/ui/activity/VerificationActivity;

    const v2, 0x7f080058

    invoke-virtual {v1, v2}, Lcom/yik/yak/ui/activity/VerificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LHa;->n(Ljava/lang/String;)V

    .line 355
    return-void
.end method
