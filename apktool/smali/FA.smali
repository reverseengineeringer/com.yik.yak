.class public LFA;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, LFA;->a:Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, LFA;->a:Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;

    invoke-static {v0, p1}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->a(Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;F)V

    .line 43
    return-void
.end method
