.class public LCj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LwH;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/activity/SendAYak;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/activity/SendAYak;)V
    .locals 0

    .prologue
    .line 574
    iput-object p1, p0, LCj;->a:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/nispok/snackbar/Snackbar;)V
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, LCj;->a:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/SendAYak;->g(Lcom/yik/yak/ui/activity/SendAYak;)Lcom/yik/yak/ui/view/LinkDetectingEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yik/yak/ui/view/LinkDetectingEditText;->clearComposingText()V

    .line 578
    iget-object v0, p0, LCj;->a:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/SendAYak;->h(Lcom/yik/yak/ui/activity/SendAYak;)V

    .line 579
    return-void
.end method
