.class public Lcom/yik/yak/ui/activity/YakarmaActivity;
.super Lcom/yik/yak/ui/activity/BaseAppCompatActivity;
.source "SourceFile"


# instance fields
.field public final b:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private c:Landroid/widget/ScrollView;

.field private d:Landroid/widget/ScrollView;

.field private e:Landroid/widget/ScrollView;

.field private f:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;-><init>()V

    .line 31
    new-instance v0, LCw;

    invoke-direct {v0, p0}, LCw;-><init>(Lcom/yik/yak/ui/activity/YakarmaActivity;)V

    iput-object v0, p0, Lcom/yik/yak/ui/activity/YakarmaActivity;->b:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    return-void
.end method

.method public static synthetic a(Lcom/yik/yak/ui/activity/YakarmaActivity;)Landroid/widget/ScrollView;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/yik/yak/ui/activity/YakarmaActivity;->e:Landroid/widget/ScrollView;

    return-object v0
.end method

.method private a(Landroid/widget/ImageView;I)Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 107
    :try_start_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 108
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/YakarmaActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 109
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 113
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/YakarmaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 114
    if-nez v0, :cond_0

    move v0, v7

    .line 155
    :goto_0
    return v0

    .line 117
    :cond_0
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 121
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 126
    int-to-float v1, v1

    int-to-float v2, v3

    div-float/2addr v1, v2

    .line 132
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 133
    invoke-virtual {v5, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 136
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 138
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 139
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/YakarmaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 142
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 145
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 146
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 147
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 148
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v8

    .line 149
    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    move v0, v7

    .line 152
    goto :goto_0

    .line 153
    :catch_1
    move-exception v0

    .line 154
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v7

    .line 155
    goto :goto_0
.end method

.method public static synthetic b(Lcom/yik/yak/ui/activity/YakarmaActivity;)Landroid/widget/ScrollView;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/yik/yak/ui/activity/YakarmaActivity;->d:Landroid/widget/ScrollView;

    return-object v0
.end method

.method public static synthetic c(Lcom/yik/yak/ui/activity/YakarmaActivity;)Landroid/widget/ScrollView;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/yik/yak/ui/activity/YakarmaActivity;->c:Landroid/widget/ScrollView;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f030026

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/YakarmaActivity;->setContentView(I)V

    .line 50
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/YakarmaActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 52
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/YakarmaActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/YakarmaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00ec

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 55
    :cond_0
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/YakarmaActivity;->a(Ljava/lang/String;)V

    .line 56
    iput-object p0, p0, Lcom/yik/yak/ui/activity/YakarmaActivity;->f:Landroid/content/Context;

    .line 58
    const v0, 0x7f0d009f

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/YakarmaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020137

    invoke-direct {p0, v0, v1}, Lcom/yik/yak/ui/activity/YakarmaActivity;->a(Landroid/widget/ImageView;I)Z

    .line 59
    const v0, 0x7f0d00a1

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/YakarmaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f02005c

    invoke-direct {p0, v0, v1}, Lcom/yik/yak/ui/activity/YakarmaActivity;->a(Landroid/widget/ImageView;I)Z

    .line 62
    const v0, 0x7f0d009e

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/YakarmaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/YakarmaActivity;->c:Landroid/widget/ScrollView;

    .line 63
    const v0, 0x7f0d00a0

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/YakarmaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/YakarmaActivity;->d:Landroid/widget/ScrollView;

    .line 64
    const v0, 0x7f0d00a2

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/YakarmaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/YakarmaActivity;->e:Landroid/widget/ScrollView;

    .line 65
    iget-object v0, p0, Lcom/yik/yak/ui/activity/YakarmaActivity;->e:Landroid/widget/ScrollView;

    new-instance v1, LCx;

    invoke-direct {v1, p0}, LCx;-><init>(Lcom/yik/yak/ui/activity/YakarmaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 74
    const v0, 0x7f0d00a3

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/YakarmaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 75
    invoke-static {}, LzQ;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    const v0, 0x7f0d00a6

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/YakarmaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 78
    new-instance v1, LCy;

    invoke-direct {v1, p0}, LCy;-><init>(Lcom/yik/yak/ui/activity/YakarmaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    invoke-static {}, LGs;->a()LGs;

    move-result-object v0

    invoke-virtual {v0}, LGs;->l()V

    .line 87
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 91
    invoke-super {p0}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onResume()V

    .line 92
    iget-object v0, p0, Lcom/yik/yak/ui/activity/YakarmaActivity;->e:Landroid/widget/ScrollView;

    new-instance v1, LCz;

    invoke-direct {v1, p0}, LCz;-><init>(Lcom/yik/yak/ui/activity/YakarmaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 103
    return-void
.end method
