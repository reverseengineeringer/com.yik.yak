.class LwB;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:LwA;


# direct methods
.method constructor <init>(LwA;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, LwB;->a:LwA;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, LwB;->a:LwA;

    invoke-static {v0}, LwA;->a(LwA;)V

    .line 158
    return-void
.end method
