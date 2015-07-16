.class public Landroid/support/v4/graphics/ColorUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MIN_ALPHA_SEARCH_MAX_ITERATIONS:I = 0xa

.field private static final MIN_ALPHA_SEARCH_PRECISION:I = 0xa


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HSLToColor([F)I
    .locals 10

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/16 v8, 0xff

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/high16 v7, 0x437f0000    # 255.0f

    .line 226
    aget v0, p0, v1

    .line 227
    const/4 v2, 0x1

    aget v2, p0, v2

    .line 228
    const/4 v3, 0x2

    aget v3, p0, v3

    .line 230
    mul-float v4, v9, v3

    sub-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float v4, v6, v4

    mul-float/2addr v4, v2

    .line 231
    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v2, v4

    sub-float v5, v3, v2

    .line 232
    const/high16 v2, 0x42700000    # 60.0f

    div-float v2, v0, v2

    rem-float/2addr v2, v9

    sub-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v2, v6, v2

    mul-float v6, v4, v2

    .line 234
    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x3c

    .line 238
    packed-switch v0, :pswitch_data_0

    move v0, v1

    move v2, v1

    move v3, v1

    .line 272
    :goto_0
    invoke-static {v3, v1, v8}, Landroid/support/v4/graphics/ColorUtils;->constrain(III)I

    move-result v3

    .line 273
    invoke-static {v2, v1, v8}, Landroid/support/v4/graphics/ColorUtils;->constrain(III)I

    move-result v2

    .line 274
    invoke-static {v0, v1, v8}, Landroid/support/v4/graphics/ColorUtils;->constrain(III)I

    move-result v0

    .line 276
    invoke-static {v3, v2, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0

    .line 240
    :pswitch_0
    add-float v0, v4, v5

    mul-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 241
    add-float v0, v6, v5

    mul-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 242
    mul-float v0, v7, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    .line 245
    :pswitch_1
    add-float v0, v6, v5

    mul-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 246
    add-float v0, v4, v5

    mul-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 247
    mul-float v0, v7, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    .line 250
    :pswitch_2
    mul-float v0, v7, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 251
    add-float v0, v4, v5

    mul-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 252
    add-float v0, v6, v5

    mul-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    .line 255
    :pswitch_3
    mul-float v0, v7, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 256
    add-float v0, v6, v5

    mul-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 257
    add-float v0, v4, v5

    mul-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    .line 260
    :pswitch_4
    add-float v0, v6, v5

    mul-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 261
    mul-float v0, v7, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 262
    add-float v0, v4, v5

    mul-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    .line 266
    :pswitch_5
    add-float v0, v4, v5

    mul-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 267
    mul-float v0, v7, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 268
    add-float v0, v6, v5

    mul-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto/16 :goto_0

    .line 238
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static RGBToHSL(III[F)V
    .locals 11

    .prologue
    const/high16 v10, 0x43b40000    # 360.0f

    const/high16 v4, 0x437f0000    # 255.0f

    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 162
    int-to-float v0, p0

    div-float/2addr v0, v4

    .line 163
    int-to-float v1, p1

    div-float/2addr v1, v4

    .line 164
    int-to-float v3, p2

    div-float/2addr v3, v4

    .line 166
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 167
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 168
    sub-float v6, v4, v5

    .line 171
    add-float v7, v4, v5

    div-float/2addr v7, v9

    .line 173
    cmpl-float v5, v4, v5

    if-nez v5, :cond_1

    move v1, v2

    move v0, v2

    .line 188
    :goto_0
    const/high16 v3, 0x42700000    # 60.0f

    mul-float/2addr v0, v3

    rem-float/2addr v0, v10

    .line 189
    cmpg-float v3, v0, v2

    if-gez v3, :cond_0

    .line 190
    add-float/2addr v0, v10

    .line 193
    :cond_0
    const/4 v3, 0x0

    invoke-static {v0, v2, v10}, Landroid/support/v4/graphics/ColorUtils;->constrain(FFF)F

    move-result v0

    aput v0, p3, v3

    .line 194
    const/4 v0, 0x1

    invoke-static {v1, v2, v8}, Landroid/support/v4/graphics/ColorUtils;->constrain(FFF)F

    move-result v1

    aput v1, p3, v0

    .line 195
    const/4 v0, 0x2

    invoke-static {v7, v2, v8}, Landroid/support/v4/graphics/ColorUtils;->constrain(FFF)F

    move-result v1

    aput v1, p3, v0

    .line 196
    return-void

    .line 177
    :cond_1
    cmpl-float v5, v4, v0

    if-nez v5, :cond_2

    .line 178
    sub-float v0, v1, v3

    div-float/2addr v0, v6

    const/high16 v1, 0x40c00000    # 6.0f

    rem-float/2addr v0, v1

    .line 185
    :goto_1
    mul-float v1, v9, v7

    sub-float/2addr v1, v8

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float v1, v8, v1

    div-float v1, v6, v1

    goto :goto_0

    .line 179
    :cond_2
    cmpl-float v4, v4, v1

    if-nez v4, :cond_3

    .line 180
    sub-float v0, v3, v0

    div-float/2addr v0, v6

    add-float/2addr v0, v9

    goto :goto_1

    .line 182
    :cond_3
    sub-float/2addr v0, v1

    div-float/2addr v0, v6

    const/high16 v1, 0x40800000    # 4.0f

    add-float/2addr v0, v1

    goto :goto_1
.end method

.method public static calculateContrast(II)D
    .locals 6

    .prologue
    const/16 v1, 0xff

    const-wide v4, 0x3fa999999999999aL    # 0.05

    .line 84
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "background can not be translucent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 89
    invoke-static {p0, p1}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result p0

    .line 92
    :cond_1
    invoke-static {p0}, Landroid/support/v4/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v0

    add-double/2addr v0, v4

    .line 93
    invoke-static {p1}, Landroid/support/v4/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v2

    add-double/2addr v2, v4

    .line 96
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    div-double v0, v4, v0

    return-wide v0
.end method

.method public static calculateLuminance(I)D
    .locals 8

    .prologue
    .line 64
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x406fe00000000000L    # 255.0

    div-double/2addr v0, v2

    .line 65
    const-wide v2, 0x3fa41c8216c61523L    # 0.03928

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    const-wide v2, 0x4029d70a3d70a3d7L    # 12.92

    div-double/2addr v0, v2

    .line 67
    :goto_0
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x406fe00000000000L    # 255.0

    div-double/2addr v2, v4

    .line 68
    const-wide v4, 0x3fa41c8216c61523L    # 0.03928

    cmpg-double v4, v2, v4

    if-gez v4, :cond_1

    const-wide v4, 0x4029d70a3d70a3d7L    # 12.92

    div-double/2addr v2, v4

    .line 70
    :goto_1
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-double v4, v4

    const-wide v6, 0x406fe00000000000L    # 255.0

    div-double/2addr v4, v6

    .line 71
    const-wide v6, 0x3fa41c8216c61523L    # 0.03928

    cmpg-double v6, v4, v6

    if-gez v6, :cond_2

    const-wide v6, 0x4029d70a3d70a3d7L    # 12.92

    div-double/2addr v4, v6

    .line 73
    :goto_2
    const-wide v6, 0x3fcb367a0f9096bcL    # 0.2126

    mul-double/2addr v0, v6

    const-wide v6, 0x3fe6e2eb1c432ca5L    # 0.7152

    mul-double/2addr v2, v6

    add-double/2addr v0, v2

    const-wide v2, 0x3fb27bb2fec56d5dL    # 0.0722

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0

    .line 65
    :cond_0
    const-wide v2, 0x3fac28f5c28f5c29L    # 0.055

    add-double/2addr v0, v2

    const-wide v2, 0x3ff0e147ae147ae1L    # 1.055

    div-double/2addr v0, v2

    const-wide v2, 0x4003333333333333L    # 2.4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    goto :goto_0

    .line 68
    :cond_1
    const-wide v4, 0x3fac28f5c28f5c29L    # 0.055

    add-double/2addr v2, v4

    const-wide v4, 0x3ff0e147ae147ae1L    # 1.055

    div-double/2addr v2, v4

    const-wide v4, 0x4003333333333333L    # 2.4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    goto :goto_1

    .line 71
    :cond_2
    const-wide v6, 0x3fac28f5c28f5c29L    # 0.055

    add-double/2addr v4, v6

    const-wide v6, 0x3ff0e147ae147ae1L    # 1.055

    div-double/2addr v4, v6

    const-wide v6, 0x4003333333333333L    # 2.4

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    goto :goto_2
.end method

.method public static calculateMinimumAlpha(IIF)I
    .locals 9

    .prologue
    const/16 v8, 0xa

    const/4 v2, 0x0

    const/16 v0, 0xff

    .line 111
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "background can not be translucent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    invoke-static {p0, v0}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    .line 117
    invoke-static {v1, p1}, Landroid/support/v4/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v4

    .line 118
    float-to-double v6, p2

    cmpg-double v1, v4, v6

    if-gez v1, :cond_2

    .line 120
    const/4 v0, -0x1

    .line 145
    :cond_1
    return v0

    :cond_2
    move v3, v2

    .line 128
    :goto_0
    if-gt v3, v8, :cond_1

    sub-int v1, v0, v2

    if-le v1, v8, :cond_1

    .line 130
    add-int v1, v2, v0

    div-int/lit8 v1, v1, 0x2

    .line 132
    invoke-static {p0, v1}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    .line 133
    invoke-static {v4, p1}, Landroid/support/v4/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v4

    .line 135
    float-to-double v6, p2

    cmpg-double v4, v4, v6

    if-gez v4, :cond_3

    .line 141
    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    .line 142
    goto :goto_0

    :cond_3
    move v0, v1

    move v1, v2

    .line 138
    goto :goto_1
.end method

.method public static colorToHSL(I[F)V
    .locals 3

    .prologue
    .line 210
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Landroid/support/v4/graphics/ColorUtils;->RGBToHSL(III[F)V

    .line 211
    return-void
.end method

.method private static compositeAlpha(II)I
    .locals 2

    .prologue
    .line 50
    rsub-int v0, p1, 0xff

    rsub-int v1, p0, 0xff

    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0xff

    rsub-int v0, v0, 0xff

    return v0
.end method

.method public static compositeColors(II)I
    .locals 7

    .prologue
    .line 35
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 36
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 37
    invoke-static {v1, v0}, Landroid/support/v4/graphics/ColorUtils;->compositeAlpha(II)I

    move-result v2

    .line 39
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v3, v1, v4, v0, v2}, Landroid/support/v4/graphics/ColorUtils;->compositeComponent(IIIII)I

    move-result v3

    .line 41
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v4, v1, v5, v0, v2}, Landroid/support/v4/graphics/ColorUtils;->compositeComponent(IIIII)I

    move-result v4

    .line 43
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    invoke-static {v5, v1, v6, v0, v2}, Landroid/support/v4/graphics/ColorUtils;->compositeComponent(IIIII)I

    move-result v0

    .line 46
    invoke-static {v2, v3, v4, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method private static compositeComponent(IIIII)I
    .locals 3

    .prologue
    .line 54
    if-nez p4, :cond_0

    const/4 v0, 0x0

    .line 55
    :goto_0
    return v0

    :cond_0
    mul-int/lit16 v0, p0, 0xff

    mul-int/2addr v0, p1

    mul-int v1, p2, p3

    rsub-int v2, p1, 0xff

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    mul-int/lit16 v1, p4, 0xff

    div-int/2addr v0, v1

    goto :goto_0
.end method

.method private static constrain(FFF)F
    .locals 1

    .prologue
    .line 290
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    :goto_0
    return p1

    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method private static constrain(III)I
    .locals 0

    .prologue
    .line 294
    if-ge p0, p1, :cond_0

    :goto_0
    return p1

    :cond_0
    if-le p0, p2, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method public static setAlphaComponent(II)I
    .locals 2

    .prologue
    .line 283
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    .line 284
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "alpha must be between 0 and 255."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_1
    const v0, 0xffffff

    and-int/2addr v0, p0

    shl-int/lit8 v1, p1, 0x18

    or-int/2addr v0, v1

    return v0
.end method
