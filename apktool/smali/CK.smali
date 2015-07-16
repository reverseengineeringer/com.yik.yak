.class LCK;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:LCH;


# direct methods
.method constructor <init>(LCH;)V
    .locals 0

    .prologue
    .line 744
    iput-object p1, p0, LCK;->a:LCH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 757
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 758
    iget-object v1, p0, LCK;->a:LCH;

    iget-object v1, v1, LCH;->b:Lcom/yik/yak/ui/activity/VerificationActivity;

    invoke-virtual {v1, v0}, Lcom/yik/yak/ui/activity/VerificationActivity;->a(I)V

    .line 760
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 761
    iget-object v0, p0, LCK;->a:LCH;

    iget-object v0, v0, LCH;->b:Lcom/yik/yak/ui/activity/VerificationActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yik/yak/ui/activity/VerificationActivity;->b(Lcom/yik/yak/ui/activity/VerificationActivity;Ljava/lang/String;)V

    .line 763
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 748
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 753
    return-void
.end method
