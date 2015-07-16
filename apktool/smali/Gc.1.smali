.class public LGc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/view/PromotedActionButtonView;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/view/PromotedActionButtonView;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, LGc;->a:Lcom/yik/yak/ui/view/PromotedActionButtonView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, LGc;->a:Lcom/yik/yak/ui/view/PromotedActionButtonView;

    invoke-virtual {v0}, Lcom/yik/yak/ui/view/PromotedActionButtonView;->clearAnimation()V

    .line 197
    iget-object v0, p0, LGc;->a:Lcom/yik/yak/ui/view/PromotedActionButtonView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/PromotedActionButtonView;->setVisibility(I)V

    .line 198
    return-void
.end method
