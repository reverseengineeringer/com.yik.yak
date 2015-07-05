.class public Lcom/yik/yak/ui/view/photoview/PhotoView;
.super Landroid/widget/ImageView;
.source "SourceFile"

# interfaces
.implements LGa;


# instance fields
.field private final a:LGg;

.field private b:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yik/yak/ui/view/photoview/PhotoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yik/yak/ui/view/photoview/PhotoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 45
    new-instance v0, LGg;

    invoke-direct {v0, p0}, LGg;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/yik/yak/ui/view/photoview/PhotoView;->a:LGg;

    .line 47
    iget-object v0, p0, Lcom/yik/yak/ui/view/photoview/PhotoView;->b:Landroid/widget/ImageView$ScaleType;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/yik/yak/ui/view/photoview/PhotoView;->b:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/view/photoview/PhotoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yik/yak/ui/view/photoview/PhotoView;->b:Landroid/widget/ImageView$ScaleType;

    .line 51
    :cond_0
    return-void
.end method


# virtual methods
.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/yik/yak/ui/view/photoview/PhotoView;->a:LGg;

    invoke-virtual {v0}, LGg;->h()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/yik/yak/ui/view/photoview/PhotoView;->a:LGg;

    invoke-virtual {v0}, LGg;->a()V

    .line 279
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 280
    return-void
.end method

.method public setAllowParentInterceptOnEdge(Z)V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/yik/yak/ui/view/photoview/PhotoView;->a:LGg;

    invoke-virtual {v0, p1}, LGg;->a(Z)V

    .line 184
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 189
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 190
    iget-object v0, p0, Lcom/yik/yak/ui/view/photoview/PhotoView;->a:LGg;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/yik/yak/ui/view/photoview/PhotoView;->a:LGg;

    invoke-virtual {v0}, LGg;->k()V

    .line 193
    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .prologue
    .line 197
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 198
    iget-object v0, p0, Lcom/yik/yak/ui/view/photoview/PhotoView;->a:LGg;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/yik/yak/ui/view/photoview/PhotoView;->a:LGg;

    invoke-virtual {v0}, LGg;->k()V

    .line 201
    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 205
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 206
    iget-object v0, p0, Lcom/yik/yak/ui/view/photoview/PhotoView;->a:LGg;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/yik/yak/ui/view/photoview/PhotoView;->a:LGg;

    invoke-virtual {v0}, LGg;->k()V

    .line 209
    :cond_0
    return-void
.end method

.method public setMaxScale(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/yik/yak/ui/view/photoview/PhotoView;->setMaximumScale(F)V

    .line 145
    return-void
.end method

.method public setMaximumScale(F)V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/yik/yak/ui/view/photoview/PhotoView;->a:LGg;

    invoke-virtual {v0, p1}, LGg;->e(F)V

    .line 155
    return-void
.end method

.method public setMediumScale(F)V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/yik/yak/ui/view/photoview/PhotoView;->a:LGg;

    invoke-virtual {v0, p1}, LGg;->d(F)V

    .line 133
    return-void
.end method

.method public setMidScale(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lcom/yik/yak/ui/view/photoview/PhotoView;->setMediumScale(F)V

    .line 123
    return-void
.end method

.method public setMinScale(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lcom/yik/yak/ui/view/photoview/PhotoView;->setMinimumScale(F)V

    .line 101
    return-void
.end method

.method public setMinimumScale(F)V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/yik/yak/ui/view/photoview/PhotoView;->a:LGg;

    invoke-virtual {v0, p1}, LGg;->c(F)V

    .line 111
    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/yik/yak/ui/view/photoview/PhotoView;->a:LGg;

    invoke-virtual {v0, p1}, LGg;->a(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 274
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/yik/yak/ui/view/photoview/PhotoView;->a:LGg;

    invoke-virtual {v0, p1}, LGg;->a(Landroid/view/View$OnLongClickListener;)V

    .line 219
    return-void
.end method

.method public setOnMatrixChangeListener(LGl;)V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/yik/yak/ui/view/photoview/PhotoView;->a:LGg;

    invoke-virtual {v0, p1}, LGg;->a(LGl;)V

    .line 214
    return-void
.end method

.method public setOnPhotoTapListener(LGm;)V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/yik/yak/ui/view/photoview/PhotoView;->a:LGg;

    invoke-virtual {v0, p1}, LGg;->a(LGm;)V

    .line 229
    return-void
.end method

.method public setOnViewTapListener(LGn;)V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/yik/yak/ui/view/photoview/PhotoView;->a:LGg;

    invoke-virtual {v0, p1}, LGg;->a(LGn;)V

    .line 239
    return-void
.end method

.method public setPhotoViewRotation(F)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/yik/yak/ui/view/photoview/PhotoView;->a:LGg;

    invoke-virtual {v0, p1}, LGg;->a(F)V

    .line 59
    return-void
.end method

.method public setRotationBy(F)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/yik/yak/ui/view/photoview/PhotoView;->a:LGg;

    invoke-virtual {v0, p1}, LGg;->b(F)V

    .line 69
    return-void
.end method

.method public setRotationTo(F)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yik/yak/ui/view/photoview/PhotoView;->a:LGg;

    invoke-virtual {v0, p1}, LGg;->a(F)V

    .line 64
    return-void
.end method

.method public setScale(F)V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/yik/yak/ui/view/photoview/PhotoView;->a:LGg;

    invoke-virtual {v0, p1}, LGg;->f(F)V

    .line 165
    return-void
.end method

.method public setScale(FFFZ)V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/yik/yak/ui/view/photoview/PhotoView;->a:LGg;

    invoke-virtual {v0, p1, p2, p3, p4}, LGg;->a(FFFZ)V

    .line 249
    return-void
.end method

.method public setScale(FZ)V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/yik/yak/ui/view/photoview/PhotoView;->a:LGg;

    invoke-virtual {v0, p1, p2}, LGg;->a(FZ)V

    .line 244
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/yik/yak/ui/view/photoview/PhotoView;->a:LGg;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/yik/yak/ui/view/photoview/PhotoView;->a:LGg;

    invoke-virtual {v0, p1}, LGg;->a(Landroid/widget/ImageView$ScaleType;)V

    .line 179
    :goto_0
    return-void

    .line 177
    :cond_0
    iput-object p1, p0, Lcom/yik/yak/ui/view/photoview/PhotoView;->b:Landroid/widget/ImageView$ScaleType;

    goto :goto_0
.end method

.method public setZoomTransitionDuration(I)V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/yik/yak/ui/view/photoview/PhotoView;->a:LGg;

    invoke-virtual {v0, p1}, LGg;->a(I)V

    .line 264
    return-void
.end method

.method public setZoomable(Z)V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/yik/yak/ui/view/photoview/PhotoView;->a:LGg;

    invoke-virtual {v0, p1}, LGg;->b(Z)V

    .line 254
    return-void
.end method
