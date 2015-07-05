.class public LFc;
.super LFd;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/view/AnimatedTextView;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, LFd;-><init>(Lcom/yik/yak/ui/view/AnimatedTextView;)V

    .line 14
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    const-string v0, "-"

    return-object v0
.end method

.method public a(Landroid/graphics/Canvas;IILandroid/graphics/Paint;)V
    .locals 4

    .prologue
    .line 26
    invoke-virtual {p0}, LFc;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, LFc;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, LFc;->b:Landroid/graphics/Rect;

    invoke-virtual {p4, v0, v1, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 27
    invoke-virtual {p0}, LFc;->b()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p3

    .line 28
    invoke-virtual {p0}, LFc;->a()Ljava/lang/String;

    move-result-object v1

    int-to-float v2, p2

    iget v3, p0, LFc;->a:I

    add-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {p1, v1, v2, v0, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 29
    return-void
.end method
