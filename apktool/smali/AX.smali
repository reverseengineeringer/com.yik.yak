.class public LAX;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/yik/yak/ui/activity/BaseAppCompatActivity;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/activity/BaseAppCompatActivity;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, LAX;->b:Lcom/yik/yak/ui/activity/BaseAppCompatActivity;

    iput-object p2, p0, LAX;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, LAX;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 99
    iget-object v0, p0, LAX;->a:Landroid/widget/EditText;

    iget-object v1, p0, LAX;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 100
    iget-object v0, p0, LAX;->b:Lcom/yik/yak/ui/activity/BaseAppCompatActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 101
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 102
    return-void
.end method
