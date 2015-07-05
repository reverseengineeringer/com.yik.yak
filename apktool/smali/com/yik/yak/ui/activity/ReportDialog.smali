.class public Lcom/yik/yak/ui/activity/ReportDialog;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field protected blockYakkerCheckBox:Landroid/widget/CheckBox;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0d0100
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/ReportDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p0, v2}, Lcom/yik/yak/ui/activity/ReportDialog;->setRequestedOrientation(I)V

    .line 49
    :cond_0
    invoke-virtual {p0, v2}, Lcom/yik/yak/ui/activity/ReportDialog;->requestWindowFeature(I)Z

    .line 51
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/ReportDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 53
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/ReportDialog;->setFinishOnTouchOutside(Z)V

    .line 54
    const v0, 0x7f030041

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/ReportDialog;->setContentView(I)V

    .line 55
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 56
    const v0, 0x7f0d00e0

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/ReportDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, LBD;

    invoke-direct {v1, p0}, LBD;-><init>(Lcom/yik/yak/ui/activity/ReportDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    return-void
.end method

.method public onReportClick(Landroid/view/View;)V
    .locals 4
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0d00f8,
            0x7f0d00fa,
            0x7f0d00fc,
            0x7f0d00fe
        }
    .end annotation

    .prologue
    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 79
    const-string v2, "result"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string v0, "KEY_SHOULD_BLOCK_YAKKER"

    iget-object v2, p0, Lcom/yik/yak/ui/activity/ReportDialog;->blockYakkerCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 81
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/yik/yak/ui/activity/ReportDialog;->setResult(ILandroid/content/Intent;)V

    .line 82
    new-instance v0, LBF;

    invoke-direct {v0, p0}, LBF;-><init>(Lcom/yik/yak/ui/activity/ReportDialog;)V

    .line 88
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 89
    return-void
.end method
