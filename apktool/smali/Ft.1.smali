.class public LFt;
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
    .line 178
    iput-object p1, p0, LFt;->a:Lcom/yik/yak/ui/view/PromotedActionButtonView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, LFt;->a:Lcom/yik/yak/ui/view/PromotedActionButtonView;

    sget-object v1, LFx;->c:LFx;

    invoke-virtual {v1}, LFx;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/PromotedActionButtonView;->setImageResource(I)V

    .line 182
    iget-object v0, p0, LFt;->a:Lcom/yik/yak/ui/view/PromotedActionButtonView;

    invoke-static {v0}, Lcom/yik/yak/ui/view/PromotedActionButtonView;->a(Lcom/yik/yak/ui/view/PromotedActionButtonView;)V

    .line 183
    return-void
.end method
