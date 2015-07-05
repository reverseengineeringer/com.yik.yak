.class public LFs;
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
    .line 163
    iput-object p1, p0, LFs;->a:Lcom/yik/yak/ui/view/PromotedActionButtonView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, LFs;->a:Lcom/yik/yak/ui/view/PromotedActionButtonView;

    sget-object v1, LFx;->b:LFx;

    invoke-virtual {v1}, LFx;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/PromotedActionButtonView;->setImageResource(I)V

    .line 167
    iget-object v0, p0, LFs;->a:Lcom/yik/yak/ui/view/PromotedActionButtonView;

    invoke-static {v0}, Lcom/yik/yak/ui/view/PromotedActionButtonView;->a(Lcom/yik/yak/ui/view/PromotedActionButtonView;)V

    .line 168
    return-void
.end method
