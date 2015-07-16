.class public Lcom/yik/yak/ui/view/VoteArrowView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Z

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yik/yak/ui/view/VoteArrowView;->a:Z

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yik/yak/ui/view/VoteArrowView;->b:Z

    .line 30
    invoke-direct {p0, p2}, Lcom/yik/yak/ui/view/VoteArrowView;->a(Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/yik/yak/ui/view/VoteArrowView;->a:Z

    if-eqz v0, :cond_1

    .line 77
    iget-boolean v0, p0, Lcom/yik/yak/ui/view/VoteArrowView;->b:Z

    if-eqz v0, :cond_0

    .line 78
    iget v0, p0, Lcom/yik/yak/ui/view/VoteArrowView;->d:I

    .line 86
    :goto_0
    invoke-virtual {p0}, Lcom/yik/yak/ui/view/VoteArrowView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/view/VoteArrowView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    return-void

    .line 80
    :cond_0
    iget v0, p0, Lcom/yik/yak/ui/view/VoteArrowView;->e:I

    goto :goto_0

    .line 83
    :cond_1
    iget v0, p0, Lcom/yik/yak/ui/view/VoteArrowView;->c:I

    goto :goto_0
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-virtual {p0}, Lcom/yik/yak/ui/view/VoteArrowView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 35
    sget-object v2, LzZ;->VoteArrowView:[I

    invoke-virtual {v0, p1, v2, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 36
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    move v0, v1

    .line 38
    :goto_0
    if-ge v0, v3, :cond_0

    .line 39
    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 41
    packed-switch v4, :pswitch_data_0

    .line 38
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    :pswitch_0
    iget-boolean v5, p0, Lcom/yik/yak/ui/view/VoteArrowView;->a:Z

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/yik/yak/ui/view/VoteArrowView;->a:Z

    goto :goto_1

    .line 47
    :pswitch_1
    iget-boolean v5, p0, Lcom/yik/yak/ui/view/VoteArrowView;->b:Z

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/yik/yak/ui/view/VoteArrowView;->b:Z

    goto :goto_1

    .line 51
    :pswitch_2
    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/yik/yak/ui/view/VoteArrowView;->c:I

    goto :goto_1

    .line 55
    :pswitch_3
    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/yik/yak/ui/view/VoteArrowView;->d:I

    goto :goto_1

    .line 59
    :pswitch_4
    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/yik/yak/ui/view/VoteArrowView;->e:I

    goto :goto_1

    .line 64
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 65
    invoke-direct {p0}, Lcom/yik/yak/ui/view/VoteArrowView;->a()V

    .line 66
    return-void

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/yik/yak/ui/view/VoteArrowView;->a:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/yik/yak/ui/view/VoteArrowView;->b:Z

    return v0
.end method

.method public setEnabled(Z)V
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/yik/yak/ui/view/VoteArrowView;->a:Z

    if-eq v0, p1, :cond_0

    .line 99
    iput-boolean p1, p0, Lcom/yik/yak/ui/view/VoteArrowView;->a:Z

    .line 100
    invoke-direct {p0}, Lcom/yik/yak/ui/view/VoteArrowView;->a()V

    .line 102
    :cond_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/yik/yak/ui/view/VoteArrowView;->b:Z

    if-eq v0, p1, :cond_0

    .line 110
    iput-boolean p1, p0, Lcom/yik/yak/ui/view/VoteArrowView;->b:Z

    .line 111
    invoke-direct {p0}, Lcom/yik/yak/ui/view/VoteArrowView;->a()V

    .line 113
    :cond_0
    return-void
.end method
