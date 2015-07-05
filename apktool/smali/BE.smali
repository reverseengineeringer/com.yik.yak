.class LBE;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LBD;


# direct methods
.method constructor <init>(LBD;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, LBE;->a:LBD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, LBE;->a:LBD;

    iget-object v0, v0, LBD;->a:Lcom/yik/yak/ui/activity/ReportDialog;

    invoke-virtual {v0}, Lcom/yik/yak/ui/activity/ReportDialog;->finish()V

    .line 64
    return-void
.end method
