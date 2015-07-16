.class LBP;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LBN;


# direct methods
.method constructor <init>(LBN;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, LBP;->a:LBN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, LBP;->a:LBN;

    iget-object v0, v0, LBN;->d:Lcom/yik/yak/ui/activity/SelectBasecampActivity;

    iget-object v0, v0, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->f:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 361
    return-void
.end method
