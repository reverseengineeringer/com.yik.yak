.class public LFJ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field protected a:I

.field protected b:Landroid/graphics/Rect;

.field protected c:LFL;

.field private d:I

.field private e:I

.field private f:Lcom/yik/yak/ui/view/AnimatedTextView;

.field private g:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/view/AnimatedTextView;)V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LFJ;-><init>(Lcom/yik/yak/ui/view/AnimatedTextView;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/yik/yak/ui/view/AnimatedTextView;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v1, p0, LFJ;->a:I

    .line 19
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, LFJ;->b:Landroid/graphics/Rect;

    .line 20
    sget-object v0, LFL;->c:LFL;

    iput-object v0, p0, LFJ;->c:LFL;

    .line 21
    iput v1, p0, LFJ;->d:I

    .line 22
    iput v1, p0, LFJ;->e:I

    .line 36
    iput-object p1, p0, LFJ;->f:Lcom/yik/yak/ui/view/AnimatedTextView;

    .line 37
    iput p2, p0, LFJ;->d:I

    .line 38
    iget v0, p0, LFJ;->d:I

    iput v0, p0, LFJ;->e:I

    .line 39
    return-void
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 147
    if-ltz p1, :cond_0

    const/16 v0, 0x9

    if-le p1, v0, :cond_1

    .line 149
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ERROR"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_1
    return-void
.end method

.method private d()V
    .locals 5

    .prologue
    const/16 v2, 0x3e8

    const/4 v1, 0x0

    .line 109
    .line 111
    sget-object v0, LFK;->a:[I

    iget-object v3, p0, LFJ;->c:LFL;

    invoke-virtual {v3}, LFL;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 132
    :goto_0
    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v1, v3, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, LFJ;->b()I

    move-result v4

    mul-int/2addr v4, v0

    aput v4, v3, v1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, LFJ;->g:Landroid/animation/ValueAnimator;

    .line 133
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x12c

    .line 135
    if-le v0, v2, :cond_0

    move v0, v2

    .line 139
    :cond_0
    iget-object v1, p0, LFJ;->g:Landroid/animation/ValueAnimator;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 140
    iget-object v0, p0, LFJ;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 141
    iget-object v0, p0, LFJ;->g:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 142
    iget-object v0, p0, LFJ;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 143
    iget-object v0, p0, LFJ;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 144
    :goto_1
    return-void

    .line 113
    :pswitch_0
    iget v0, p0, LFJ;->e:I

    iget v3, p0, LFJ;->d:I

    if-ge v0, v3, :cond_1

    .line 114
    iget v0, p0, LFJ;->e:I

    add-int/lit8 v0, v0, 0xa

    iget v3, p0, LFJ;->d:I

    sub-int/2addr v0, v3

    goto :goto_0

    .line 116
    :cond_1
    iget v0, p0, LFJ;->e:I

    iget v3, p0, LFJ;->d:I

    sub-int/2addr v0, v3

    .line 118
    goto :goto_0

    .line 120
    :pswitch_1
    iget v0, p0, LFJ;->e:I

    iget v3, p0, LFJ;->d:I

    if-le v0, v3, :cond_2

    .line 121
    iget v0, p0, LFJ;->d:I

    add-int/lit8 v0, v0, 0xa

    iget v3, p0, LFJ;->e:I

    sub-int/2addr v0, v3

    neg-int v0, v0

    goto :goto_0

    .line 123
    :cond_2
    iget v0, p0, LFJ;->d:I

    iget v3, p0, LFJ;->e:I

    sub-int/2addr v0, v3

    neg-int v0, v0

    .line 125
    goto :goto_0

    .line 127
    :pswitch_2
    iget v0, p0, LFJ;->e:I

    iput v0, p0, LFJ;->d:I

    .line 128
    iget-object v0, p0, LFJ;->f:Lcom/yik/yak/ui/view/AnimatedTextView;

    invoke-virtual {v0}, Lcom/yik/yak/ui/view/AnimatedTextView;->invalidate()V

    goto :goto_1

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LFJ;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(ILFL;)V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0, p1}, LFJ;->a(I)V

    .line 95
    iget v0, p0, LFJ;->d:I

    if-ne p1, v0, :cond_0

    .line 102
    :goto_0
    return-void

    .line 99
    :cond_0
    iput p1, p0, LFJ;->e:I

    .line 100
    iput-object p2, p0, LFJ;->c:LFL;

    .line 101
    invoke-direct {p0}, LFJ;->d()V

    goto :goto_0
.end method

.method public a(Landroid/graphics/Canvas;IILandroid/graphics/Paint;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-virtual {p0}, LFJ;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, LFJ;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v3, p0, LFJ;->b:Landroid/graphics/Rect;

    invoke-virtual {p4, v0, v2, v1, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 47
    iget-object v0, p0, LFJ;->b:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 48
    invoke-virtual {p0}, LFJ;->b()I

    move-result v4

    .line 50
    iget v1, p0, LFJ;->d:I

    .line 52
    div-int/lit8 v0, v0, 0x2

    add-int v5, p3, v0

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    int-to-float v3, p2

    iget v6, p0, LFJ;->a:I

    add-int/2addr v6, v5

    int-to-float v6, v6

    invoke-virtual {p1, v0, v3, v6, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 55
    iget-object v0, p0, LFJ;->c:LFL;

    sget-object v3, LFL;->c:LFL;

    if-eq v0, v3, :cond_2

    .line 56
    const/4 v0, 0x1

    .line 59
    :cond_0
    sget-object v3, LFK;->a:[I

    iget-object v6, p0, LFJ;->c:LFL;

    invoke-virtual {v6}, LFL;->ordinal()I

    move-result v6

    aget v3, v3, v6

    packed-switch v3, :pswitch_data_0

    .line 68
    :goto_0
    const/16 v3, 0xa

    if-ne v1, v3, :cond_3

    move v1, v2

    .line 76
    :cond_1
    :goto_1
    iget-object v3, p0, LFJ;->c:LFL;

    sget-object v6, LFL;->a:LFL;

    if-ne v3, v6, :cond_4

    .line 77
    mul-int/lit8 v3, v0, -0x1

    .line 80
    :goto_2
    mul-int/2addr v3, v4

    add-int/2addr v3, v5

    .line 82
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    int-to-float v7, p2

    iget v8, p0, LFJ;->a:I

    add-int/2addr v3, v8

    int-to-float v3, v3

    invoke-virtual {p1, v6, v7, v3, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 83
    add-int/lit8 v0, v0, 0x1

    .line 84
    iget v3, p0, LFJ;->e:I

    if-ne v1, v3, :cond_0

    .line 86
    :cond_2
    return-void

    .line 61
    :pswitch_0
    add-int/lit8 v1, v1, 0x1

    .line 62
    goto :goto_0

    .line 64
    :pswitch_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 70
    :cond_3
    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 71
    const/16 v1, 0x9

    goto :goto_1

    :cond_4
    move v3, v0

    goto :goto_2

    .line 59
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected b()I
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, LFJ;->f:Lcom/yik/yak/ui/view/AnimatedTextView;

    invoke-virtual {v0}, Lcom/yik/yak/ui/view/AnimatedTextView;->getHeight()I

    move-result v0

    return v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, LFJ;->g:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, LFJ;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 157
    :cond_0
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 194
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, LFJ;->g:Landroid/animation/ValueAnimator;

    .line 166
    const/4 v0, 0x0

    iput v0, p0, LFJ;->a:I

    .line 167
    sget-object v0, LFL;->c:LFL;

    iput-object v0, p0, LFJ;->c:LFL;

    .line 168
    iget v0, p0, LFJ;->e:I

    iput v0, p0, LFJ;->d:I

    .line 169
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 199
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 188
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, LFJ;->c:LFL;

    sget-object v1, LFL;->c:LFL;

    if-ne v0, v1, :cond_0

    .line 179
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, LFJ;->a:I

    .line 178
    iget-object v0, p0, LFJ;->f:Lcom/yik/yak/ui/view/AnimatedTextView;

    invoke-virtual {v0}, Lcom/yik/yak/ui/view/AnimatedTextView;->invalidate()V

    goto :goto_0
.end method
