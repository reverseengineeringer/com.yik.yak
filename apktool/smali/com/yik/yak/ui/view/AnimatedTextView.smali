.class public Lcom/yik/yak/ui/view/AnimatedTextView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "LFJ;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:I

.field private f:Landroid/graphics/Paint;

.field private g:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/16 v0, 0x50

    iput v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->a:I

    .line 26
    const/16 v0, 0xa

    iput v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->b:I

    .line 32
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->c:Ljava/util/LinkedList;

    .line 47
    invoke-direct {p0}, Lcom/yik/yak/ui/view/AnimatedTextView;->b()V

    .line 48
    invoke-direct {p0, p2}, Lcom/yik/yak/ui/view/AnimatedTextView;->a(Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-virtual {p0}, Lcom/yik/yak/ui/view/AnimatedTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 53
    sget-object v2, LzZ;->AnimatedTextView:[I

    invoke-virtual {v1, p1, v2, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 54
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 56
    :goto_0
    if-ge v0, v2, :cond_0

    .line 57
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 59
    packed-switch v3, :pswitch_data_0

    .line 56
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :pswitch_0
    const/16 v4, 0xa

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/yik/yak/ui/view/AnimatedTextView;->setNumber(I)V

    goto :goto_1

    .line 65
    :pswitch_1
    const/high16 v4, -0x1000000

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/yik/yak/ui/view/AnimatedTextView;->setColor(I)V

    goto :goto_1

    .line 69
    :pswitch_2
    const/16 v4, 0x50

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/yik/yak/ui/view/AnimatedTextView;->setTextSize(I)V

    goto :goto_1

    .line 74
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 75
    return-void

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Ljava/lang/String;LFL;Z)V
    .locals 3

    .prologue
    .line 280
    const/4 v0, 0x0

    .line 282
    invoke-direct {p0}, Lcom/yik/yak/ui/view/AnimatedTextView;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 283
    const/4 v0, 0x1

    move v1, v0

    .line 286
    :goto_0
    iget-object v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 288
    iget-object v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LFJ;

    invoke-virtual {v0, v2, p2}, LFJ;->a(ILFL;)V

    .line 286
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 291
    :cond_0
    if-eqz p3, :cond_1

    .line 292
    invoke-virtual {p0}, Lcom/yik/yak/ui/view/AnimatedTextView;->requestLayout()V

    .line 296
    :goto_1
    return-void

    .line 294
    :cond_1
    invoke-virtual {p0}, Lcom/yik/yak/ui/view/AnimatedTextView;->invalidate()V

    goto :goto_1

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 251
    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 254
    iget v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->e:I

    if-gez v0, :cond_0

    .line 255
    invoke-direct {p0}, Lcom/yik/yak/ui/view/AnimatedTextView;->e()Z

    move-result v0

    .line 260
    :goto_0
    invoke-direct {p0}, Lcom/yik/yak/ui/view/AnimatedTextView;->h()I

    move-result v1

    .line 262
    if-eq v2, v1, :cond_3

    move v0, v1

    .line 263
    :goto_1
    if-eq v0, v2, :cond_2

    .line 264
    if-le v0, v2, :cond_1

    .line 265
    invoke-direct {p0}, Lcom/yik/yak/ui/view/AnimatedTextView;->d()Z

    .line 270
    :goto_2
    invoke-direct {p0}, Lcom/yik/yak/ui/view/AnimatedTextView;->h()I

    move-result v0

    goto :goto_1

    .line 257
    :cond_0
    invoke-direct {p0}, Lcom/yik/yak/ui/view/AnimatedTextView;->f()Z

    move-result v0

    goto :goto_0

    .line 267
    :cond_1
    invoke-direct {p0}, Lcom/yik/yak/ui/view/AnimatedTextView;->c()Z

    goto :goto_2

    .line 273
    :cond_2
    const/4 v0, 0x1

    .line 276
    :cond_3
    return v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 78
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->g:Landroid/graphics/Paint;

    .line 79
    iget-object v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 81
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->f:Landroid/graphics/Paint;

    .line 82
    iget-object v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->f:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    iget-object v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 84
    return-void
.end method

.method private c()Z
    .locals 3

    .prologue
    .line 169
    new-instance v1, LFJ;

    invoke-direct {v1, p0}, LFJ;-><init>(Lcom/yik/yak/ui/view/AnimatedTextView;)V

    .line 171
    invoke-direct {p0}, Lcom/yik/yak/ui/view/AnimatedTextView;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LFJ;

    .line 173
    iget-object v2, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->c:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 174
    iget-object v1, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->c:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 179
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private d()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 183
    iget-object v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    const/4 v0, 0x0

    .line 194
    :goto_0
    return v0

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LFJ;

    .line 189
    instance-of v2, v0, LFI;

    if-eqz v2, :cond_1

    .line 190
    iget-object v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LFJ;

    .line 193
    :cond_1
    iget-object v2, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->c:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move v0, v1

    .line 194
    goto :goto_0
.end method

.method private e()Z
    .locals 2

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/yik/yak/ui/view/AnimatedTextView;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->c:Ljava/util/LinkedList;

    new-instance v1, LFI;

    invoke-direct {v1, p0}, LFI;-><init>(Lcom/yik/yak/ui/view/AnimatedTextView;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 200
    const/4 v0, 0x1

    .line 203
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()Z
    .locals 1

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/yik/yak/ui/view/AnimatedTextView;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 209
    const/4 v0, 0x1

    .line 212
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()Z
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, LFI;

    if-eqz v0, :cond_0

    .line 218
    const/4 v0, 0x1

    .line 221
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()I
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 227
    invoke-direct {p0}, Lcom/yik/yak/ui/view/AnimatedTextView;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    add-int/lit8 v0, v0, -0x1

    .line 231
    :cond_0
    return v0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LFJ;

    .line 236
    invoke-virtual {v0}, LFJ;->c()V

    goto :goto_0

    .line 238
    :cond_0
    return-void
.end method

.method private j()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 240
    iput v4, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->d:I

    .line 242
    iget-object v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LFJ;

    invoke-virtual {v0}, LFJ;->a()Ljava/lang/String;

    move-result-object v0

    .line 244
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 245
    iget-object v2, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->g:Landroid/graphics/Paint;

    const-string v3, "4"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 246
    iget v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->d:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->d:I

    .line 248
    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->g:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 155
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 156
    invoke-virtual {p0}, Lcom/yik/yak/ui/view/AnimatedTextView;->getHeight()I

    move-result v0

    div-int/lit8 v3, v0, 0x2

    .line 158
    iget v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->d:I

    iget-object v1, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->c:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    mul-int/2addr v0, v1

    .line 159
    invoke-virtual {p0}, Lcom/yik/yak/ui/view/AnimatedTextView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    .line 161
    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LFJ;

    .line 163
    iget v4, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->d:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v2

    iget-object v5, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v4, v3, v5}, LFJ;->a(Landroid/graphics/Canvas;IILandroid/graphics/Paint;)V

    .line 164
    iget v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->d:I

    add-int/2addr v2, v0

    .line 161
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 166
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .prologue
    .line 143
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 144
    invoke-direct {p0}, Lcom/yik/yak/ui/view/AnimatedTextView;->j()V

    .line 145
    invoke-virtual {p0}, Lcom/yik/yak/ui/view/AnimatedTextView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/yik/yak/ui/view/AnimatedTextView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 146
    invoke-virtual {p0}, Lcom/yik/yak/ui/view/AnimatedTextView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/yik/yak/ui/view/AnimatedTextView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 147
    iget v2, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->d:I

    iget-object v3, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->c:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    mul-int/2addr v2, v3

    .line 148
    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x18

    .line 149
    invoke-virtual {p0}, Lcom/yik/yak/ui/view/AnimatedTextView;->a()I

    move-result v2

    add-int/2addr v1, v2

    .line 150
    int-to-double v2, v1

    const-wide/high16 v4, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/yik/yak/ui/view/AnimatedTextView;->setMeasuredDimension(II)V

    .line 151
    return-void
.end method

.method public setColor(I)V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 129
    invoke-virtual {p0}, Lcom/yik/yak/ui/view/AnimatedTextView;->invalidate()V

    .line 130
    return-void
.end method

.method public setNumber(I)V
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->e:I

    if-le p1, v0, :cond_2

    .line 98
    if-lez p1, :cond_1

    .line 99
    sget-object v0, LFL;->a:LFL;

    .line 113
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/yik/yak/ui/view/AnimatedTextView;->setNumber(ILFL;)V

    .line 114
    :cond_0
    return-void

    .line 101
    :cond_1
    sget-object v0, LFL;->b:LFL;

    goto :goto_0

    .line 103
    :cond_2
    iget v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->e:I

    if-ge p1, v0, :cond_0

    .line 104
    if-ltz p1, :cond_3

    .line 105
    sget-object v0, LFL;->b:LFL;

    goto :goto_0

    .line 107
    :cond_3
    sget-object v0, LFL;->a:LFL;

    goto :goto_0
.end method

.method public setNumber(ILFL;)V
    .locals 2

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/yik/yak/ui/view/AnimatedTextView;->i()V

    .line 118
    iput p1, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->e:I

    .line 119
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-direct {p0, v0}, Lcom/yik/yak/ui/view/AnimatedTextView;->a(Ljava/lang/String;)Z

    move-result v1

    invoke-direct {p0, v0, p2, v1}, Lcom/yik/yak/ui/view/AnimatedTextView;->a(Ljava/lang/String;LFL;Z)V

    .line 121
    return-void
.end method

.method public setTextSize(I)V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->g:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 138
    invoke-virtual {p0}, Lcom/yik/yak/ui/view/AnimatedTextView;->requestLayout()V

    .line 139
    return-void
.end method
