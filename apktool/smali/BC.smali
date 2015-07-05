.class public LBC;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/activity/ReportDialog;

.field final synthetic b:Lcom/yik/yak/ui/activity/ReportDialog$$ViewInjector;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/activity/ReportDialog$$ViewInjector;Lcom/yik/yak/ui/activity/ReportDialog;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, LBC;->b:Lcom/yik/yak/ui/activity/ReportDialog$$ViewInjector;

    iput-object p2, p0, LBC;->a:Lcom/yik/yak/ui/activity/ReportDialog;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, LBC;->a:Lcom/yik/yak/ui/activity/ReportDialog;

    invoke-virtual {v0, p1}, Lcom/yik/yak/ui/activity/ReportDialog;->onReportClick(Landroid/view/View;)V

    .line 47
    return-void
.end method
