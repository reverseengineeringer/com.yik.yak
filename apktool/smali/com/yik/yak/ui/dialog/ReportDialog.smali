.class public Lcom/yik/yak/ui/dialog/ReportDialog;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected a:Landroid/widget/CheckBox;

.field private final b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 24
    const/16 v0, 0xfa

    iput v0, p0, Lcom/yik/yak/ui/dialog/ReportDialog;->b:I

    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 49
    const v0, 0x7f0d010d

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/dialog/ReportDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/yik/yak/ui/dialog/ReportDialog;->a:Landroid/widget/CheckBox;

    .line 50
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 91
    const-string v2, "result"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const-string v0, "KEY_SHOULD_BLOCK_YAKKER"

    iget-object v2, p0, Lcom/yik/yak/ui/dialog/ReportDialog;->a:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 93
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/yik/yak/ui/dialog/ReportDialog;->setResult(ILandroid/content/Intent;)V

    .line 94
    invoke-direct {p0}, Lcom/yik/yak/ui/dialog/ReportDialog;->c()V

    .line 95
    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/yik/yak/ui/dialog/ReportDialog;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {p0, p0, v0}, LHu;->a(Landroid/app/Activity;Landroid/view/View$OnClickListener;[I)V

    .line 61
    return-void

    .line 54
    nop

    :array_0
    .array-data 4
        0x7f0d00ed
        0x7f0d0105
        0x7f0d0107
        0x7f0d0109
        0x7f0d010b
    .end array-data
.end method

.method private c()V
    .locals 4

    .prologue
    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, LDC;

    invoke-direct {v1, p0}, LDC;-><init>(Lcom/yik/yak/ui/dialog/ReportDialog;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 70
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/dialog/ReportDialog;->setResult(I)V

    .line 99
    invoke-direct {p0}, Lcom/yik/yak/ui/dialog/ReportDialog;->c()V

    .line 100
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 86
    :goto_0
    return-void

    .line 79
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/yik/yak/ui/dialog/ReportDialog;->a(Landroid/view/View;)V

    goto :goto_0

    .line 83
    :sswitch_1
    invoke-direct {p0}, Lcom/yik/yak/ui/dialog/ReportDialog;->d()V

    goto :goto_0

    .line 74
    :sswitch_data_0
    .sparse-switch
        0x7f0d00ed -> :sswitch_1
        0x7f0d0105 -> :sswitch_0
        0x7f0d0107 -> :sswitch_0
        0x7f0d0109 -> :sswitch_0
        0x7f0d010b -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/yik/yak/ui/dialog/ReportDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p0, v2}, Lcom/yik/yak/ui/dialog/ReportDialog;->setRequestedOrientation(I)V

    .line 40
    :cond_0
    invoke-virtual {p0, v2}, Lcom/yik/yak/ui/dialog/ReportDialog;->requestWindowFeature(I)Z

    .line 41
    invoke-virtual {p0}, Lcom/yik/yak/ui/dialog/ReportDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 42
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/dialog/ReportDialog;->setFinishOnTouchOutside(Z)V

    .line 43
    const v0, 0x7f030045

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/dialog/ReportDialog;->setContentView(I)V

    .line 44
    invoke-direct {p0}, Lcom/yik/yak/ui/dialog/ReportDialog;->a()V

    .line 45
    invoke-direct {p0}, Lcom/yik/yak/ui/dialog/ReportDialog;->b()V

    .line 46
    return-void
.end method
