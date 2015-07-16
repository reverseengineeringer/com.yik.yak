.class public LAW;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LAp;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/activity/AuthenticateWebAppActivity;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/activity/AuthenticateWebAppActivity;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, LAW;->a:Lcom/yik/yak/ui/activity/AuthenticateWebAppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yik/yak/data/http/request/YikYakRequest;Ljava/lang/Exception;)V
    .locals 4

    .prologue
    .line 81
    iget-object v0, p0, LAW;->a:Lcom/yik/yak/ui/activity/AuthenticateWebAppActivity;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, LAW;->a:Lcom/yik/yak/ui/activity/AuthenticateWebAppActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Oh noes!"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Something went wrong!"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Okay"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yik/yak/ui/activity/AuthenticateWebAppActivity;->a(Lcom/yik/yak/ui/activity/AuthenticateWebAppActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 87
    iget-object v0, p0, LAW;->a:Lcom/yik/yak/ui/activity/AuthenticateWebAppActivity;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/AuthenticateWebAppActivity;->a(Lcom/yik/yak/ui/activity/AuthenticateWebAppActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 88
    return-void
.end method

.method public a(LxJ;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 69
    iget-object v0, p0, LAW;->a:Lcom/yik/yak/ui/activity/AuthenticateWebAppActivity;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, LAW;->a:Lcom/yik/yak/ui/activity/AuthenticateWebAppActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Yay!"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Happy yakking on the web!"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Okay"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yik/yak/ui/activity/AuthenticateWebAppActivity;->a(Lcom/yik/yak/ui/activity/AuthenticateWebAppActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 76
    iget-object v0, p0, LAW;->a:Lcom/yik/yak/ui/activity/AuthenticateWebAppActivity;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/AuthenticateWebAppActivity;->a(Lcom/yik/yak/ui/activity/AuthenticateWebAppActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 77
    return-void
.end method
