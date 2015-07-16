.class public LCD;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/activity/VerificationActivity;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/activity/VerificationActivity;)V
    .locals 0

    .prologue
    .line 468
    iput-object p1, p0, LCD;->a:Lcom/yik/yak/ui/activity/VerificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 470
    iget-object v0, p0, LCD;->a:Lcom/yik/yak/ui/activity/VerificationActivity;

    iget-object v1, p0, LCD;->a:Lcom/yik/yak/ui/activity/VerificationActivity;

    invoke-static {v1}, Lcom/yik/yak/ui/activity/VerificationActivity;->a(Lcom/yik/yak/ui/activity/VerificationActivity;)LAf;

    move-result-object v1

    invoke-virtual {v1, p2}, LAf;->a(I)LAz;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/activity/VerificationActivity;->a(LAz;)V

    .line 471
    iget-object v0, p0, LCD;->a:Lcom/yik/yak/ui/activity/VerificationActivity;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/VerificationActivity;->k(Lcom/yik/yak/ui/activity/VerificationActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 472
    return-void
.end method
