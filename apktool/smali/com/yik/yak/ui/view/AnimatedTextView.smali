.class public Lcom/yik/yak/ui/view/AnimatedTextView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:I

.field private final c:I

.field private d:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "LFd;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:I

.field private g:Landroid/graphics/Paint;

.field private h:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/yik/yak/ui/view/AnimatedTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yik/yak/ui/view/AnimatedTextView;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/16 v0, 0x50

    iput v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->b:I

    .line 28
    const/16 v0, 0xa

    iput v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->c:I

    .line 34
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->d:Ljava/util/LinkedList;

    .line 49
    invoke-direct {p0}, Lcom/yik/yak/ui/view/AnimatedTextView;->b()V

    .line 50
    invoke-direct {p0, p2}, Lcom/yik/yak/ui/view/AnimatedTextView;->a(Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-virtual {p0}, Lcom/yik/yak/ui/view/AnimatedTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 55
    sget-object v2, LzP;->AnimatedTextView:[I

    invoke-virtual {v1, p1, v2, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 56
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 58
    :goto_0
    if-ge v0, v2, :cond_0

    .line 59
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 61
    packed-switch v3, :pswitch_data_0

    .line 58
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :pswitch_0
    const/16 v4, 0xa

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/yik/yak/ui/view/AnimatedTextView;->setNumber(I)V

    goto :goto_1

    .line 67
    :pswitch_1
    const/high16 v4, -0x1000000

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/yik/yak/ui/view/AnimatedTextView;->setColor(I)V

    goto :goto_1

    .line 71
    :pswitch_2
    const/16 v4, 0x50

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/yik/yak/ui/view/AnimatedTextView;->setTextSize(I)V

    goto :goto_1

    .line 76
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    return-void

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Ljava/lang/String;LFf;Z)V
    .locals 3

    .prologue
    .line 282
    const/4 v0, 0x0

    .line 284
    invoke-direct {p0}, Lcom/yik/yak/ui/view/AnimatedTextView;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 285
    const/4 v0, 0x1

    move v1, v0

    .line 288
    :goto_0
    iget-object v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 289
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

    .line 290
    iget-object v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LFd;

    invoke-virtual {v0, v2, p2}, LFd;->a(ILFf;)V

    .line 288
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 293
    :cond_0
    if-eqz p3, :cond_1

    .line 294
    invoke-virtual {p0}, Lcom/yik/yak/ui/view/AnimatedTextView;->requestLayout()V

    .line 298
    :goto_1
    return-void

    .line 296
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
    .line 253
    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 256
    iget v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->f:I

    if-gez v0, :cond_0

    .line 257
    invoke-direct {p0}, Lcom/yik/yak/ui/view/AnimatedTextView;->e()Z

    move-result v0

    .line 262
    :goto_0
    invoke-direct {p0}, Lcom/yik/yak/ui/view/AnimatedTextView;->h()I

    move-result v1

    .line 264
    if-eq v2, v1, :cond_3

    move v0, v1

    .line 265
    :goto_1
    if-eq v0, v2, :cond_2

    .line 266
    if-le v0, v2, :cond_1

    .line 267
    invoke-direct {p0}, Lcom/yik/yak/ui/view/AnimatedTextView;->d()Z

    .line 272
    :goto_2
    invoke-direct {p0}, Lcom/yik/yak/ui/view/AnimatedTextView;->h()I

    move-result v0

    goto :goto_1

    .line 259
    :cond_0
    invoke-direct {p0}, Lcom/yik/yak/ui/view/AnimatedTextView;->f()Z

    move-result v0

    goto :goto_0

    .line 269
    :cond_1
    invoke-direct {p0}, Lcom/yik/yak/ui/view/AnimatedTextView;->c()Z

    goto :goto_2

    .line 275
    :cond_2
    const/4 v0, 0x1

    .line 278
    :cond_3
    return v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 80
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->h:Landroid/graphics/Paint;

    .line 81
    iget-object v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 83
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->g:Landroid/graphics/Paint;

    .line 84
    iget-object v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->g:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    iget-object v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 86
    return-void
.end method

.method private c()Z
    .locals 3

    .prologue
    .line 171
    new-instance v1, LFd;

    invoke-direct {v1, p0}, LFd;-><init>(Lcom/yik/yak/ui/view/AnimatedTextView;)V

    .line 173
    invoke-direct {p0}, Lcom/yik/yak/ui/view/AnimatedTextView;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LFd;

    .line 175
    iget-object v2, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->d:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 176
    iget-object v1, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->d:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 181
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private d()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 185
    iget-object v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    const/4 v0, 0x0

    .line 196
    :goto_0
    return v0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LFd;

    .line 191
    instance-of v2, v0, LFc;

    if-eqz v2, :cond_1

    .line 192
    iget-object v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LFd;

    .line 195
    :cond_1
    iget-object v2, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->d:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move v0, v1

    .line 196
    goto :goto_0
.end method

.method private e()Z
    .locals 2

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/yik/yak/ui/view/AnimatedTextView;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->d:Ljava/util/LinkedList;

    new-instance v1, LFc;

    invoke-direct {v1, p0}, LFc;-><init>(Lcom/yik/yak/ui/view/AnimatedTextView;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 202
    const/4 v0, 0x1

    .line 205
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()Z
    .locals 1

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/yik/yak/ui/view/AnimatedTextView;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 211
    const/4 v0, 0x1

    .line 214
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()Z
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, LFc;

    if-eqz v0, :cond_0

    .line 220
    const/4 v0, 0x1

    .line 223
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()I
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 229
    invoke-direct {p0}, Lcom/yik/yak/ui/view/AnimatedTextView;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    add-int/lit8 v0, v0, -0x1

    .line 233
    :cond_0
    return v0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LFd;

    .line 238
    invoke-virtual {v0}, LFd;->c()V

    goto :goto_0

    .line 240
    :cond_0
    return-void
.end method

.method private j()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 242
    iput v4, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->e:I

    .line 244
    iget-object v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LFd;

    invoke-virtual {v0}, LFd;->a()Ljava/lang/String;

    move-result-object v0

    .line 246
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 247
    iget-object v2, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->h:Landroid/graphics/Paint;

    const-string v3, "4"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 248
    iget v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->e:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->e:I

    .line 250
    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 157
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 158
    invoke-virtual {p0}, Lcom/yik/yak/ui/view/AnimatedTextView;->getHeight()I

    move-result v0

    div-int/lit8 v3, v0, 0x2

    .line 160
    iget v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->e:I

    iget-object v1, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->d:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    mul-int/2addr v0, v1

    .line 161
    invoke-virtual {p0}, Lcom/yik/yak/ui/view/AnimatedTextView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    .line 163
    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LFd;

    .line 165
    iget v4, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->e:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v2

    iget-object v5, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v4, v3, v5}, LFd;->a(Landroid/graphics/Canvas;IILandroid/graphics/Paint;)V

    .line 166
    iget v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->e:I

    add-int/2addr v2, v0

    .line 163
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 168
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .prologue
    .line 145
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 146
    invoke-direct {p0}, Lcom/yik/yak/ui/view/AnimatedTextView;->j()V

    .line 147
    invoke-virtual {p0}, Lcom/yik/yak/ui/view/AnimatedTextView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/yik/yak/ui/view/AnimatedTextView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 148
    invoke-virtual {p0}, Lcom/yik/yak/ui/view/AnimatedTextView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/yik/yak/ui/view/AnimatedTextView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 149
    iget v2, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->e:I

    iget-object v3, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->d:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    mul-int/2addr v2, v3

    .line 150
    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x18

    .line 151
    invoke-virtual {p0}, Lcom/yik/yak/ui/view/AnimatedTextView;->a()I

    move-result v2

    add-int/2addr v1, v2

    .line 152
    int-to-double v2, v1

    const-wide/high16 v4, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/yik/yak/ui/view/AnimatedTextView;->setMeasuredDimension(II)V

    .line 153
    return-void
.end method

.method public setColor(I)V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    invoke-virtual {p0}, Lcom/yik/yak/ui/view/AnimatedTextView;->invalidate()V

    .line 132
    return-void
.end method

.method public setNumber(I)V
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->f:I

    if-le p1, v0, :cond_2

    .line 100
    if-lez p1, :cond_1

    .line 101
    sget-object v0, LFf;->a:LFf;

    .line 115
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/yik/yak/ui/view/AnimatedTextView;->setNumber(ILFf;)V

    .line 116
    :cond_0
    return-void

    .line 103
    :cond_1
    sget-object v0, LFf;->b:LFf;

    goto :goto_0

    .line 105
    :cond_2
    iget v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->f:I

    if-ge p1, v0, :cond_0

    .line 106
    if-ltz p1, :cond_3

    .line 107
    sget-object v0, LFf;->b:LFf;

    goto :goto_0

    .line 109
    :cond_3
    sget-object v0, LFf;->a:LFf;

    goto :goto_0
.end method

.method public setNumber(ILFf;)V
    .locals 2

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/yik/yak/ui/view/AnimatedTextView;->i()V

    .line 120
    iput p1, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->f:I

    .line 121
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-direct {p0, v0}, Lcom/yik/yak/ui/view/AnimatedTextView;->a(Ljava/lang/String;)Z

    move-result v1

    invoke-direct {p0, v0, p2, v1}, Lcom/yik/yak/ui/view/AnimatedTextView;->a(Ljava/lang/String;LFf;Z)V

    .line 123
    return-void
.end method

.method public setTextSize(I)V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/yik/yak/ui/view/AnimatedTextView;->h:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 140
    invoke-virtual {p0}, Lcom/yik/yak/ui/view/AnimatedTextView;->requestLayout()V

    .line 141
    return-void
.end method
