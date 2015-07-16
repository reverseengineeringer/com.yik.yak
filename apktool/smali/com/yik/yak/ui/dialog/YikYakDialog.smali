.class public Lcom/yik/yak/ui/dialog/YikYakDialog;
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
    iput-object v0, p0, Lcom/yik/yak/ui/dialog/YikYakDialog;->a:Landroid/widget/EditText;

    .line 32
    iput-object v0, p0, Lcom/yik/yak/ui/dialog/YikYakDialog;->b:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/yik/yak/ui/dialog/YikYakDialog;->c:Landroid/os/Bundle;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 40
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yik/yak/ui/dialog/YikYakDialog;

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

.method public static synthetic a(Lcom/yik/yak/ui/dialog/YikYakDialog;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/yik/yak/ui/dialog/YikYakDialog;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    .line 177
    new-instance v0, LDI;

    invoke-direct {v0, p0}, LDI;-><init>(Lcom/yik/yak/ui/dialog/YikYakDialog;)V

    .line 183
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 184
    return-void
.end method

.method public static synthetic b(Lcom/yik/yak/ui/dialog/YikYakDialog;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/yik/yak/ui/dialog/YikYakDialog;->b:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 188
    :try_start_0
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/dialog/YikYakDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 189
    iget-object v1, p0, Lcom/yik/yak/ui/dialog/YikYakDialog;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static synthetic c(Lcom/yik/yak/ui/dialog/YikYakDialog;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/yik/yak/ui/dialog/YikYakDialog;->b()V

    return-void
.end method

.method public static synthetic d(Lcom/yik/yak/ui/dialog/YikYakDialog;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/yik/yak/ui/dialog/YikYakDialog;->a()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/yik/yak/ui/dialog/YikYakDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0, v4}, Lcom/yik/yak/ui/dialog/YikYakDialog;->setRequestedOrientation(I)V

    .line 63
    :cond_0
    invoke-virtual {p0, v4}, Lcom/yik/yak/ui/dialog/YikYakDialog;->requestWindowFeature(I)Z

    .line 64
    invoke-virtual {p0}, Lcom/yik/yak/ui/dialog/YikYakDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 65
    invoke-virtual {p0, v5}, Lcom/yik/yak/ui/dialog/YikYakDialog;->setFinishOnTouchOutside(Z)V

    .line 66
    const v0, 0x7f030047

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/dialog/YikYakDialog;->setContentView(I)V

    .line 69
    invoke-virtual {p0}, Lcom/yik/yak/ui/dialog/YikYakDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/dialog/YikYakDialog;->c:Landroid/os/Bundle;

    .line 70
    iget-object v0, p0, Lcom/yik/yak/ui/dialog/YikYakDialog;->c:Landroid/os/Bundle;

    if-eqz v0, :cond_7

    .line 71
    iget-object v0, p0, Lcom/yik/yak/ui/dialog/YikYakDialog;->c:Landroid/os/Bundle;

    const-string v1, "title"

    const-string v2, "Dialog"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/dialog/YikYakDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 77
    const v0, 0x7f0d0114

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/dialog/YikYakDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yik/yak/ui/dialog/YikYakDialog;->a:Landroid/widget/EditText;

    .line 78
    iget-object v0, p0, Lcom/yik/yak/ui/dialog/YikYakDialog;->c:Landroid/os/Bundle;

    const-string v1, "editText"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/yik/yak/ui/dialog/YikYakDialog;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/yik/yak/ui/dialog/YikYakDialog;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 81
    iget-object v0, p0, Lcom/yik/yak/ui/dialog/YikYakDialog;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 82
    iget-object v0, p0, Lcom/yik/yak/ui/dialog/YikYakDialog;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yik/yak/ui/dialog/YikYakDialog;->c:Landroid/os/Bundle;

    const-string v2, "editText"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/yik/yak/ui/dialog/YikYakDialog;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yik/yak/ui/dialog/YikYakDialog;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 84
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/dialog/YikYakDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 85
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/yik/yak/ui/dialog/YikYakDialog;->c:Landroid/os/Bundle;

    const-string v1, "value"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    iget-object v0, p0, Lcom/yik/yak/ui/dialog/YikYakDialog;->c:Landroid/os/Bundle;

    const-string v1, "value"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/dialog/YikYakDialog;->b:Ljava/lang/String;

    .line 92
    :cond_2
    const v0, 0x7f0d00e7

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/dialog/YikYakDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 93
    iget-object v1, p0, Lcom/yik/yak/ui/dialog/YikYakDialog;->c:Landroid/os/Bundle;

    const-string v2, "title"

    const-string v3, "Dialog"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    const v0, 0x7f0d0113

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/dialog/YikYakDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 96
    iget-object v1, p0, Lcom/yik/yak/ui/dialog/YikYakDialog;->c:Landroid/os/Bundle;

    const-string v2, "message"

    const-string v3, "Message"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v1, p0, Lcom/yik/yak/ui/dialog/YikYakDialog;->c:Landroid/os/Bundle;

    const-string v2, "align"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 98
    iget-object v1, p0, Lcom/yik/yak/ui/dialog/YikYakDialog;->c:Landroid/os/Bundle;

    const-string v2, "align"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "left"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 99
    const v1, 0x800013

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 103
    :cond_3
    const v0, 0x7f0d011c

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/dialog/YikYakDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 104
    iget-object v1, p0, Lcom/yik/yak/ui/dialog/YikYakDialog;->c:Landroid/os/Bundle;

    const-string v2, "okText"

    const-string v3, "OK"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    const v0, 0x7f0d0118

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/dialog/YikYakDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 108
    iget-object v1, p0, Lcom/yik/yak/ui/dialog/YikYakDialog;->c:Landroid/os/Bundle;

    const-string v2, "cancelText"

    const-string v3, "CANCEL"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p0, Lcom/yik/yak/ui/dialog/YikYakDialog;->c:Landroid/os/Bundle;

    const-string v1, "maybeText"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/yik/yak/ui/dialog/YikYakDialog;->c:Landroid/os/Bundle;

    const-string v1, "maybeText"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 111
    :cond_4
    const v0, 0x7f0d0119

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/dialog/YikYakDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 112
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 113
    const v1, 0x7f0d011a

    invoke-virtual {p0, v1}, Lcom/yik/yak/ui/dialog/YikYakDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 114
    iget-object v2, p0, Lcom/yik/yak/ui/dialog/YikYakDialog;->c:Landroid/os/Bundle;

    const-string v3, "maybeText"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    new-instance v1, LDF;

    invoke-direct {v1, p0}, LDF;-><init>(Lcom/yik/yak/ui/dialog/YikYakDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    :cond_5
    const v0, 0x7f0d011b

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/dialog/YikYakDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 133
    new-instance v1, LDG;

    invoke-direct {v1, p0}, LDG;-><init>(Lcom/yik/yak/ui/dialog/YikYakDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    const v0, 0x7f0d0117

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/dialog/YikYakDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 150
    new-instance v1, LDH;

    invoke-direct {v1, p0}, LDH;-><init>(Lcom/yik/yak/ui/dialog/YikYakDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v1, p0, Lcom/yik/yak/ui/dialog/YikYakDialog;->c:Landroid/os/Bundle;

    const-string v2, "okOnly"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 167
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 169
    :cond_6
    :goto_0
    return-void

    .line 73
    :cond_7
    invoke-direct {p0}, Lcom/yik/yak/ui/dialog/YikYakDialog;->a()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 173
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 174
    return-void
.end method
