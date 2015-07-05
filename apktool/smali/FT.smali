.class public LFT;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LFY;


# instance fields
.field protected a:LGf;

.field b:F

.field c:F

.field final d:F

.field final e:F

.field private f:Landroid/view/VelocityTracker;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, LFT;->e:F

    .line 43
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, LFT;->d:F

    .line 44
    return-void
.end method


# virtual methods
.method a(Landroid/view/MotionEvent;)F
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    return v0
.end method

.method public a(LGf;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, LFT;->a:LGf;

    .line 37
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method b(Landroid/view/MotionEvent;)F
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    return v0
.end method

.method public c(Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 63
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 141
    :cond_0
    :goto_0
    return v1

    .line 65
    :pswitch_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, LFT;->f:Landroid/view/VelocityTracker;

    .line 66
    iget-object v2, p0, LFT;->f:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_1

    .line 67
    iget-object v2, p0, LFT;->f:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 69
    :cond_1
    invoke-virtual {p0, p1}, LFT;->a(Landroid/view/MotionEvent;)F

    move-result v2

    iput v2, p0, LFT;->b:F

    .line 73
    invoke-virtual {p0, p1}, LFT;->b(Landroid/view/MotionEvent;)F

    move-result v2

    iput v2, p0, LFT;->c:F

    .line 74
    iput-boolean v0, p0, LFT;->g:Z

    goto :goto_0

    .line 79
    :pswitch_1
    invoke-virtual {p0, p1}, LFT;->a(Landroid/view/MotionEvent;)F

    move-result v2

    .line 80
    invoke-virtual {p0, p1}, LFT;->b(Landroid/view/MotionEvent;)F

    move-result v3

    .line 81
    iget v4, p0, LFT;->b:F

    sub-float v4, v2, v4

    iget v5, p0, LFT;->c:F

    sub-float v5, v3, v5

    .line 83
    iget-boolean v6, p0, LFT;->g:Z

    if-nez v6, :cond_3

    .line 86
    mul-float v6, v4, v4

    mul-float v7, v5, v5

    add-float/2addr v6, v7

    invoke-static {v6}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v6

    iget v7, p0, LFT;->d:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_2

    move v0, v1

    :cond_2
    iput-boolean v0, p0, LFT;->g:Z

    .line 89
    :cond_3
    iget-boolean v0, p0, LFT;->g:Z

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, LFT;->a:LGf;

    invoke-interface {v0, v4, v5}, LGf;->a(FF)V

    .line 91
    iput v2, p0, LFT;->b:F

    .line 92
    iput v3, p0, LFT;->c:F

    .line 94
    iget-object v0, p0, LFT;->f:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, LFT;->f:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 103
    :pswitch_2
    iget-object v0, p0, LFT;->f:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, LFT;->f:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 105
    iput-object v6, p0, LFT;->f:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 111
    :pswitch_3
    iget-boolean v0, p0, LFT;->g:Z

    if-eqz v0, :cond_4

    .line 112
    iget-object v0, p0, LFT;->f:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_4

    .line 113
    invoke-virtual {p0, p1}, LFT;->a(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, LFT;->b:F

    .line 114
    invoke-virtual {p0, p1}, LFT;->b(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, LFT;->c:F

    .line 117
    iget-object v0, p0, LFT;->f:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 118
    iget-object v0, p0, LFT;->f:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 120
    iget-object v0, p0, LFT;->f:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    iget-object v2, p0, LFT;->f:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    .line 125
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget v4, p0, LFT;->e:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_4

    .line 126
    iget-object v3, p0, LFT;->a:LGf;

    iget v4, p0, LFT;->b:F

    iget v5, p0, LFT;->c:F

    neg-float v0, v0

    neg-float v2, v2

    invoke-interface {v3, v4, v5, v0, v2}, LGf;->a(FFFF)V

    .line 133
    :cond_4
    iget-object v0, p0, LFT;->f:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, LFT;->f:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 135
    iput-object v6, p0, LFT;->f:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
