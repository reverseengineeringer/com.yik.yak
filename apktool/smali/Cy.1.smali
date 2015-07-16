.class public LCy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/yik/yak/ui/activity/VerificationActivity;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/activity/VerificationActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, LCy;->b:Lcom/yik/yak/ui/activity/VerificationActivity;

    iput-object p2, p0, LCy;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, LCy;->b:Lcom/yik/yak/ui/activity/VerificationActivity;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/VerificationActivity;->d(Lcom/yik/yak/ui/activity/VerificationActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, LCy;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 158
    return-void
.end method
