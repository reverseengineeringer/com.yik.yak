.class public LBF;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/activity/ReportDialog;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/activity/ReportDialog;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, LBF;->a:Lcom/yik/yak/ui/activity/ReportDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, LBF;->a:Lcom/yik/yak/ui/activity/ReportDialog;

    invoke-virtual {v0}, Lcom/yik/yak/ui/activity/ReportDialog;->finish()V

    .line 86
    return-void
.end method
