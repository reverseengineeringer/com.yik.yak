.class public Lcom/yik/yak/ui/view/MultipleStateIconView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:F

.field private c:I

.field private d:I

.field private e:I

.field private f:LFQ;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yik/yak/ui/view/MultipleStateIconView;->a:Z

    .line 16
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/yik/yak/ui/view/MultipleStateIconView;->b:F

    .line 21
    sget-object v0, LFQ;->c:LFQ;

    iput-object v0, p0, Lcom/yik/yak/ui/view/MultipleStateIconView;->f:LFQ;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yik/yak/ui/view/MultipleStateIconView;->a:Z

    .line 16
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/yik/yak/ui/view/MultipleStateIconView;->b:F

    .line 21
    sget-object v0, LFQ;->c:LFQ;

    iput-object v0, p0, Lcom/yik/yak/ui/view/MultipleStateIconView;->f:LFQ;

    .line 33
    invoke-direct {p0, p2}, Lcom/yik/yak/ui/view/MultipleStateIconView;->a(Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yik/yak/ui/view/MultipleStateIconView;->a:Z

    .line 16
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/yik/yak/ui/view/MultipleStateIconView;->b:F

    .line 21
    sget-object v0, LFQ;->c:LFQ;

    iput-object v0, p0, Lcom/yik/yak/ui/view/MultipleStateIconView;->f:LFQ;

    .line 38
    invoke-direct {p0, p2}, Lcom/yik/yak/ui/view/MultipleStateIconView;->a(Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-virtual {p0}, Lcom/yik/yak/ui/view/MultipleStateIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 43
    sget-object v2, LzZ;->MultipleStateIconView:[I

    invoke-virtual {v0, p1, v2, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 44
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    move v0, v1

    .line 46
    :goto_0
    if-ge v0, v3, :cond_0

    .line 47
    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 49
    packed-switch v4, :pswitch_data_0

    .line 46
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :pswitch_0
    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/yik/yak/ui/view/MultipleStateIconView;->c:I

    goto :goto_1

    .line 55
    :pswitch_1
    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Lcom/yik/yak/ui/view/MultipleStateIconView;->b:F

    goto :goto_1

    .line 59
    :pswitch_2
    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/yik/yak/ui/view/MultipleStateIconView;->e:I

    goto :goto_1

    .line 63
    :pswitch_3
    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/yik/yak/ui/view/MultipleStateIconView;->d:I

    goto :goto_1

    .line 68
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    invoke-virtual {p0}, Lcom/yik/yak/ui/view/MultipleStateIconView;->b()V

    .line 70
    return-void

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public a()LFQ;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/yik/yak/ui/view/MultipleStateIconView;->f:LFQ;

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/yik/yak/ui/view/MultipleStateIconView;->f:LFQ;

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/view/MultipleStateIconView;->setIconState(LFQ;)V

    .line 104
    iget-boolean v0, p0, Lcom/yik/yak/ui/view/MultipleStateIconView;->a:Z

    if-eqz v0, :cond_0

    .line 105
    iget v0, p0, Lcom/yik/yak/ui/view/MultipleStateIconView;->b:F

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/view/MultipleStateIconView;->setAlpha(F)V

    .line 109
    :goto_0
    return-void

    .line 107
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/view/MultipleStateIconView;->setAlpha(F)V

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/yik/yak/ui/view/MultipleStateIconView;->a:Z

    return v0
.end method

.method public setDisabled(Z)V
    .locals 0

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/yik/yak/ui/view/MultipleStateIconView;->a:Z

    .line 117
    invoke-virtual {p0}, Lcom/yik/yak/ui/view/MultipleStateIconView;->b()V

    .line 118
    return-void
.end method

.method public setIconState(LFQ;)V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/yik/yak/ui/view/MultipleStateIconView;->f:LFQ;

    if-ne v0, p1, :cond_0

    .line 99
    :goto_0
    return-void

    .line 85
    :cond_0
    sget-object v0, LFP;->a:[I

    invoke-virtual {p1}, LFQ;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 94
    iget v0, p0, Lcom/yik/yak/ui/view/MultipleStateIconView;->c:I

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/view/MultipleStateIconView;->setImageResource(I)V

    .line 98
    :goto_1
    iput-object p1, p0, Lcom/yik/yak/ui/view/MultipleStateIconView;->f:LFQ;

    goto :goto_0

    .line 87
    :pswitch_0
    iget v0, p0, Lcom/yik/yak/ui/view/MultipleStateIconView;->e:I

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/view/MultipleStateIconView;->setImageResource(I)V

    goto :goto_1

    .line 90
    :pswitch_1
    iget v0, p0, Lcom/yik/yak/ui/view/MultipleStateIconView;->d:I

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/view/MultipleStateIconView;->setImageResource(I)V

    goto :goto_1

    .line 85
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
