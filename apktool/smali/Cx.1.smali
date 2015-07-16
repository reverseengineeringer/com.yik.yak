.class public LCx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/activity/VerificationActivity;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/activity/VerificationActivity;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, LCx;->a:Lcom/yik/yak/ui/activity/VerificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 70
    iget-object v0, p0, LCx;->a:Lcom/yik/yak/ui/activity/VerificationActivity;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/VerificationActivity;->a(Lcom/yik/yak/ui/activity/VerificationActivity;)LAf;

    move-result-object v0

    invoke-virtual {v0}, LAf;->a()[LAz;

    move-result-object v4

    .line 73
    array-length v5, v4

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_3

    aget-object v0, v4, v2

    .line 74
    iget-object v6, v0, LAz;->c:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 80
    :goto_1
    if-eqz v0, :cond_2

    .line 81
    iget-object v1, p0, LCx;->a:Lcom/yik/yak/ui/activity/VerificationActivity;

    invoke-static {v1}, Lcom/yik/yak/ui/activity/VerificationActivity;->b(Lcom/yik/yak/ui/activity/VerificationActivity;)LAz;

    move-result-object v1

    if-nez v1, :cond_0

    .line 82
    iget-object v1, p0, LCx;->a:Lcom/yik/yak/ui/activity/VerificationActivity;

    invoke-static {v1, v0}, Lcom/yik/yak/ui/activity/VerificationActivity;->a(Lcom/yik/yak/ui/activity/VerificationActivity;LAz;)LAz;

    .line 83
    iget-object v0, p0, LCx;->a:Lcom/yik/yak/ui/activity/VerificationActivity;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/VerificationActivity;->c(Lcom/yik/yak/ui/activity/VerificationActivity;)V

    .line 91
    :cond_0
    :goto_2
    return-void

    .line 73
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 86
    :cond_2
    iget-object v0, p0, LCx;->a:Lcom/yik/yak/ui/activity/VerificationActivity;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/VerificationActivity;->b(Lcom/yik/yak/ui/activity/VerificationActivity;)LAz;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, LCx;->a:Lcom/yik/yak/ui/activity/VerificationActivity;

    invoke-static {v0, v1}, Lcom/yik/yak/ui/activity/VerificationActivity;->a(Lcom/yik/yak/ui/activity/VerificationActivity;LAz;)LAz;

    .line 88
    iget-object v0, p0, LCx;->a:Lcom/yik/yak/ui/activity/VerificationActivity;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/VerificationActivity;->c(Lcom/yik/yak/ui/activity/VerificationActivity;)V

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 65
    return-void
.end method
