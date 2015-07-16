.class LCI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:LCH;


# direct methods
.method constructor <init>(LCH;)V
    .locals 0

    .prologue
    .line 691
    iput-object p1, p0, LCI;->a:LCH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 693
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 694
    sparse-switch p2, :sswitch_data_0

    .line 701
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 697
    :sswitch_0
    iget-object v0, p0, LCI;->a:LCH;

    iget-object v0, v0, LCH;->b:Lcom/yik/yak/ui/activity/VerificationActivity;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/VerificationActivity;->o(Lcom/yik/yak/ui/activity/VerificationActivity;)Z

    move-result v0

    goto :goto_0

    .line 694
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method
