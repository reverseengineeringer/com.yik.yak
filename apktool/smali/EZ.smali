.class public abstract LEZ;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field private a:Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 17
    iput-object p2, p0, LEZ;->a:Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;

    .line 18
    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, LEZ;->a:Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, LEZ;->a:Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;

    invoke-virtual {v0}, Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract a(I)V
.end method

.method public abstract a(Landroid/graphics/drawable/Drawable;)V
.end method

.method public b()Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, LEZ;->a:Lcom/yik/yak/ui/pullrefresh/PullRefreshLayout;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 64
    const/4 v0, -0x3

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, LEZ;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44
    :cond_0
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, LEZ;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_0

    .line 50
    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 52
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, LEZ;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_0

    .line 58
    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 60
    :cond_0
    return-void
.end method
