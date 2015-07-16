.class public LGt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;

.field private b:I


# direct methods
.method private constructor <init>(Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, LGt;->a:Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;LGs;)V
    .locals 0

    .prologue
    .line 297
    invoke-direct {p0, p1}, LGt;-><init>(Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    .prologue
    .line 323
    iput p1, p0, LGt;->b:I

    .line 325
    iget-object v0, p0, LGt;->a:Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;

    invoke-static {v0}, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->b(Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, LGt;->a:Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;

    invoke-static {v0}, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->b(Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 328
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, LGt;->a:Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;

    invoke-static {v0}, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->a(Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;)LGx;

    move-result-object v0

    invoke-virtual {v0}, LGx;->getChildCount()I

    move-result v0

    .line 303
    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    if-lt p1, v0, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    iget-object v0, p0, LGt;->a:Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;

    invoke-static {v0}, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->a(Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;)LGx;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, LGx;->a(IF)V

    .line 309
    iget-object v0, p0, LGt;->a:Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;

    invoke-static {v0}, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->a(Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;)LGx;

    move-result-object v0

    invoke-virtual {v0, p1}, LGx;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 310
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    .line 313
    :goto_1
    iget-object v1, p0, LGt;->a:Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;

    invoke-static {v1, p1, v0}, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->a(Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;II)V

    .line 315
    iget-object v0, p0, LGt;->a:Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;

    invoke-static {v0}, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->b(Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, LGt;->a:Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;

    invoke-static {v0}, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->b(Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    goto :goto_0

    .line 310
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onPageSelected(I)V
    .locals 2

    .prologue
    .line 332
    iget v0, p0, LGt;->b:I

    if-nez v0, :cond_0

    .line 333
    iget-object v0, p0, LGt;->a:Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;

    invoke-static {v0}, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->a(Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;)LGx;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, LGx;->a(IF)V

    .line 334
    iget-object v0, p0, LGt;->a:Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->a(Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;II)V

    .line 337
    :cond_0
    iget-object v0, p0, LGt;->a:Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;

    invoke-static {v0}, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->b(Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 338
    iget-object v0, p0, LGt;->a:Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;

    invoke-static {v0}, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->b(Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 340
    :cond_1
    return-void
.end method
