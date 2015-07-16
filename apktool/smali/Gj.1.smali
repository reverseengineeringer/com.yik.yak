.class public LGj;
.super LGk;
.source "SourceFile"


# instance fields
.field private m:Landroid/graphics/drawable/AnimationDrawable;

.field private n:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 12
    invoke-direct {p0}, LGk;-><init>()V

    .line 13
    iput-object p1, p0, LGj;->m:Landroid/graphics/drawable/AnimationDrawable;

    .line 14
    iget-object v0, p0, LGj;->m:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, LGj;->k:Landroid/graphics/Bitmap;

    .line 16
    iput v1, p0, LGj;->n:I

    move v0, v1

    .line 17
    :goto_0
    iget-object v1, p0, LGj;->m:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 18
    iget v1, p0, LGj;->n:I

    iget-object v2, p0, LGj;->m:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, LGj;->n:I

    .line 17
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 20
    :cond_0
    return-void
.end method


# virtual methods
.method public a(J)Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 24
    invoke-super {p0, p1, p2}, LGk;->a(J)Z

    move-result v3

    .line 25
    if-eqz v3, :cond_2

    .line 26
    const-wide/16 v4, 0x0

    .line 27
    iget-wide v0, p0, LGj;->l:J

    sub-long v0, p1, v0

    .line 28
    iget v6, p0, LGj;->n:I

    int-to-long v6, v6

    cmp-long v6, v0, v6

    if-lez v6, :cond_1

    .line 29
    iget-object v6, p0, LGj;->m:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/AnimationDrawable;->isOneShot()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 43
    :goto_0
    return v2

    .line 32
    :cond_0
    iget v6, p0, LGj;->n:I

    int-to-long v6, v6

    rem-long/2addr v0, v6

    .line 35
    :cond_1
    :goto_1
    iget-object v6, p0, LGj;->m:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 36
    iget-object v6, p0, LGj;->m:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v6, v2}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    .line 37
    cmp-long v6, v4, v0

    if-lez v6, :cond_3

    .line 38
    iget-object v0, p0, LGj;->m:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, LGj;->k:Landroid/graphics/Bitmap;

    :cond_2
    move v2, v3

    .line 43
    goto :goto_0

    .line 35
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
