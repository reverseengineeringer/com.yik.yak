.class public Lcom/yik/yak/ui/fragment/DraftsFragment;
.super Lcom/yik/yak/ui/fragment/BaseFragment;
.source "SourceFile"

# interfaces
.implements LDf;


# instance fields
.field protected c:Z

.field public d:Landroid/widget/RelativeLayout;

.field protected e:Landroid/view/animation/TranslateAnimation;

.field protected f:Landroid/view/animation/TranslateAnimation;

.field private g:Landroid/view/View;

.field private h:Landroid/content/Context;

.field private i:Lorg/json/JSONObject;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/EditText;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/EditText;

.field private n:LAD;

.field private o:Z

.field private p:I

.field private q:Lcom/yik/yak/data/models/Yak;

.field private r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yik/yak/data/models/Yak;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/yik/yak/ui/adapter/YakRecyclerViewAdapter;

.field private t:Landroid/support/v7/widget/LinearLayoutManager;

.field private u:Landroid/support/v7/widget/RecyclerView;

.field private v:Landroid/view/animation/Animation$AnimationListener;

.field private w:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/yik/yak/data/models/Yak;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 128
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/BaseFragment;-><init>()V

    .line 66
    iput-boolean v1, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->c:Z

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->n:LAD;

    .line 78
    iput-boolean v1, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->o:Z

    .line 87
    new-instance v0, LEE;

    invoke-direct {v0, p0}, LEE;-><init>(Lcom/yik/yak/ui/fragment/DraftsFragment;)V

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->v:Landroid/view/animation/Animation$AnimationListener;

    .line 104
    new-instance v0, LEF;

    invoke-direct {v0, p0}, LEF;-><init>(Lcom/yik/yak/ui/fragment/DraftsFragment;)V

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->w:Ljava/util/Comparator;

    .line 130
    return-void
.end method

.method public static synthetic a(Lcom/yik/yak/ui/fragment/DraftsFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->g:Landroid/view/View;

    return-object v0
.end method

.method private a()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x15e

    const/16 v4, 0x86

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 220
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->g:Landroid/view/View;

    const v1, 0x7f0d0125

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->d:Landroid/widget/RelativeLayout;

    .line 221
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-static {v4}, LHi;->a(I)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->f:Landroid/view/animation/TranslateAnimation;

    .line 222
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->f:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 223
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->f:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 224
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->f:Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->v:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 226
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-static {v4}, LHi;->a(I)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->e:Landroid/view/animation/TranslateAnimation;

    .line 227
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->e:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 228
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->e:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 230
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->g:Landroid/view/View;

    const v1, 0x7f0d00ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 231
    new-instance v1, LEJ;

    invoke-direct {v1, p0}, LEJ;-><init>(Lcom/yik/yak/ui/fragment/DraftsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->g:Landroid/view/View;

    const v1, 0x7f0d0127

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 240
    new-instance v1, LEK;

    invoke-direct {v1, p0}, LEK;-><init>(Lcom/yik/yak/ui/fragment/DraftsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->g:Landroid/view/View;

    const v1, 0x7f0d0128

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 249
    new-instance v1, LEL;

    invoke-direct {v1, p0}, LEL;-><init>(Lcom/yik/yak/ui/fragment/DraftsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->g:Landroid/view/View;

    const v1, 0x7f0d0124

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, LEM;

    invoke-direct {v1, p0}, LEM;-><init>(Lcom/yik/yak/ui/fragment/DraftsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    return-void
.end method

.method private a(IZ)V
    .locals 5

    .prologue
    .line 471
    if-eqz p2, :cond_0

    .line 472
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    invoke-virtual {v0}, LHa;->n()V

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 478
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "{\"messages\": []}"

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->i:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 483
    new-instance v1, LAv;

    invoke-direct {v1}, LAv;-><init>()V

    .line 485
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Yak;

    .line 488
    :try_start_1
    iget-object v3, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->i:Lorg/json/JSONObject;

    const-string v4, "messages"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 489
    invoke-virtual {v1, v0}, LAv;->b(Lcom/yik/yak/data/models/Yak;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 490
    :catch_0
    move-exception v0

    .line 491
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 495
    :cond_1
    const-string v0, "drafts.json"

    .line 499
    :try_start_2
    iget-object v1, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->h:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 500
    iget-object v1, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->i:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 501
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 506
    :goto_1
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->i:Lorg/json/JSONObject;

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/DraftsFragment;->a(Lorg/json/JSONObject;)V

    .line 507
    :goto_2
    return-void

    .line 502
    :catch_1
    move-exception v0

    .line 503
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 480
    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method private a(Landroid/widget/TextView;Z)V
    .locals 2

    .prologue
    .line 272
    if-eqz p2, :cond_0

    .line 273
    invoke-virtual {p1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 274
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/DraftsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 279
    :goto_0
    return-void

    .line 276
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 277
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/DraftsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private a(Lcom/yik/yak/data/models/Yak;)V
    .locals 3

    .prologue
    .line 462
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->h:Landroid/content/Context;

    const-class v2, Lcom/yik/yak/ui/activity/SendAYak;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 463
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 464
    const-string v1, "content"

    iget-object v2, p1, Lcom/yik/yak/data/models/Yak;->Content:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 465
    const-string v1, "yakkerHandle"

    iget-object v2, p1, Lcom/yik/yak/data/models/Yak;->YakkerHandle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 466
    const-string v1, "showHandle"

    iget-boolean v2, p1, Lcom/yik/yak/data/models/Yak;->ShowHandle:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 467
    const/16 v1, 0x13

    invoke-virtual {p0, v0, v1}, Lcom/yik/yak/ui/fragment/DraftsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 468
    return-void
.end method

.method public static synthetic a(Lcom/yik/yak/ui/fragment/DraftsFragment;IZ)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/yik/yak/ui/fragment/DraftsFragment;->a(IZ)V

    return-void
.end method

.method public static synthetic a(Lcom/yik/yak/ui/fragment/DraftsFragment;Landroid/widget/TextView;Z)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/yik/yak/ui/fragment/DraftsFragment;->a(Landroid/widget/TextView;Z)V

    return-void
.end method

.method public static synthetic a(Lcom/yik/yak/ui/fragment/DraftsFragment;Lcom/yik/yak/data/models/Yak;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/yik/yak/ui/fragment/DraftsFragment;->a(Lcom/yik/yak/data/models/Yak;)V

    return-void
.end method

.method public static synthetic a(Lcom/yik/yak/ui/fragment/DraftsFragment;Z)Z
    .locals 0

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->o:Z

    return p1
.end method

.method public static synthetic b(Lcom/yik/yak/ui/fragment/DraftsFragment;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->l:Landroid/widget/ImageView;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->d:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->f:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 268
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->c:Z

    .line 269
    return-void
.end method

.method public static synthetic c(Lcom/yik/yak/ui/fragment/DraftsFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->m:Landroid/widget/EditText;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 361
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->h:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->t:Landroid/support/v7/widget/LinearLayoutManager;

    .line 362
    new-instance v0, Lcom/yik/yak/ui/adapter/YakRecyclerViewAdapter;

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->h:Landroid/content/Context;

    iget-object v2, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->r:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/yik/yak/ui/adapter/YakRecyclerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->s:Lcom/yik/yak/ui/adapter/YakRecyclerViewAdapter;

    .line 363
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->s:Lcom/yik/yak/ui/adapter/YakRecyclerViewAdapter;

    invoke-virtual {v0, p0}, Lcom/yik/yak/ui/adapter/YakRecyclerViewAdapter;->setOnItemClickListener(LDf;)V

    .line 364
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->u:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->s:Lcom/yik/yak/ui/adapter/YakRecyclerViewAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 365
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->k:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 369
    return-void
.end method

.method public static synthetic d(Lcom/yik/yak/ui/fragment/DraftsFragment;)Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->o:Z

    return v0
.end method

.method public static synthetic e(Lcom/yik/yak/ui/fragment/DraftsFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method private e()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 374
    :try_start_0
    iget-object v1, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->h:Landroid/content/Context;

    const-string v2, "drafts.json"

    invoke-virtual {v1, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 376
    if-eqz v1, :cond_0

    .line 377
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 378
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 379
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 382
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 389
    :catch_0
    move-exception v1

    .line 392
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 393
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "{\"messages\": []}"

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->i:Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 401
    :goto_2
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->i:Lorg/json/JSONObject;

    return-object v0

    .line 385
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    .line 395
    :cond_3
    :try_start_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->i:Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 397
    :catch_2
    move-exception v0

    .line 398
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method public static synthetic f(Lcom/yik/yak/ui/fragment/DraftsFragment;)Lcom/yik/yak/data/models/Yak;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->q:Lcom/yik/yak/data/models/Yak;

    return-object v0
.end method

.method private f()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 405
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    invoke-virtual {v0}, LHa;->m()V

    .line 407
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/DraftsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v3, "input_method"

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 408
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/DraftsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 410
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v3, "200"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->h:Landroid/content/Context;

    const-string v3, "You have not entered a Yak yet"

    invoke-static {v0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v2

    .line 458
    :goto_0
    return v0

    .line 415
    :cond_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 417
    iget-object v3, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->n:LAD;

    invoke-virtual {v3}, LAD;->g()Lcom/yik/yak/data/models/YakkerLocation;

    move-result-object v3

    .line 418
    new-instance v4, Lcom/yik/yak/data/models/Yak;

    invoke-direct {v4}, Lcom/yik/yak/data/models/Yak;-><init>()V

    .line 419
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/yik/yak/data/models/Yak;->ID:Ljava/lang/String;

    .line 420
    iget-object v5, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->k:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/yik/yak/data/models/Yak;->Content:Ljava/lang/String;

    .line 421
    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    iput-wide v6, v4, Lcom/yik/yak/data/models/Yak;->Latitude:D

    .line 422
    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    iput-wide v6, v4, Lcom/yik/yak/data/models/Yak;->Longitude:D

    .line 423
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/yik/yak/data/models/Yak;->TimePosted:Ljava/lang/String;

    .line 424
    iput v2, v4, Lcom/yik/yak/data/models/Yak;->NumberOfLikes:I

    .line 425
    iput v2, v4, Lcom/yik/yak/data/models/Yak;->Type:I

    .line 426
    iput v2, v4, Lcom/yik/yak/data/models/Yak;->Comments:I

    .line 427
    invoke-static {}, LAa;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/yik/yak/data/models/Yak;->YakkerID:Ljava/lang/String;

    .line 428
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->m:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 430
    iget-boolean v3, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->o:Z

    if-eqz v3, :cond_2

    invoke-static {v0}, LHi;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 431
    iput-object v0, v4, Lcom/yik/yak/data/models/Yak;->YakkerHandle:Ljava/lang/String;

    .line 432
    iput-boolean v1, v4, Lcom/yik/yak/data/models/Yak;->ShowHandle:Z

    .line 439
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->i:Lorg/json/JSONObject;

    const-string v2, "messages"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 440
    new-instance v2, LAv;

    invoke-direct {v2}, LAv;-><init>()V

    invoke-virtual {v2, v4}, LAv;->b(Lcom/yik/yak/data/models/Yak;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    :goto_2
    const-string v0, "drafts.json"

    .line 450
    :try_start_1
    iget-object v2, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->h:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 451
    iget-object v2, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->i:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 452
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 456
    :goto_3
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/DraftsFragment;->d()V

    .line 457
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->i:Lorg/json/JSONObject;

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/DraftsFragment;->a(Lorg/json/JSONObject;)V

    move v0, v1

    .line 458
    goto/16 :goto_0

    .line 434
    :cond_2
    const-string v0, ""

    iput-object v0, v4, Lcom/yik/yak/data/models/Yak;->YakkerHandle:Ljava/lang/String;

    .line 435
    iput-boolean v2, v4, Lcom/yik/yak/data/models/Yak;->ShowHandle:Z

    goto :goto_1

    .line 441
    :catch_0
    move-exception v0

    .line 443
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method public static synthetic g(Lcom/yik/yak/ui/fragment/DraftsFragment;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/DraftsFragment;->b()V

    return-void
.end method

.method public static synthetic h(Lcom/yik/yak/ui/fragment/DraftsFragment;)I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->p:I

    return v0
.end method


# virtual methods
.method public a(LDp;LDd;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LDp",
            "<*>;",
            "LDd;",
            "I)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 113
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->r:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    invoke-virtual {p2, p3}, LDd;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Yak;

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->q:Lcom/yik/yak/data/models/Yak;

    .line 117
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->q:Lcom/yik/yak/data/models/Yak;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->d:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->e:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 122
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->g:Landroid/view/View;

    const v1, 0x7f0d0126

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->g:Landroid/view/View;

    const v1, 0x7f0d0124

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->c:Z

    goto :goto_0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 11

    .prologue
    const/4 v6, 0x0

    .line 336
    if-nez p1, :cond_0

    .line 337
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/DraftsFragment;->e()Lorg/json/JSONObject;

    move-result-object p1

    .line 339
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->r:Ljava/util/ArrayList;

    .line 341
    :try_start_0
    const-string v0, "messages"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 342
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    .line 343
    new-instance v10, LAv;

    invoke-direct {v10}, LAv;-><init>()V

    move v7, v6

    .line 345
    :goto_0
    if-ge v7, v9, :cond_1

    .line 346
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/DraftsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v8, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v10, v1}, LAv;->a(Lorg/json/JSONObject;)Lcom/yik/yak/data/models/Yak;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/yik/yak/data/models/Yak;->initializeYak(Landroid/content/Context;Lcom/yik/yak/data/models/Yak;ZZZZ)Lcom/yik/yak/data/models/Yak;

    move-result-object v0

    .line 347
    iget-object v1, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 352
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->g:Landroid/view/View;

    const v1, 0x7f0d0084

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v6

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 353
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->r:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->w:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 354
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/DraftsFragment;->c()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 358
    :goto_2
    return-void

    .line 352
    :cond_2
    const/16 v0, 0x8

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 511
    packed-switch p1, :pswitch_data_0

    .line 519
    :cond_0
    :goto_0
    return-void

    .line 513
    :pswitch_0
    const/16 v0, 0x7d1

    if-ne p2, v0, :cond_0

    .line 514
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    invoke-virtual {v0}, LHa;->o()V

    .line 515
    iget v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->p:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/yik/yak/ui/fragment/DraftsFragment;->a(IZ)V

    goto :goto_0

    .line 511
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 315
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 317
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 318
    iget v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iput v2, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->p:I

    .line 319
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 330
    invoke-super {p0, p1}, Lcom/yik/yak/ui/fragment/BaseFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 321
    :pswitch_0
    iget-object v2, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->r:Ljava/util/ArrayList;

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Yak;

    .line 322
    invoke-direct {p0, v0}, Lcom/yik/yak/ui/fragment/DraftsFragment;->a(Lcom/yik/yak/data/models/Yak;)V

    move v0, v1

    .line 323
    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 325
    goto :goto_0

    .line 327
    :pswitch_2
    iget v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->p:I

    invoke-direct {p0, v0, v1}, Lcom/yik/yak/ui/fragment/DraftsFragment;->a(IZ)V

    move v0, v1

    .line 328
    goto :goto_0

    .line 319
    :pswitch_data_0
    .packed-switch 0x7f0d01e1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2

    .prologue
    .line 304
    invoke-super {p0, p1, p2, p3}, Lcom/yik/yak/ui/fragment/BaseFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 305
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0d0123

    if-ne v0, v1, :cond_0

    .line 306
    const-string v0, "Select Action"

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 307
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/DraftsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 308
    const v1, 0x7f100003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 310
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 283
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 284
    const v0, 0x7f100002

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 285
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 135
    const v0, 0x7f030049

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->g:Landroid/view/View;

    .line 136
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->h:Landroid/content/Context;

    .line 138
    invoke-static {}, LAD;->a()LAD;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->n:LAD;

    .line 140
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->g:Landroid/view/View;

    const v1, 0x7f0d0097

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->m:Landroid/widget/EditText;

    .line 141
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->m:Landroid/widget/EditText;

    invoke-static {}, LAa;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->m:Landroid/widget/EditText;

    new-instance v1, LEG;

    invoke-direct {v1, p0}, LEG;-><init>(Lcom/yik/yak/ui/fragment/DraftsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 156
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->g:Landroid/view/View;

    const v1, 0x7f0d00a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->l:Landroid/widget/ImageView;

    .line 157
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->l:Landroid/widget/ImageView;

    new-instance v1, LEH;

    invoke-direct {v1, p0}, LEH;-><init>(Lcom/yik/yak/ui/fragment/DraftsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->g:Landroid/view/View;

    const v1, 0x7f0d0095

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->k:Landroid/widget/EditText;

    .line 174
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/DraftsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->g:Landroid/view/View;

    const v1, 0x7f0d009f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->j:Landroid/widget/TextView;

    .line 181
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->j:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 182
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->j:Landroid/widget/TextView;

    const-string v1, "200"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    new-instance v0, LEI;

    invoke-direct {v0, p0}, LEI;-><init>(Lcom/yik/yak/ui/fragment/DraftsFragment;)V

    .line 204
    iget-object v1, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->k:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->r:Ljava/util/ArrayList;

    .line 207
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->h:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->t:Landroid/support/v7/widget/LinearLayoutManager;

    .line 208
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->g:Landroid/view/View;

    const v1, 0x7f0d0123

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->u:Landroid/support/v7/widget/RecyclerView;

    .line 209
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->u:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->t:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 211
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/DraftsFragment;->a()V

    .line 213
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/DraftsFragment;->a(Lorg/json/JSONObject;)V

    .line 214
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/DraftsFragment;->setHasOptionsMenu(Z)V

    .line 215
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/DraftsFragment;->g:Landroid/view/View;

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 291
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 298
    invoke-super {p0, p1}, Lcom/yik/yak/ui/fragment/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 293
    :pswitch_0
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/DraftsFragment;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/DraftsFragment;->d()V

    .line 296
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 291
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d01e0
        :pswitch_0
    .end packed-switch
.end method
