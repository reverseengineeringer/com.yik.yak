.class public LBv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/activity/PinCodeDialog;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/activity/PinCodeDialog;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, LBv;->a:Lcom/yik/yak/ui/activity/PinCodeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, LBv;->a:Lcom/yik/yak/ui/activity/PinCodeDialog;

    const/16 v1, 0x1774

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/activity/PinCodeDialog;->setResult(I)V

    .line 112
    iget-object v0, p0, LBv;->a:Lcom/yik/yak/ui/activity/PinCodeDialog;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/PinCodeDialog;->c(Lcom/yik/yak/ui/activity/PinCodeDialog;)V

    .line 113
    return-void
.end method
