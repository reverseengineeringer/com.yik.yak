.class public Lcom/yik/yak/ui/activity/DraftDialog;
.super Landroid/app/Activity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 58
    new-instance v0, LAO;

    invoke-direct {v0, p0}, LAO;-><init>(Lcom/yik/yak/ui/activity/DraftDialog;)V

    .line 64
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 65
    return-void
.end method

.method public static synthetic a(Lcom/yik/yak/ui/activity/DraftDialog;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/DraftDialog;->a()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/DraftDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {p0, v2}, Lcom/yik/yak/ui/activity/DraftDialog;->setRequestedOrientation(I)V

    .line 22
    :cond_0
    invoke-virtual {p0, v2}, Lcom/yik/yak/ui/activity/DraftDialog;->requestWindowFeature(I)Z

    .line 23
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/DraftDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 24
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/DraftDialog;->setFinishOnTouchOutside(Z)V

    .line 25
    const v0, 0x7f03003f

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/DraftDialog;->setContentView(I)V

    .line 27
    const v0, 0x7f0d00da

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/DraftDialog;->findViewById(I)Landroid/view/View;

    .line 29
    const v0, 0x7f0d00dc

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/DraftDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 30
    new-instance v1, LAL;

    invoke-direct {v1, p0}, LAL;-><init>(Lcom/yik/yak/ui/activity/DraftDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    const v0, 0x7f0d00e0

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/DraftDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 39
    new-instance v1, LAM;

    invoke-direct {v1, p0}, LAM;-><init>(Lcom/yik/yak/ui/activity/DraftDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    const v0, 0x7f0d00de

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/DraftDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 48
    new-instance v1, LAN;

    invoke-direct {v1, p0}, LAN;-><init>(Lcom/yik/yak/ui/activity/DraftDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-void
.end method
