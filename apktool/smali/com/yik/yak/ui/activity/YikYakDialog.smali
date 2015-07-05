.class public Lcom/yik/yak/ui/activity/YikYakDialog;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Ljava/lang/String;

.field private c:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/yik/yak/ui/activity/YikYakDialog;->a:Landroid/widget/EditText;

    .line 32
    iput-object v0, p0, Lcom/yik/yak/ui/activity/YikYakDialog;->b:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/yik/yak/ui/activity/YikYakDialog;->c:Landroid/os/Bundle;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 40
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yik/yak/ui/activity/YikYakDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    const-string v1, "message"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    const-string v1, "okText"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    const-string v1, "okOnly"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 45
    return-object v0
.end method

.method public static synthetic a(Lcom/yik/yak/ui/activity/YikYakDialog;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/yik/yak/ui/activity/YikYakDialog;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    .line 169
    new-instance v0, LCD;

    invoke-direct {v0, p0}, LCD;-><init>(Lcom/yik/yak/ui/activity/YikYakDialog;)V

    .line 175
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 176
    return-void
.end method

.method public static synthetic b(Lcom/yik/yak/ui/activity/YikYakDialog;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/yik/yak/ui/activity/YikYakDialog;->b:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 180
    :try_start_0
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/YikYakDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 181
    iget-object v1, p0, Lcom/yik/yak/ui/activity/YikYakDialog;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static synthetic c(Lcom/yik/yak/ui/activity/YikYakDialog;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/YikYakDialog;->b()V

    return-void
.end method

.method public static synthetic d(Lcom/yik/yak/ui/activity/YikYakDialog;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/YikYakDialog;->a()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/YikYakDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0, v4}, Lcom/yik/yak/ui/activity/YikYakDialog;->setRequestedOrientation(I)V

    .line 54
    :cond_0
    invoke-virtual {p0, v4}, Lcom/yik/yak/ui/activity/YikYakDialog;->requestWindowFeature(I)Z

    .line 55
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/YikYakDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 56
    invoke-virtual {p0, v5}, Lcom/yik/yak/ui/activity/YikYakDialog;->setFinishOnTouchOutside(Z)V

    .line 57
    const v0, 0x7f030042

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/YikYakDialog;->setContentView(I)V

    .line 60
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/YikYakDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/activity/YikYakDialog;->c:Landroid/os/Bundle;

    .line 61
    iget-object v0, p0, Lcom/yik/yak/ui/activity/YikYakDialog;->c:Landroid/os/Bundle;

    if-eqz v0, :cond_6

    .line 62
    iget-object v0, p0, Lcom/yik/yak/ui/activity/YikYakDialog;->c:Landroid/os/Bundle;

    const-string v1, "title"

    const-string v2, "Dialog"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/YikYakDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 68
    const v0, 0x7f0d0103

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/YikYakDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/YikYakDialog;->a:Landroid/widget/EditText;

    .line 69
    iget-object v0, p0, Lcom/yik/yak/ui/activity/YikYakDialog;->c:Landroid/os/Bundle;

    const-string v1, "editText"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 70
    iget-object v0, p0, Lcom/yik/yak/ui/activity/YikYakDialog;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 71
    iget-object v0, p0, Lcom/yik/yak/ui/activity/YikYakDialog;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 72
    iget-object v0, p0, Lcom/yik/yak/ui/activity/YikYakDialog;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yik/yak/ui/activity/YikYakDialog;->c:Landroid/os/Bundle;

    const-string v2, "editText"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lcom/yik/yak/ui/activity/YikYakDialog;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yik/yak/ui/activity/YikYakDialog;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 74
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/YikYakDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 75
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 80
    :goto_0
    iget-object v0, p0, Lcom/yik/yak/ui/activity/YikYakDialog;->c:Landroid/os/Bundle;

    const-string v1, "value"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/yik/yak/ui/activity/YikYakDialog;->c:Landroid/os/Bundle;

    const-string v1, "value"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/activity/YikYakDialog;->b:Ljava/lang/String;

    .line 84
    :cond_1
    const v0, 0x7f0d00da

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/YikYakDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 85
    iget-object v1, p0, Lcom/yik/yak/ui/activity/YikYakDialog;->c:Landroid/os/Bundle;

    const-string v2, "title"

    const-string v3, "Dialog"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    const v0, 0x7f0d0102

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/YikYakDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 88
    iget-object v1, p0, Lcom/yik/yak/ui/activity/YikYakDialog;->c:Landroid/os/Bundle;

    const-string v2, "message"

    const-string v3, "Message"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v1, p0, Lcom/yik/yak/ui/activity/YikYakDialog;->c:Landroid/os/Bundle;

    const-string v2, "align"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 90
    iget-object v1, p0, Lcom/yik/yak/ui/activity/YikYakDialog;->c:Landroid/os/Bundle;

    const-string v2, "align"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "left"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 91
    const v1, 0x800013

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 95
    :cond_2
    const v0, 0x7f0d0109

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/YikYakDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 96
    iget-object v1, p0, Lcom/yik/yak/ui/activity/YikYakDialog;->c:Landroid/os/Bundle;

    const-string v2, "okText"

    const-string v3, "OK"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    const v0, 0x7f0d0105

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/YikYakDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 100
    iget-object v1, p0, Lcom/yik/yak/ui/activity/YikYakDialog;->c:Landroid/os/Bundle;

    const-string v2, "cancelText"

    const-string v3, "CANCEL"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lcom/yik/yak/ui/activity/YikYakDialog;->c:Landroid/os/Bundle;

    const-string v1, "maybeText"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/yik/yak/ui/activity/YikYakDialog;->c:Landroid/os/Bundle;

    const-string v1, "maybeText"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 103
    :cond_3
    const v0, 0x7f0d0106

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/YikYakDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 104
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 105
    const v1, 0x7f0d0107

    invoke-virtual {p0, v1}, Lcom/yik/yak/ui/activity/YikYakDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 106
    iget-object v2, p0, Lcom/yik/yak/ui/activity/YikYakDialog;->c:Landroid/os/Bundle;

    const-string v3, "maybeText"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    new-instance v1, LCA;

    invoke-direct {v1, p0}, LCA;-><init>(Lcom/yik/yak/ui/activity/YikYakDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    :cond_4
    const v0, 0x7f0d0108

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/YikYakDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 125
    new-instance v1, LCB;

    invoke-direct {v1, p0}, LCB;-><init>(Lcom/yik/yak/ui/activity/YikYakDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    const v0, 0x7f0d0104

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/YikYakDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 142
    new-instance v1, LCC;

    invoke-direct {v1, p0}, LCC;-><init>(Lcom/yik/yak/ui/activity/YikYakDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v1, p0, Lcom/yik/yak/ui/activity/YikYakDialog;->c:Landroid/os/Bundle;

    const-string v2, "okOnly"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 159
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 161
    :cond_5
    :goto_1
    return-void

    .line 64
    :cond_6
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/YikYakDialog;->a()V

    goto :goto_1

    .line 77
    :cond_7
    iget-object v0, p0, Lcom/yik/yak/ui/activity/YikYakDialog;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 165
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 166
    return-void
.end method
