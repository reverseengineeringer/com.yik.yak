.class LFG;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:LFF;


# direct methods
.method constructor <init>(LFF;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, LFG;->a:LFF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .prologue
    .line 383
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 384
    iget-object v1, p0, LFG;->a:LFF;

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, LFF;->a(LFF;J)V

    .line 385
    return-void
.end method
