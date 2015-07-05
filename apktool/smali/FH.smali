.class LFH;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic a:LFF;


# direct methods
.method constructor <init>(LFF;)V
    .locals 0

    .prologue
    .line 387
    iput-object p1, p0, LFH;->a:LFF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, LFH;->a:LFF;

    invoke-static {v0}, LFF;->a(LFF;)V

    .line 404
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, LFH;->a:LFF;

    invoke-static {v0}, LFF;->a(LFF;)V

    .line 399
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 394
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 390
    return-void
.end method
