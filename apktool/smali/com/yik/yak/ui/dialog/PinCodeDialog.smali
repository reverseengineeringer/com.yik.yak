.class public Lcom/yik/yak/ui/dialog/PinCodeDialog;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/os/Vibrator;

.field private c:Ljava/lang/String;

.field private d:Landroid/view/View$OnClickListener;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/yik/yak/ui/dialog/PinCodeDialog;->c:Ljava/lang/String;

    .line 25
    new-instance v0, LDu;

    invoke-direct {v0, p0}, LDu;-><init>(Lcom/yik/yak/ui/dialog/PinCodeDialog;)V

    iput-object v0, p0, Lcom/yik/yak/ui/dialog/PinCodeDialog;->d:Landroid/view/View$OnClickListener;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/yik/yak/ui/dialog/PinCodeDialog;->e:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/yik/yak/ui/dialog/PinCodeDialog;)Landroid/os/Vibrator;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/yik/yak/ui/dialog/PinCodeDialog;->b:Landroid/os/Vibrator;

    return-object v0
.end method

.method public static synthetic a(Lcom/yik/yak/ui/dialog/PinCodeDialog;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yik/yak/ui/dialog/PinCodeDialog;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/dialog/PinCodeDialog;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic a(Lcom/yik/yak/ui/dialog/PinCodeDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/yik/yak/ui/dialog/PinCodeDialog;->c:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 4

    .prologue
    .line 156
    new-instance v0, LDx;

    invoke-direct {v0, p0}, LDx;-><init>(Lcom/yik/yak/ui/dialog/PinCodeDialog;)V

    .line 162
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 163
    return-void
.end method

.method public static synthetic b(Lcom/yik/yak/ui/dialog/PinCodeDialog;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/yik/yak/ui/dialog/PinCodeDialog;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic c(Lcom/yik/yak/ui/dialog/PinCodeDialog;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/yik/yak/ui/dialog/PinCodeDialog;->a()V

    return-void
.end method

.method public static synthetic d(Lcom/yik/yak/ui/dialog/PinCodeDialog;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/yik/yak/ui/dialog/PinCodeDialog;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic e(Lcom/yik/yak/ui/dialog/PinCodeDialog;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/yik/yak/ui/dialog/PinCodeDialog;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const v4, 0x7f080148

    const/4 v2, 0x1

    .line 73
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/yik/yak/ui/dialog/PinCodeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0, v2}, Lcom/yik/yak/ui/dialog/PinCodeDialog;->setRequestedOrientation(I)V

    .line 78
    :cond_0
    invoke-virtual {p0, v2}, Lcom/yik/yak/ui/dialog/PinCodeDialog;->requestWindowFeature(I)Z

    .line 79
    const v0, 0x7f030044

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/dialog/PinCodeDialog;->setContentView(I)V

    .line 82
    const v0, 0x7f0d00e7

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/dialog/PinCodeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 83
    invoke-virtual {p0}, Lcom/yik/yak/ui/dialog/PinCodeDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 84
    if-eqz v1, :cond_1

    .line 85
    const-string v2, "title"

    invoke-virtual {p0}, Lcom/yik/yak/ui/dialog/PinCodeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    const-string v0, "pin"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/dialog/PinCodeDialog;->e:Ljava/lang/String;

    .line 91
    :goto_0
    iput-object p0, p0, Lcom/yik/yak/ui/dialog/PinCodeDialog;->a:Landroid/content/Context;

    .line 93
    const v0, 0x7f0d00fe

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/dialog/PinCodeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yik/yak/ui/dialog/PinCodeDialog;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    const v0, 0x7f0d00f4

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/dialog/PinCodeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yik/yak/ui/dialog/PinCodeDialog;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const v0, 0x7f0d00f5

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/dialog/PinCodeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yik/yak/ui/dialog/PinCodeDialog;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    const v0, 0x7f0d00f6

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/dialog/PinCodeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yik/yak/ui/dialog/PinCodeDialog;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const v0, 0x7f0d00f7

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/dialog/PinCodeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yik/yak/ui/dialog/PinCodeDialog;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    const v0, 0x7f0d00f8

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/dialog/PinCodeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yik/yak/ui/dialog/PinCodeDialog;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const v0, 0x7f0d00f9

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/dialog/PinCodeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yik/yak/ui/dialog/PinCodeDialog;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    const v0, 0x7f0d00fa

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/dialog/PinCodeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yik/yak/ui/dialog/PinCodeDialog;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    const v0, 0x7f0d00fb

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/dialog/PinCodeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yik/yak/ui/dialog/PinCodeDialog;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    const v0, 0x7f0d00fc

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/dialog/PinCodeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yik/yak/ui/dialog/PinCodeDialog;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    const v0, 0x7f0d00fd

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/dialog/PinCodeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yik/yak/ui/dialog/PinCodeDialog;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    const v0, 0x7f0d00ff

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/dialog/PinCodeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yik/yak/ui/dialog/PinCodeDialog;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/yik/yak/ui/dialog/PinCodeDialog;->a:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/yik/yak/ui/dialog/PinCodeDialog;->b:Landroid/os/Vibrator;

    .line 107
    const v0, 0x7f0d0101

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/dialog/PinCodeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 108
    new-instance v1, LDv;

    invoke-direct {v1, p0}, LDv;-><init>(Lcom/yik/yak/ui/dialog/PinCodeDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    const v0, 0x7f0d0104

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/dialog/PinCodeDialog;->findViewById(I)Landroid/view/View;

    .line 119
    const v0, 0x7f0d0102

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/dialog/PinCodeDialog;->findViewById(I)Landroid/view/View;

    .line 121
    const v0, 0x7f0d0103

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/dialog/PinCodeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 122
    new-instance v1, LDw;

    invoke-direct {v1, p0}, LDw;-><init>(Lcom/yik/yak/ui/dialog/PinCodeDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    return-void

    .line 88
    :cond_1
    invoke-virtual {p0}, Lcom/yik/yak/ui/dialog/PinCodeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
