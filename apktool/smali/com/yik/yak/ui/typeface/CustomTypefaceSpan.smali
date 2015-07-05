.class public Lcom/yik/yak/ui/typeface/CustomTypefaceSpan;
.super Landroid/text/style/TypefaceSpan;
.source "SourceFile"


# instance fields
.field private final a:Landroid/graphics/Typeface;

.field private b:I


# direct methods
.method public constructor <init>(ILandroid/graphics/Typeface;)V
    .locals 1

    .prologue
    .line 13
    const-string v0, ""

    invoke-direct {p0, v0}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 14
    iput-object p2, p0, Lcom/yik/yak/ui/typeface/CustomTypefaceSpan;->a:Landroid/graphics/Typeface;

    .line 15
    iput p1, p0, Lcom/yik/yak/ui/typeface/CustomTypefaceSpan;->b:I

    .line 16
    return-void
.end method

.method private a(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V
    .locals 2

    .prologue
    .line 30
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    .line 31
    if-nez v0, :cond_2

    .line 32
    const/4 v0, 0x0

    .line 37
    :goto_0
    iget v1, p0, Lcom/yik/yak/ui/typeface/CustomTypefaceSpan;->b:I

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    invoke-virtual {p2}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    .line 40
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 41
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 44
    :cond_0
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 45
    const/high16 v0, -0x41800000    # -0.25f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 48
    :cond_1
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 49
    return-void

    .line 34
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/yik/yak/ui/typeface/CustomTypefaceSpan;->a:Landroid/graphics/Typeface;

    invoke-direct {p0, p1, v0}, Lcom/yik/yak/ui/typeface/CustomTypefaceSpan;->a(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V

    .line 21
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/yik/yak/ui/typeface/CustomTypefaceSpan;->a:Landroid/graphics/Typeface;

    invoke-direct {p0, p1, v0}, Lcom/yik/yak/ui/typeface/CustomTypefaceSpan;->a(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V

    .line 26
    return-void
.end method
