.class public Lcom/yik/yak/ui/activity/ReportDialog$$ViewInjector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/ButterKnife$Injector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/yik/yak/ui/activity/ReportDialog;",
        ">",
        "Ljava/lang/Object;",
        "Lbutterknife/ButterKnife$Injector",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public inject(Lbutterknife/ButterKnife$Finder;Lcom/yik/yak/ui/activity/ReportDialog;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbutterknife/ButterKnife$Finder;",
            "TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    const v2, 0x7f0d0100

    .line 11
    const-string v0, "field \'blockYakkerCheckBox\'"

    invoke-virtual {p1, p3, v2, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    const-string v1, "field \'blockYakkerCheckBox\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p2, Lcom/yik/yak/ui/activity/ReportDialog;->blockYakkerCheckBox:Landroid/widget/CheckBox;

    .line 13
    const v0, 0x7f0d00f8

    const-string v1, "method \'onReportClick\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 14
    new-instance v1, LBz;

    invoke-direct {v1, p0, p2}, LBz;-><init>(Lcom/yik/yak/ui/activity/ReportDialog$$ViewInjector;Lcom/yik/yak/ui/activity/ReportDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    const v0, 0x7f0d00fa

    const-string v1, "method \'onReportClick\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 23
    new-instance v1, LBA;

    invoke-direct {v1, p0, p2}, LBA;-><init>(Lcom/yik/yak/ui/activity/ReportDialog$$ViewInjector;Lcom/yik/yak/ui/activity/ReportDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    const v0, 0x7f0d00fc

    const-string v1, "method \'onReportClick\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 32
    new-instance v1, LBB;

    invoke-direct {v1, p0, p2}, LBB;-><init>(Lcom/yik/yak/ui/activity/ReportDialog$$ViewInjector;Lcom/yik/yak/ui/activity/ReportDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    const v0, 0x7f0d00fe

    const-string v1, "method \'onReportClick\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 41
    new-instance v1, LBC;

    invoke-direct {v1, p0, p2}, LBC;-><init>(Lcom/yik/yak/ui/activity/ReportDialog$$ViewInjector;Lcom/yik/yak/ui/activity/ReportDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    return-void
.end method

.method public bridge synthetic inject(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 8
    check-cast p2, Lcom/yik/yak/ui/activity/ReportDialog;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yik/yak/ui/activity/ReportDialog$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/yik/yak/ui/activity/ReportDialog;Ljava/lang/Object;)V

    return-void
.end method

.method public reset(Lcom/yik/yak/ui/activity/ReportDialog;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 52
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/yik/yak/ui/activity/ReportDialog;->blockYakkerCheckBox:Landroid/widget/CheckBox;

    .line 53
    return-void
.end method

.method public bridge synthetic reset(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 8
    check-cast p1, Lcom/yik/yak/ui/activity/ReportDialog;

    invoke-virtual {p0, p1}, Lcom/yik/yak/ui/activity/ReportDialog$$ViewInjector;->reset(Lcom/yik/yak/ui/activity/ReportDialog;)V

    return-void
.end method
