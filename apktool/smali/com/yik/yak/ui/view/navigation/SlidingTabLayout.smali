.class public Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"


# instance fields
.field private final a:LGx;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:I

.field private e:I

.field private f:Landroid/support/v4/view/ViewPager;

.field private g:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private h:LGu;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->b:Ljava/util/ArrayList;

    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->setHorizontalScrollBarEnabled(Z)V

    .line 88
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->setFillViewport(Z)V

    .line 90
    const/high16 v0, 0x41c00000    # 24.0f

    invoke-virtual {p0}, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->c:I

    .line 92
    new-instance v0, LGx;

    invoke-direct {v0, p1}, LGx;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->a:LGx;

    .line 93
    iget-object v0, p0, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->a:LGx;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->addView(Landroid/view/View;II)V

    .line 94
    return-void
.end method

.method public static synthetic a(Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;)LGx;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->a:LGx;

    return-object v0
.end method

.method private a()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 211
    iget-object v0, p0, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->f:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/ui/adapter/MainActivityAdapter;

    .line 212
    new-instance v4, LGv;

    const/4 v1, 0x0

    invoke-direct {v4, p0, v1}, LGv;-><init>(Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;LGs;)V

    .line 214
    iget-object v1, p0, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    move v2, v3

    .line 216
    :goto_0
    invoke-virtual {v0}, Lcom/yik/yak/ui/adapter/MainActivityAdapter;->getCount()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v5, 0x7f030078

    iget-object v6, p0, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->a:LGx;

    invoke-virtual {v1, v5, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 219
    const v1, 0x7f0d01c8

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 220
    invoke-virtual {v0, v2}, Lcom/yik/yak/ui/adapter/MainActivityAdapter;->b(I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 222
    const v1, 0x7f0d01c9

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 223
    iget-object v6, p0, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    invoke-virtual {v5, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 229
    invoke-static {}, LCU;->a()[LCU;

    move-result-object v1

    array-length v7, v1

    .line 231
    invoke-virtual {p0}, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, LHs;->a(Landroid/app/Activity;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    div-int/2addr v1, v7

    iput v1, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 232
    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    iget-object v1, p0, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->a:LGx;

    invoke-virtual {v1, v5}, LGx;->addView(Landroid/view/View;)V

    .line 234
    iget-object v1, p0, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->a:LGx;

    invoke-virtual {p0}, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b00e9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, LGx;->setBackgroundColor(I)V

    .line 216
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 236
    :cond_0
    return-void
.end method

.method private a(II)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 248
    iget-object v0, p0, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->a:LGx;

    invoke-virtual {v0}, LGx;->getChildCount()I

    move-result v0

    .line 249
    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    if-lt p1, v0, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->a:LGx;

    invoke-virtual {v0, p1}, LGx;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 254
    if-eqz v3, :cond_0

    move v1, v2

    .line 255
    :goto_1
    iget-object v0, p0, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->a:LGx;

    invoke-virtual {v0}, LGx;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 256
    iget-object v0, p0, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->a:LGx;

    invoke-virtual {v0, v1}, LGx;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v4, 0x7f0d01c8

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 258
    if-ne v1, p1, :cond_2

    .line 259
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 255
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 261
    :cond_2
    const v4, 0x3f333333    # 0.7f

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_2

    .line 265
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/2addr v0, p2

    .line 267
    if-gtz p1, :cond_4

    if-lez p2, :cond_5

    .line 270
    :cond_4
    iget v1, p0, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->c:I

    sub-int/2addr v0, v1

    .line 273
    :cond_5
    invoke-virtual {p0, v0, v2}, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->scrollTo(II)V

    goto :goto_0
.end method

.method public static synthetic a(Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;II)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->a(II)V

    return-void
.end method

.method public static synthetic b(Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->g:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-object v0
.end method

.method public static synthetic c(Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->f:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method public static synthetic d(Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;)LGu;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->h:LGu;

    return-object v0
.end method


# virtual methods
.method public a(I)Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 153
    const/4 v0, 0x0

    .line 155
    iget-object v1, p0, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, p1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 159
    :cond_0
    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 240
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 242
    iget-object v0, p0, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->f:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->f:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->a(II)V

    .line 245
    :cond_0
    return-void
.end method

.method public setCustomTabColorizer(LGw;)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->a:LGx;

    invoke-virtual {v0, p1}, LGx;->a(LGw;)V

    .line 105
    return-void
.end method

.method public setCustomTabView(II)V
    .locals 0

    .prologue
    .line 148
    iput p1, p0, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->d:I

    .line 149
    iput p2, p0, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->e:I

    .line 150
    return-void
.end method

.method public varargs setDividerColors([I)V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->a:LGx;

    invoke-virtual {v0, p1}, LGx;->b([I)V

    .line 123
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->g:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 135
    return-void
.end method

.method public setOnTabReselectedListener(LGu;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->h:LGu;

    .line 139
    return-void
.end method

.method public varargs setSelectedIndicatorColors([I)V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->a:LGx;

    invoke-virtual {v0, p1}, LGx;->a([I)V

    .line 114
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->a:LGx;

    invoke-virtual {v0}, LGx;->removeAllViews()V

    .line 170
    iput-object p1, p0, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->f:Landroid/support/v4/view/ViewPager;

    .line 171
    if-eqz p1, :cond_0

    .line 172
    new-instance v0, LGt;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LGt;-><init>(Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;LGs;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 173
    invoke-direct {p0}, Lcom/yik/yak/ui/view/navigation/SlidingTabLayout;->a()V

    .line 175
    :cond_0
    return-void
.end method
