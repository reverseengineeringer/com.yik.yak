.class public LGv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;


# direct methods
.method private constructor <init>(Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;)V
    .locals 0

    .prologue
    .line 350
    iput-object p1, p0, LGv;->a:Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;LGs;)V
    .locals 0

    .prologue
    .line 350
    invoke-direct {p0, p1}, LGv;-><init>(Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 353
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LGv;->a:Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;

    invoke-static {v1}, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->a(Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;)LGx;

    move-result-object v1

    invoke-virtual {v1}, LGx;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 354
    iget-object v1, p0, LGv;->a:Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;

    invoke-static {v1}, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->a(Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;)LGx;

    move-result-object v1

    invoke-virtual {v1, v0}, LGx;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_2

    .line 355
    iget-object v1, p0, LGv;->a:Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;

    invoke-static {v1}, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->c(Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 356
    iget-object v1, p0, LGv;->a:Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;

    invoke-static {v1}, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->d(Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;)LGu;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 357
    iget-object v1, p0, LGv;->a:Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;

    invoke-static {v1}, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->d(Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;)LGu;

    move-result-object v1

    invoke-interface {v1, v0}, LGu;->a(I)V

    .line 365
    :cond_0
    :goto_1
    return-void

    .line 360
    :cond_1
    iget-object v1, p0, LGv;->a:Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;

    invoke-static {v1}, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->c(Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_1

    .line 353
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
