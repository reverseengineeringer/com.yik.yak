.class public Lcom/yik/yak/ui/activity/NewEnvironmentActivity;
.super Lcom/yik/yak/ui/activity/BaseAppCompatActivity;
.source "SourceFile"


# instance fields
.field protected c:Landroid/widget/EditText;

.field public d:Landroid/widget/EditText;

.field protected e:Landroid/widget/EditText;

.field protected f:Landroid/widget/EditText;

.field protected g:Landroid/widget/EditText;

.field protected h:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/yik/yak/ui/activity/NewEnvironmentActivity;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/NewEnvironmentActivity;->f()V

    return-void
.end method

.method private a()Z
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/yik/yak/ui/activity/NewEnvironmentActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yik/yak/ui/activity/NewEnvironmentActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yik/yak/ui/activity/NewEnvironmentActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yik/yak/ui/activity/NewEnvironmentActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yik/yak/ui/activity/NewEnvironmentActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    :cond_0
    const/4 v0, 0x0

    .line 42
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 46
    invoke-static {}, LAM;->a()LAM;

    move-result-object v0

    invoke-virtual {v0}, LAM;->c()Lcom/yik/yak/data/models/Environment;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/yik/yak/ui/activity/NewEnvironmentActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/yik/yak/data/models/Environment;->getMainApiEndpoint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v1, p0, Lcom/yik/yak/ui/activity/NewEnvironmentActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/yik/yak/data/models/Environment;->getNotificationEndpoint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v1, p0, Lcom/yik/yak/ui/activity/NewEnvironmentActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/yik/yak/data/models/Environment;->getImageUploadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v1, p0, Lcom/yik/yak/ui/activity/NewEnvironmentActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/yik/yak/data/models/Environment;->getBasecampEndpoint()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 51
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 54
    new-instance v0, Lcom/yik/yak/data/models/Environment;

    invoke-direct {v0}, Lcom/yik/yak/data/models/Environment;-><init>()V

    .line 55
    iget-object v1, p0, Lcom/yik/yak/ui/activity/NewEnvironmentActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yik/yak/data/models/Environment;->setName(Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcom/yik/yak/ui/activity/NewEnvironmentActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yik/yak/data/models/Environment;->setShortName(Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/yik/yak/ui/activity/NewEnvironmentActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yik/yak/data/models/Environment;->setMainApiEndpoint(Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Lcom/yik/yak/ui/activity/NewEnvironmentActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yik/yak/data/models/Environment;->setNotificationEndpoint(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/yik/yak/ui/activity/NewEnvironmentActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yik/yak/data/models/Environment;->setImageUploadEndpoint(Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/yik/yak/ui/activity/NewEnvironmentActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yik/yak/data/models/Environment;->setBasecampEndpoint(Ljava/lang/String;)V

    .line 61
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/yik/yak/data/models/Environment;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/yik/yak/data/db/helper/EnvironmentTableHelper;->insertEnvironments([Lcom/yik/yak/data/models/Environment;)V

    .line 62
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 72
    const v0, 0x7f03001e

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/NewEnvironmentActivity;->setContentView(I)V

    .line 73
    const-string v0, "New Environment"

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/NewEnvironmentActivity;->a(Ljava/lang/String;)V

    .line 75
    const v0, 0x7f0d00a3

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/NewEnvironmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 76
    const v1, 0x7f080169

    invoke-virtual {p0, v1}, Lcom/yik/yak/ui/activity/NewEnvironmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    new-instance v1, LBp;

    invoke-direct {v1, p0}, LBp;-><init>(Lcom/yik/yak/ui/activity/NewEnvironmentActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    const v0, 0x7f0d0076

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/NewEnvironmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/NewEnvironmentActivity;->c:Landroid/widget/EditText;

    .line 85
    const v0, 0x7f0d0077

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/NewEnvironmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/NewEnvironmentActivity;->d:Landroid/widget/EditText;

    .line 86
    const v0, 0x7f0d0078

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/NewEnvironmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/NewEnvironmentActivity;->e:Landroid/widget/EditText;

    .line 87
    const v0, 0x7f0d0079

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/NewEnvironmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/NewEnvironmentActivity;->f:Landroid/widget/EditText;

    .line 88
    const v0, 0x7f0d007a

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/NewEnvironmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/NewEnvironmentActivity;->g:Landroid/widget/EditText;

    .line 89
    const v0, 0x7f0d007b

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/NewEnvironmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/NewEnvironmentActivity;->h:Landroid/widget/EditText;

    .line 91
    iget-object v0, p0, Lcom/yik/yak/ui/activity/NewEnvironmentActivity;->c:Landroid/widget/EditText;

    new-instance v1, LBq;

    invoke-direct {v1, p0}, LBq;-><init>(Lcom/yik/yak/ui/activity/NewEnvironmentActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 108
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/NewEnvironmentActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/NewEnvironmentActivity;->d()V

    .line 113
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/NewEnvironmentActivity;->finish()V

    .line 119
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-static {p0}, Lcom/nispok/snackbar/Snackbar;->a(Landroid/content/Context;)Lcom/nispok/snackbar/Snackbar;

    move-result-object v0

    sget-object v1, LwG;->b:LwG;

    invoke-virtual {v0, v1}, Lcom/nispok/snackbar/Snackbar;->a(LwG;)Lcom/nispok/snackbar/Snackbar;

    move-result-object v0

    const-string v1, "You must fill in all required fields!"

    invoke-virtual {v0, v1}, Lcom/nispok/snackbar/Snackbar;->a(Ljava/lang/CharSequence;)Lcom/nispok/snackbar/Snackbar;

    move-result-object v0

    invoke-static {v0, p0}, LwF;->a(Lcom/nispok/snackbar/Snackbar;Landroid/app/Activity;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/NewEnvironmentActivity;->e()V

    .line 68
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/NewEnvironmentActivity;->c()V

    .line 69
    return-void
.end method
