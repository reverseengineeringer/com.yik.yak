.class public Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;->b:Landroid/widget/TextView;

    .line 26
    iput-object v0, p0, Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;->c:Landroid/widget/TextView;

    .line 27
    iput-object v0, p0, Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;->d:Landroid/os/Bundle;

    return-void
.end method

.method public static synthetic a(Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;->a:Landroid/content/Context;

    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    .line 104
    new-instance v0, LDB;

    invoke-direct {v0, p0}, LDB;-><init>(Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;)V

    .line 110
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 111
    return-void
.end method

.method public static synthetic b(Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;->a()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    iput-object p0, p0, Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;->a:Landroid/content/Context;

    .line 37
    invoke-virtual {p0}, Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0, v2}, Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;->setRequestedOrientation(I)V

    .line 40
    :cond_0
    invoke-virtual {p0, v2}, Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;->requestWindowFeature(I)Z

    .line 41
    invoke-virtual {p0}, Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 42
    invoke-virtual {p0, v3}, Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;->setFinishOnTouchOutside(Z)V

    .line 43
    const v0, 0x7f030047

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;->setContentView(I)V

    .line 45
    invoke-virtual {p0}, Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;->d:Landroid/os/Bundle;

    .line 46
    iget-object v0, p0, Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;->d:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;->d:Landroid/os/Bundle;

    const-string v1, "title"

    const-string v2, "Dialog"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 53
    const v0, 0x7f0d0115

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;->b:Landroid/widget/TextView;

    .line 54
    iget-object v0, p0, Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 55
    iget-object v0, p0, Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;->b:Landroid/widget/TextView;

    const v1, 0x7f08014e

    invoke-virtual {p0, v1}, Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p0, Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;->b:Landroid/widget/TextView;

    new-instance v1, LDy;

    invoke-direct {v1, p0}, LDy;-><init>(Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const v0, 0x7f0d0116

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;->c:Landroid/widget/TextView;

    .line 65
    iget-object v0, p0, Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;->c:Landroid/widget/TextView;

    const v1, 0x7f080198

    invoke-virtual {p0, v1}, Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;->c:Landroid/widget/TextView;

    new-instance v1, LDz;

    invoke-direct {v1, p0}, LDz;-><init>(Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    const v0, 0x7f0d00e7

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 77
    iget-object v1, p0, Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;->d:Landroid/os/Bundle;

    const-string v2, "title"

    const-string v3, "Dialog"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    const v0, 0x7f0d0113

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 80
    iget-object v1, p0, Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;->d:Landroid/os/Bundle;

    const-string v2, "message"

    const-string v3, "Message"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    const v0, 0x7f0d011c

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 83
    iget-object v1, p0, Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;->d:Landroid/os/Bundle;

    const-string v2, "okText"

    const-string v3, "OK"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    const v0, 0x7f0d0118

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 87
    iget-object v1, p0, Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;->d:Landroid/os/Bundle;

    const-string v2, "cancelText"

    const-string v3, "CANCEL"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    const v0, 0x7f0d011b

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 90
    new-instance v1, LDA;

    invoke-direct {v1, p0}, LDA;-><init>(Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    const v0, 0x7f0d0117

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 99
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 101
    :goto_0
    return-void

    .line 49
    :cond_1
    invoke-direct {p0}, Lcom/yik/yak/ui/dialog/PrivacyPolicyUpdateDialog;->a()V

    goto :goto_0
.end method
