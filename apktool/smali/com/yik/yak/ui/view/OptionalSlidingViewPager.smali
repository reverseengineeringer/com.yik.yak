.class public Lcom/yik/yak/ui/view/OptionalSlidingViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yik/yak/ui/view/OptionalSlidingViewPager;->a:Z

    .line 15
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/yik/yak/ui/view/OptionalSlidingViewPager;->a:Z

    if-eqz v0, :cond_0

    .line 29
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 32
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/yik/yak/ui/view/OptionalSlidingViewPager;->a:Z

    if-eqz v0, :cond_0

    .line 20
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 23
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPagingEnabled(Z)V
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/yik/yak/ui/view/OptionalSlidingViewPager;->a:Z

    .line 37
    return-void
.end method
