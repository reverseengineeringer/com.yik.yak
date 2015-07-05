.class public Lcom/parse/ParseQueryAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/parse/ParseObject;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# static fields
.field private static final VIEW_TYPE_ITEM:I = 0x0

.field private static final VIEW_TYPE_NEXT_PAGE:I = 0x1


# instance fields
.field private autoload:Z

.field private context:Landroid/content/Context;

.field private currentPage:I

.field private dataSetObservers:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/database/DataSetObserver;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private hasNextPage:Z

.field private imageKey:Ljava/lang/String;

.field private imageViewSet:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/parse/ParseImageView;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private itemResourceId:Ljava/lang/Integer;

.field private objectPages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private objects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private objectsPerPage:I

.field private onQueryLoadListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseQueryAdapter$OnQueryLoadListener",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private paginationEnabled:Z

.field private placeholder:Landroid/graphics/drawable/Drawable;

.field private queryFactory:Lcom/parse/ParseQueryAdapter$QueryFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parse/ParseQueryAdapter$QueryFactory",
            "<TT;>;"
        }
    .end annotation
.end field

.field private textKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parse/ParseQueryAdapter$QueryFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/parse/ParseQueryAdapter$QueryFactory",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 234
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/parse/ParseQueryAdapter;-><init>(Landroid/content/Context;Lcom/parse/ParseQueryAdapter$QueryFactory;Ljava/lang/Integer;)V

    .line 235
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/parse/ParseQueryAdapter$QueryFactory;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/parse/ParseQueryAdapter$QueryFactory",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 249
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/parse/ParseQueryAdapter;-><init>(Landroid/content/Context;Lcom/parse/ParseQueryAdapter$QueryFactory;Ljava/lang/Integer;)V

    .line 250
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/parse/ParseQueryAdapter$QueryFactory;Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/parse/ParseQueryAdapter$QueryFactory",
            "<TT;>;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 253
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 100
    const/16 v0, 0x19

    iput v0, p0, Lcom/parse/ParseQueryAdapter;->objectsPerPage:I

    .line 104
    iput-boolean v1, p0, Lcom/parse/ParseQueryAdapter;->paginationEnabled:Z

    .line 112
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseQueryAdapter;->imageViewSet:Ljava/util/WeakHashMap;

    .line 115
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseQueryAdapter;->dataSetObservers:Ljava/util/WeakHashMap;

    .line 120
    iput-boolean v1, p0, Lcom/parse/ParseQueryAdapter;->autoload:Z

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseQueryAdapter;->objects:Ljava/util/List;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseQueryAdapter;->objectPages:Ljava/util/List;

    .line 130
    const/4 v0, 0x0

    iput v0, p0, Lcom/parse/ParseQueryAdapter;->currentPage:I

    .line 134
    iput-boolean v1, p0, Lcom/parse/ParseQueryAdapter;->hasNextPage:Z

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseQueryAdapter;->onQueryLoadListeners:Ljava/util/List;

    .line 254
    iput-object p1, p0, Lcom/parse/ParseQueryAdapter;->context:Landroid/content/Context;

    .line 255
    iput-object p2, p0, Lcom/parse/ParseQueryAdapter;->queryFactory:Lcom/parse/ParseQueryAdapter$QueryFactory;

    .line 256
    iput-object p3, p0, Lcom/parse/ParseQueryAdapter;->itemResourceId:Ljava/lang/Integer;

    .line 257
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/parse/ParseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    invoke-static {p2}, Lcom/parse/ParseObject;->getClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/parse/ParseQueryAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/parse/ParseObject;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 195
    invoke-static {p2}, Lcom/parse/ParseObject;->getClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/parse/ParseQueryAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 196
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 167
    new-instance v0, Lcom/parse/ParseQueryAdapter$1;

    invoke-direct {v0, p2}, Lcom/parse/ParseQueryAdapter$1;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/parse/ParseQueryAdapter;-><init>(Landroid/content/Context;Lcom/parse/ParseQueryAdapter$QueryFactory;)V

    .line 177
    if-nez p2, :cond_0

    .line 178
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You need to specify a className for the ParseQueryAdapter"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 210
    new-instance v0, Lcom/parse/ParseQueryAdapter$2;

    invoke-direct {v0, p2}, Lcom/parse/ParseQueryAdapter$2;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p3}, Lcom/parse/ParseQueryAdapter;-><init>(Landroid/content/Context;Lcom/parse/ParseQueryAdapter$QueryFactory;I)V

    .line 220
    if-nez p2, :cond_0

    .line 221
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You need to specify a className for the ParseQueryAdapter"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/parse/ParseQueryAdapter;Z)Z
    .locals 0

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/parse/ParseQueryAdapter;->hasNextPage:Z

    return p1
.end method

.method static synthetic access$100(Lcom/parse/ParseQueryAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/parse/ParseQueryAdapter;->objectPages:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parse/ParseQueryAdapter;)I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/parse/ParseQueryAdapter;->currentPage:I

    return v0
.end method

.method static synthetic access$202(Lcom/parse/ParseQueryAdapter;I)I
    .locals 0

    .prologue
    .line 74
    iput p1, p0, Lcom/parse/ParseQueryAdapter;->currentPage:I

    return p1
.end method

.method static synthetic access$300(Lcom/parse/ParseQueryAdapter;)I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/parse/ParseQueryAdapter;->objectsPerPage:I

    return v0
.end method

.method static synthetic access$400(Lcom/parse/ParseQueryAdapter;)Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/parse/ParseQueryAdapter;->paginationEnabled:Z

    return v0
.end method

.method static synthetic access$500(Lcom/parse/ParseQueryAdapter;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/parse/ParseQueryAdapter;->syncObjectsWithPages()V

    return-void
.end method

.method static synthetic access$600(Lcom/parse/ParseQueryAdapter;Ljava/util/List;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/parse/ParseQueryAdapter;->notifyOnLoadedListeners(Ljava/util/List;Ljava/lang/Exception;)V

    return-void
.end method

.method private getDefaultView(Landroid/content/Context;)Landroid/view/View;
    .locals 7

    .prologue
    const/16 v3, 0x32

    const/4 v1, 0x4

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 648
    iget-object v0, p0, Lcom/parse/ParseQueryAdapter;->itemResourceId:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/parse/ParseQueryAdapter;->itemResourceId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 666
    :goto_0
    return-object v0

    .line 651
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 652
    invoke-virtual {v0, v6, v1, v6, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 654
    new-instance v1, Lcom/parse/ParseImageView;

    invoke-direct {v1, p1}, Lcom/parse/ParseImageView;-><init>(Landroid/content/Context;)V

    .line 655
    const v2, 0x1020006

    invoke-virtual {v1, v2}, Lcom/parse/ParseImageView;->setId(I)V

    .line 656
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/parse/ParseImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 657
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 659
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 660
    const v2, 0x1020014

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 661
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 663
    invoke-virtual {v1, v6, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 664
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private getPaginationCellRow()I
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lcom/parse/ParseQueryAdapter;->objects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private loadObjects(IZ)V
    .locals 6

    .prologue
    .line 333
    iget-object v0, p0, Lcom/parse/ParseQueryAdapter;->queryFactory:Lcom/parse/ParseQueryAdapter$QueryFactory;

    invoke-interface {v0}, Lcom/parse/ParseQueryAdapter$QueryFactory;->create()Lcom/parse/ParseQuery;

    move-result-object v2

    .line 335
    iget v0, p0, Lcom/parse/ParseQueryAdapter;->objectsPerPage:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/parse/ParseQueryAdapter;->paginationEnabled:Z

    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {p0, p1, v2}, Lcom/parse/ParseQueryAdapter;->setPageOnQuery(ILcom/parse/ParseQuery;)V

    .line 339
    :cond_0
    invoke-direct {p0}, Lcom/parse/ParseQueryAdapter;->notifyOnLoadingListeners()V

    .line 342
    iget-object v0, p0, Lcom/parse/ParseQueryAdapter;->objectPages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 343
    iget-object v0, p0, Lcom/parse/ParseQueryAdapter;->objectPages:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 347
    :cond_1
    new-instance v4, LP;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v4, v0}, LP;-><init>(Ljava/lang/Object;)V

    .line 349
    new-instance v0, Lcom/parse/ParseQueryAdapter$3;

    move-object v1, p0

    move v3, p2

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/parse/ParseQueryAdapter$3;-><init>(Lcom/parse/ParseQueryAdapter;Lcom/parse/ParseQuery;ZLP;I)V

    invoke-virtual {v2, v0}, Lcom/parse/ParseQuery;->findInBackground(Lcom/parse/FindCallback;)V

    .line 397
    return-void
.end method

.method private notifyOnLoadedListeners(Ljava/util/List;Ljava/lang/Exception;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 684
    iget-object v0, p0, Lcom/parse/ParseQueryAdapter;->onQueryLoadListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseQueryAdapter$OnQueryLoadListener;

    .line 685
    invoke-interface {v0, p1, p2}, Lcom/parse/ParseQueryAdapter$OnQueryLoadListener;->onLoaded(Ljava/util/List;Ljava/lang/Exception;)V

    goto :goto_0

    .line 687
    :cond_0
    return-void
.end method

.method private notifyOnLoadingListeners()V
    .locals 2

    .prologue
    .line 678
    iget-object v0, p0, Lcom/parse/ParseQueryAdapter;->onQueryLoadListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseQueryAdapter$OnQueryLoadListener;

    .line 679
    invoke-interface {v0}, Lcom/parse/ParseQueryAdapter$OnQueryLoadListener;->onLoading()V

    goto :goto_0

    .line 681
    :cond_0
    return-void
.end method

.method private shouldShowPaginationCell()Z
    .locals 1

    .prologue
    .line 674
    iget-boolean v0, p0, Lcom/parse/ParseQueryAdapter;->paginationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parse/ParseQueryAdapter;->objects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/parse/ParseQueryAdapter;->hasNextPage:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private syncObjectsWithPages()V
    .locals 3

    .prologue
    .line 404
    iget-object v0, p0, Lcom/parse/ParseQueryAdapter;->objects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 405
    iget-object v0, p0, Lcom/parse/ParseQueryAdapter;->objectPages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 406
    iget-object v2, p0, Lcom/parse/ParseQueryAdapter;->objects:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 408
    :cond_0
    return-void
.end method


# virtual methods
.method public addOnQueryLoadListener(Lcom/parse/ParseQueryAdapter$OnQueryLoadListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseQueryAdapter$OnQueryLoadListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 640
    iget-object v0, p0, Lcom/parse/ParseQueryAdapter;->onQueryLoadListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 641
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/parse/ParseQueryAdapter;->objectPages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 316
    invoke-direct {p0}, Lcom/parse/ParseQueryAdapter;->syncObjectsWithPages()V

    .line 317
    invoke-virtual {p0}, Lcom/parse/ParseQueryAdapter;->notifyDataSetChanged()V

    .line 318
    const/4 v0, 0x0

    iput v0, p0, Lcom/parse/ParseQueryAdapter;->currentPage:I

    .line 319
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/parse/ParseQueryAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 427
    iget-object v0, p0, Lcom/parse/ParseQueryAdapter;->objects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 429
    invoke-direct {p0}, Lcom/parse/ParseQueryAdapter;->shouldShowPaginationCell()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 430
    add-int/lit8 v0, v0, 0x1

    .line 433
    :cond_0
    return v0
.end method

.method public getItem(I)Lcom/parse/ParseObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/parse/ParseQueryAdapter;->getPaginationCellRow()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 272
    const/4 v0, 0x0

    .line 274
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/parse/ParseQueryAdapter;->objects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/parse/ParseQueryAdapter;->getItem(I)Lcom/parse/ParseObject;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 280
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemView(Lcom/parse/ParseObject;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/View;",
            "Landroid/view/ViewGroup;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 461
    if-nez p2, :cond_0

    .line 462
    iget-object v0, p0, Lcom/parse/ParseQueryAdapter;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/parse/ParseQueryAdapter;->getDefaultView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p2

    .line 467
    :cond_0
    const v0, 0x1020014

    :try_start_0
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    if-eqz v0, :cond_1

    .line 474
    iget-object v1, p0, Lcom/parse/ParseQueryAdapter;->textKey:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 475
    invoke-virtual {p1}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 483
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/parse/ParseQueryAdapter;->imageKey:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 486
    const v0, 0x1020006

    :try_start_1
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseImageView;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 492
    if-nez v0, :cond_4

    .line 493
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Your object views must have a ParseImageView whose id attribute is \'android.R.id.icon\' if an imageKey is specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 468
    :catch_0
    move-exception v0

    .line 469
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Your object views must have a TextView whose id attribute is \'android.R.id.text1\'"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 476
    :cond_2
    iget-object v1, p0, Lcom/parse/ParseQueryAdapter;->textKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/parse/ParseObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 477
    iget-object v1, p0, Lcom/parse/ParseQueryAdapter;->textKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/parse/ParseObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 479
    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 487
    :catch_1
    move-exception v0

    .line 488
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Your object views must have a ParseImageView whose id attribute is \'android.R.id.icon\'"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 496
    :cond_4
    iget-object v1, p0, Lcom/parse/ParseQueryAdapter;->imageViewSet:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 497
    iget-object v1, p0, Lcom/parse/ParseQueryAdapter;->imageViewSet:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    :cond_5
    iget-object v1, p0, Lcom/parse/ParseQueryAdapter;->placeholder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/parse/ParseImageView;->setPlaceholder(Landroid/graphics/drawable/Drawable;)V

    .line 500
    iget-object v1, p0, Lcom/parse/ParseQueryAdapter;->imageKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/parse/ParseObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseFile;

    invoke-virtual {v0, v1}, Lcom/parse/ParseImageView;->setParseFile(Lcom/parse/ParseFile;)V

    .line 501
    invoke-virtual {v0}, Lcom/parse/ParseImageView;->loadInBackground()LR;

    .line 504
    :cond_6
    return-object p2
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/parse/ParseQueryAdapter;->getPaginationCellRow()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 286
    const/4 v0, 0x1

    .line 288
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNextPageView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 521
    if-nez p1, :cond_0

    .line 522
    iget-object v0, p0, Lcom/parse/ParseQueryAdapter;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/parse/ParseQueryAdapter;->getDefaultView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    .line 524
    :cond_0
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 525
    const-string v1, "Load more..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 526
    return-object p1
.end method

.method public getObjectsPerPage()I
    .locals 1

    .prologue
    .line 582
    iget v0, p0, Lcom/parse/ParseQueryAdapter;->objectsPerPage:I

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 538
    invoke-virtual {p0, p1}, Lcom/parse/ParseQueryAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 539
    invoke-virtual {p0, p2, p3}, Lcom/parse/ParseQueryAdapter;->getNextPageView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 540
    new-instance v1, Lcom/parse/ParseQueryAdapter$4;

    invoke-direct {v1, p0}, Lcom/parse/ParseQueryAdapter$4;-><init>(Lcom/parse/ParseQueryAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 548
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/parse/ParseQueryAdapter;->getItem(I)Lcom/parse/ParseObject;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/parse/ParseQueryAdapter;->getItemView(Lcom/parse/ParseObject;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x2

    return v0
.end method

.method public loadNextPage()V
    .locals 2

    .prologue
    .line 415
    iget v0, p0, Lcom/parse/ParseQueryAdapter;->currentPage:I

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/parse/ParseQueryAdapter;->loadObjects(IZ)V

    .line 416
    return-void
.end method

.method public loadObjects()V
    .locals 2

    .prologue
    .line 329
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/parse/ParseQueryAdapter;->loadObjects(IZ)V

    .line 330
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 2

    .prologue
    .line 298
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 299
    iget-object v0, p0, Lcom/parse/ParseQueryAdapter;->dataSetObservers:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    iget-boolean v0, p0, Lcom/parse/ParseQueryAdapter;->autoload:Z

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {p0}, Lcom/parse/ParseQueryAdapter;->loadObjects()V

    .line 303
    :cond_0
    return-void
.end method

.method public removeOnQueryLoadListener(Lcom/parse/ParseQueryAdapter$OnQueryLoadListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseQueryAdapter$OnQueryLoadListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 644
    iget-object v0, p0, Lcom/parse/ParseQueryAdapter;->onQueryLoadListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 645
    return-void
.end method

.method public setAutoload(Z)V
    .locals 1

    .prologue
    .line 628
    iget-boolean v0, p0, Lcom/parse/ParseQueryAdapter;->autoload:Z

    if-ne v0, p1, :cond_1

    .line 637
    :cond_0
    :goto_0
    return-void

    .line 633
    :cond_1
    iput-boolean p1, p0, Lcom/parse/ParseQueryAdapter;->autoload:Z

    .line 634
    iget-boolean v0, p0, Lcom/parse/ParseQueryAdapter;->autoload:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parse/ParseQueryAdapter;->dataSetObservers:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parse/ParseQueryAdapter;->objects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 635
    invoke-virtual {p0}, Lcom/parse/ParseQueryAdapter;->loadObjects()V

    goto :goto_0
.end method

.method public setImageKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 574
    iput-object p1, p0, Lcom/parse/ParseQueryAdapter;->imageKey:Ljava/lang/String;

    .line 575
    return-void
.end method

.method public setObjectsPerPage(I)V
    .locals 0

    .prologue
    .line 578
    iput p1, p0, Lcom/parse/ParseQueryAdapter;->objectsPerPage:I

    .line 579
    return-void
.end method

.method protected setPageOnQuery(ILcom/parse/ParseQuery;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/parse/ParseQuery",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 565
    iget v0, p0, Lcom/parse/ParseQueryAdapter;->objectsPerPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Lcom/parse/ParseQuery;->setLimit(I)Lcom/parse/ParseQuery;

    .line 566
    iget v0, p0, Lcom/parse/ParseQueryAdapter;->objectsPerPage:I

    mul-int/2addr v0, p1

    invoke-virtual {p2, v0}, Lcom/parse/ParseQuery;->setSkip(I)Lcom/parse/ParseQuery;

    .line 567
    return-void
.end method

.method public setPaginationEnabled(Z)V
    .locals 0

    .prologue
    .line 592
    iput-boolean p1, p0, Lcom/parse/ParseQueryAdapter;->paginationEnabled:Z

    .line 593
    return-void
.end method

.method public setPlaceholder(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    .line 606
    iget-object v0, p0, Lcom/parse/ParseQueryAdapter;->placeholder:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_1

    .line 618
    :cond_0
    return-void

    .line 609
    :cond_1
    iput-object p1, p0, Lcom/parse/ParseQueryAdapter;->placeholder:Landroid/graphics/drawable/Drawable;

    .line 610
    iget-object v0, p0, Lcom/parse/ParseQueryAdapter;->imageViewSet:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 612
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 613
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseImageView;

    .line 614
    if-eqz v0, :cond_2

    .line 615
    iget-object v2, p0, Lcom/parse/ParseQueryAdapter;->placeholder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Lcom/parse/ParseImageView;->setPlaceholder(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setTextKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 570
    iput-object p1, p0, Lcom/parse/ParseQueryAdapter;->textKey:Ljava/lang/String;

    .line 571
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .prologue
    .line 307
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 308
    iget-object v0, p0, Lcom/parse/ParseQueryAdapter;->dataSetObservers:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    return-void
.end method
