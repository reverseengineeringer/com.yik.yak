.class public LGD;
.super LGB;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x5
.end annotation


# instance fields
.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1}, LGB;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, LGD;->f:I

    .line 30
    const/4 v0, 0x0

    iput v0, p0, LGD;->g:I

    .line 34
    return-void
.end method


# virtual methods
.method a(Landroid/view/MotionEvent;)F
    .locals 1

    .prologue
    .line 39
    :try_start_0
    iget v0, p0, LGD;->g:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 41
    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    goto :goto_0
.end method

.method b(Landroid/view/MotionEvent;)F
    .locals 1

    .prologue
    .line 48
    :try_start_0
    iget v0, p0, LGD;->g:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 50
    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    goto :goto_0
.end method

.method public c(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 56
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 57
    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 82
    :cond_0
    :goto_0
    :pswitch_0
    iget v0, p0, LGD;->f:I

    if-eq v0, v4, :cond_1

    iget v1, p0, LGD;->f:I

    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    iput v0, p0, LGD;->g:I

    .line 85
    invoke-super {p0, p1}, LGB;->c(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 59
    :pswitch_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, LGD;->f:I

    goto :goto_0

    .line 63
    :pswitch_2
    iput v4, p0, LGD;->f:I

    goto :goto_0

    .line 69
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-static {v0}, LGA;->a(I)I

    move-result v0

    .line 70
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 71
    iget v3, p0, LGD;->f:I

    if-ne v2, v3, :cond_0

    .line 74
    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 75
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, LGD;->f:I

    .line 76
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, p0, LGD;->b:F

    .line 77
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, LGD;->c:F

    goto :goto_0

    :cond_2
    move v0, v1

    .line 74
    goto :goto_1

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
