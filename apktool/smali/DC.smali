.class public LDC;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/dialog/ReportDialog;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/dialog/ReportDialog;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, LDC;->a:Lcom/yik/yak/ui/dialog/ReportDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, LDC;->a:Lcom/yik/yak/ui/dialog/ReportDialog;

    invoke-virtual {v0}, Lcom/yik/yak/ui/dialog/ReportDialog;->finish()V

    .line 68
    return-void
.end method
