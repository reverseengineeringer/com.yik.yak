.class public Lcom/yik/yak/ui/view/PromotedActionButtonView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field private final a:I

.field private b:Landroid/view/animation/Animation;

.field private c:Landroid/view/animation/Animation;

.field private d:LGf;

.field private e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 22
    const/16 v0, 0x10

    iput v0, p0, Lcom/yik/yak/ui/view/PromotedActionButtonView;->a:I

    .line 28
    sget-object v0, LGf;->a:LGf;

    iput-object v0, p0, Lcom/yik/yak/ui/view/PromotedActionButtonView;->d:LGf;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/16 v0, 0x10

    iput v0, p0, Lcom/yik/yak/ui/view/PromotedActionButtonView;->a:I

    .line 28
    sget-object v0, LGf;->a:LGf;

    iput-object v0, p0, Lcom/yik/yak/ui/view/PromotedActionButtonView;->d:LGf;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    const/16 v0, 0x10

    iput v0, p0, Lcom/yik/yak/ui/view/PromotedActionButtonView;->a:I

    .line 28
    sget-object v0, LGf;->a:LGf;

    iput-object v0, p0, Lcom/yik/yak/ui/view/PromotedActionButtonView;->d:LGf;

    .line 47
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/yik/yak/ui/view/PromotedActionButtonView;->e:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/yik/yak/ui/view/PromotedActionButtonView;->e:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yik/yak/ui/view/PromotedActionButtonView;->e:Ljava/lang/Runnable;

    .line 156
    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/yik/yak/ui/view/PromotedActionButtonView;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/yik/yak/ui/view/PromotedActionButtonView;->e()V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/yik/yak/ui/view/PromotedActionButtonView;->clearAnimation()V

    .line 211
    invoke-direct {p0}, Lcom/yik/yak/ui/view/PromotedActionButtonView;->g()Landroid/view/animation/Animation;

    move-result-object v0

    .line 212
    iput-object p1, p0, Lcom/yik/yak/ui/view/PromotedActionButtonView;->e:Ljava/lang/Runnable;

    .line 214
    new-instance v1, LGd;

    invoke-direct {v1, p0}, LGd;-><init>(Lcom/yik/yak/ui/view/PromotedActionButtonView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 231
    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/view/PromotedActionButtonView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 232
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/yik/yak/ui/view/PromotedActionButtonView;->d:LGf;

    sget-object v1, LGf;->a:LGf;

    if-ne v0, v1, :cond_1

    .line 160
    sget-object v0, LGf;->b:LGf;

    invoke-virtual {v0}, LGf;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/view/PromotedActionButtonView;->setImageResource(I)V

    .line 161
    invoke-direct {p0}, Lcom/yik/yak/ui/view/PromotedActionButtonView;->e()V

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/yik/yak/ui/view/PromotedActionButtonView;->d:LGf;

    sget-object v1, LGf;->c:LGf;

    if-ne v0, v1, :cond_0

    .line 163
    new-instance v0, LGa;

    invoke-direct {v0, p0}, LGa;-><init>(Lcom/yik/yak/ui/view/PromotedActionButtonView;)V

    invoke-direct {p0, v0}, Lcom/yik/yak/ui/view/PromotedActionButtonView;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static synthetic b(Lcom/yik/yak/ui/view/PromotedActionButtonView;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/yik/yak/ui/view/PromotedActionButtonView;->a()V

    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/yik/yak/ui/view/PromotedActionButtonView;->d:LGf;

    sget-object v1, LGf;->a:LGf;

    if-ne v0, v1, :cond_1

    .line 175
    sget-object v0, LGf;->c:LGf;

    invoke-virtual {v0}, LGf;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/view/PromotedActionButtonView;->setImageResource(I)V

    .line 176
    invoke-direct {p0}, Lcom/yik/yak/ui/view/PromotedActionButtonView;->e()V

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/yik/yak/ui/view/PromotedActionButtonView;->d:LGf;

    sget-object v1, LGf;->b:LGf;

    if-ne v0, v1, :cond_0

    .line 178
    new-instance v0, LGb;

    invoke-direct {v0, p0}, LGb;-><init>(Lcom/yik/yak/ui/view/PromotedActionButtonView;)V

    invoke-direct {p0, v0}, Lcom/yik/yak/ui/view/PromotedActionButtonView;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/yik/yak/ui/view/PromotedActionButtonView;->d:LGf;

    sget-object v1, LGf;->a:LGf;

    if-ne v0, v1, :cond_0

    .line 200
    :goto_0
    return-void

    .line 193
    :cond_0
    new-instance v0, LGc;

    invoke-direct {v0, p0}, LGc;-><init>(Lcom/yik/yak/ui/view/PromotedActionButtonView;)V

    invoke-direct {p0, v0}, Lcom/yik/yak/ui/view/PromotedActionButtonView;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/yik/yak/ui/view/PromotedActionButtonView;->clearAnimation()V

    .line 204
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/view/PromotedActionButtonView;->setVisibility(I)V

    .line 205
    invoke-direct {p0}, Lcom/yik/yak/ui/view/PromotedActionButtonView;->f()Landroid/view/animation/Animation;

    move-result-object v0

    .line 206
    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/view/PromotedActionButtonView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 207
    return-void
.end method

.method private f()Landroid/view/animation/Animation;
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/yik/yak/ui/view/PromotedActionButtonView;->c:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/yik/yak/ui/view/PromotedActionButtonView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040011

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/view/PromotedActionButtonView;->c:Landroid/view/animation/Animation;

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/view/PromotedActionButtonView;->c:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private g()Landroid/view/animation/Animation;
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/yik/yak/ui/view/PromotedActionButtonView;->b:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/yik/yak/ui/view/PromotedActionButtonView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040012

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/view/PromotedActionButtonView;->b:Landroid/view/animation/Animation;

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/view/PromotedActionButtonView;->b:Landroid/view/animation/Animation;

    return-object v0
.end method


# virtual methods
.method public a(LGf;)V
    .locals 2

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/yik/yak/ui/view/PromotedActionButtonView;->a()V

    .line 136
    sget-object v0, LGe;->a:[I

    invoke-virtual {p1}, LGf;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 148
    :goto_0
    iput-object p1, p0, Lcom/yik/yak/ui/view/PromotedActionButtonView;->d:LGf;

    .line 149
    return-void

    .line 138
    :pswitch_0
    invoke-direct {p0}, Lcom/yik/yak/ui/view/PromotedActionButtonView;->b()V

    goto :goto_0

    .line 141
    :pswitch_1
    invoke-direct {p0}, Lcom/yik/yak/ui/view/PromotedActionButtonView;->c()V

    goto :goto_0

    .line 144
    :pswitch_2
    invoke-direct {p0}, Lcom/yik/yak/ui/view/PromotedActionButtonView;->d()V

    goto :goto_0

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(ZII)V
    .locals 4

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/yik/yak/ui/view/PromotedActionButtonView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 70
    if-eqz p1, :cond_1

    .line 71
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    if-ne v1, p3, :cond_0

    .line 90
    :goto_0
    return-void

    .line 75
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 v2, 0x1

    aput p3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 76
    new-instance v2, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v2}, Landroid/view/animation/BounceInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 77
    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 78
    new-instance v2, LFY;

    invoke-direct {v2, p0, v0}, LFY;-><init>(Lcom/yik/yak/ui/view/PromotedActionButtonView;Landroid/widget/RelativeLayout$LayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 85
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 87
    :cond_1
    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 88
    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/view/PromotedActionButtonView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public b(ZII)V
    .locals 4

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/yik/yak/ui/view/PromotedActionButtonView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 98
    if-eqz p1, :cond_1

    .line 99
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    if-ne v1, p3, :cond_0

    .line 118
    :goto_0
    return-void

    .line 103
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 v2, 0x1

    aput p3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 104
    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v2}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 105
    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 106
    new-instance v2, LFZ;

    invoke-direct {v2, p0, v0}, LFZ;-><init>(Lcom/yik/yak/ui/view/PromotedActionButtonView;Landroid/widget/RelativeLayout$LayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 113
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 115
    :cond_1
    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 116
    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/view/PromotedActionButtonView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setBottomOffset(IZ)V
    .locals 2

    .prologue
    .line 121
    const/16 v0, 0x10

    invoke-static {v0}, LHi;->a(I)I

    move-result v0

    add-int v1, p1, v0

    .line 122
    invoke-virtual {p0}, Lcom/yik/yak/ui/view/PromotedActionButtonView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 124
    if-eq v1, v0, :cond_0

    .line 125
    if-le v1, v0, :cond_1

    .line 126
    invoke-virtual {p0, p2, v0, v1}, Lcom/yik/yak/ui/view/PromotedActionButtonView;->b(ZII)V

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    invoke-virtual {p0, p2, v0, v1}, Lcom/yik/yak/ui/view/PromotedActionButtonView;->a(ZII)V

    goto :goto_0
.end method
