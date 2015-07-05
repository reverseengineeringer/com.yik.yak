.class public LBg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/activity/NewEnvironmentActivity;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/activity/NewEnvironmentActivity;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, LBg;->a:Lcom/yik/yak/ui/activity/NewEnvironmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 104
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    iget-object v1, p0, LBg;->a:Lcom/yik/yak/ui/activity/NewEnvironmentActivity;

    iget-object v1, v1, Lcom/yik/yak/ui/activity/NewEnvironmentActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 106
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 100
    return-void
.end method
