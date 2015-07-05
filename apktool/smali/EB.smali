.class public LEB;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:LEy;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yik/yak/data/models/PeekLocation;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(LEy;)V
    .locals 2

    .prologue
    .line 283
    iput-object p1, p0, LEB;->a:LEy;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LEB;->b:Ljava/util/ArrayList;

    .line 284
    invoke-virtual {p1}, LEy;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, LEB;->c:Landroid/view/LayoutInflater;

    .line 285
    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yik/yak/data/models/PeekLocation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 362
    if-nez p1, :cond_0

    .line 363
    iget-object v0, p0, LEB;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 368
    :goto_0
    invoke-virtual {p0}, LEB;->notifyDataSetChanged()V

    .line 369
    return-void

    .line 365
    :cond_0
    iput-object p1, p0, LEB;->b:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, LEB;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, LEB;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 294
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 304
    invoke-virtual {p0, p1}, LEB;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/PeekLocation;

    .line 308
    invoke-virtual {v0}, Lcom/yik/yak/data/models/PeekLocation;->isSectionHeader()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    const v1, 0x7f030056

    .line 314
    :goto_0
    iget-object v2, p0, LEB;->c:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v1, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 316
    invoke-virtual {v0}, Lcom/yik/yak/data/models/PeekLocation;->isSectionHeader()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 317
    invoke-virtual {v4, v6}, Landroid/view/View;->setClickable(Z)V

    .line 318
    invoke-virtual {v4, v6}, Landroid/view/View;->setLongClickable(Z)V

    .line 319
    const v1, 0x7f0d016e

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 320
    const v2, 0x7f0d016f

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 321
    iget-object v3, v0, Lcom/yik/yak/data/models/PeekLocation;->location:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    iget-object v0, v0, Lcom/yik/yak/data/models/PeekLocation;->location:Ljava/lang/String;

    const-string v1, "My Peeks"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 326
    new-instance v0, LEC;

    invoke-direct {v0, p0}, LEC;-><init>(LEB;)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    :goto_1
    return-object v4

    .line 311
    :cond_0
    const v1, 0x7f030061

    goto :goto_0

    .line 339
    :cond_1
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 342
    :cond_2
    const v1, 0x7f0d0170

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 343
    const v2, 0x7f0d0191

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 344
    const v3, 0x7f0d0192

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 346
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 347
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 349
    iget-boolean v5, v0, Lcom/yik/yak/data/models/PeekLocation;->isDefault:Z

    if-eqz v5, :cond_4

    .line 350
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 355
    :cond_3
    :goto_2
    iget-object v0, v0, Lcom/yik/yak/data/models/PeekLocation;->location:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 351
    :cond_4
    iget-boolean v2, v0, Lcom/yik/yak/data/models/PeekLocation;->isUnread:Z

    if-eqz v2, :cond_3

    .line 352
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method
