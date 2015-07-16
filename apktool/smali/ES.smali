.class public LES;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/yik/yak/data/models/PeekLocation;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/yik/yak/ui/fragment/ManagePeeksFragment;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/fragment/ManagePeeksFragment;Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/yik/yak/data/models/PeekLocation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 259
    iput-object p1, p0, LES;->b:Lcom/yik/yak/ui/fragment/ManagePeeksFragment;

    .line 260
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 256
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LES;->a:Ljava/util/HashMap;

    .line 261
    iput p3, p0, LES;->c:I

    .line 262
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    .line 266
    invoke-virtual {p0, p1}, LES;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/PeekLocation;

    .line 267
    iget-object v2, v0, Lcom/yik/yak/data/models/PeekLocation;->location:Ljava/lang/String;

    .line 270
    if-nez p2, :cond_0

    .line 271
    invoke-virtual {p0}, LES;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "layout_inflater"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 272
    iget v3, p0, LES;->c:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 277
    :cond_0
    const v1, 0x7f0d01a1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 278
    const v3, 0x7f0b0156

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 279
    const v3, 0x7f020164

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 281
    iget-boolean v0, v0, Lcom/yik/yak/data/models/PeekLocation;->isDefault:Z

    if-eqz v0, :cond_1

    .line 282
    const-string v0, "Add a peek using the search icon below."

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    :goto_0
    invoke-virtual {p0}, LES;->notifyDataSetChanged()V

    .line 288
    return-object p2

    .line 284
    :cond_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
