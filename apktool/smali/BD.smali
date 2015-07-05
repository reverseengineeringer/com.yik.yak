.class public LBD;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/activity/ReportDialog;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/activity/ReportDialog;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, LBD;->a:Lcom/yik/yak/ui/activity/ReportDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 59
    iget-object v0, p0, LBD;->a:Lcom/yik/yak/ui/activity/ReportDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/activity/ReportDialog;->setResult(I)V

    .line 60
    new-instance v0, LBE;

    invoke-direct {v0, p0}, LBE;-><init>(LBD;)V

    .line 66
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 67
    return-void
.end method
