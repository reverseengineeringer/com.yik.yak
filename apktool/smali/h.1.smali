.class Lh;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lg;

.field private b:I


# direct methods
.method public constructor <init>(Lg;)V
    .locals 1

    .prologue
    .line 228
    iput-object p1, p0, Lh;->a:Lg;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 226
    const/4 v0, -0x1

    iput v0, p0, Lh;->b:I

    .line 229
    invoke-virtual {p0}, Lh;->a()V

    .line 230
    return-void
.end method


# virtual methods
.method public a(I)Lm;
    .locals 3

    .prologue
    .line 242
    iget-object v0, p0, Lh;->a:Lg;

    iget-object v0, v0, Lg;->c:Li;

    invoke-virtual {v0}, Li;->l()Ljava/util/ArrayList;

    move-result-object v1

    .line 243
    iget-object v0, p0, Lh;->a:Lg;

    invoke-static {v0}, Lg;->a(Lg;)I

    move-result v0

    add-int/2addr v0, p1

    .line 244
    iget v2, p0, Lh;->b:I

    if-ltz v2, :cond_0

    iget v2, p0, Lh;->b:I

    if-lt v0, v2, :cond_0

    .line 245
    add-int/lit8 v0, v0, 0x1

    .line 247
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm;

    return-object v0
.end method

.method a()V
    .locals 5

    .prologue
    .line 267
    iget-object v0, p0, Lh;->a:Lg;

    iget-object v0, v0, Lg;->c:Li;

    invoke-virtual {v0}, Li;->r()Lm;

    move-result-object v2

    .line 268
    if-eqz v2, :cond_1

    .line 269
    iget-object v0, p0, Lh;->a:Lg;

    iget-object v0, v0, Lg;->c:Li;

    invoke-virtual {v0}, Li;->l()Ljava/util/ArrayList;

    move-result-object v3

    .line 270
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 271
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    .line 272
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm;

    .line 273
    if-ne v0, v2, :cond_0

    .line 274
    iput v1, p0, Lh;->b:I

    .line 280
    :goto_1
    return-void

    .line 271
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 279
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lh;->b:I

    goto :goto_1
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lh;->a:Lg;

    iget-object v0, v0, Lg;->c:Li;

    invoke-virtual {v0}, Li;->l()Ljava/util/ArrayList;

    move-result-object v0

    .line 234
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lh;->a:Lg;

    invoke-static {v1}, Lg;->a(Lg;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 235
    iget v1, p0, Lh;->b:I

    if-gez v1, :cond_0

    .line 238
    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 225
    invoke-virtual {p0, p1}, Lh;->a(I)Lm;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 253
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 257
    if-nez p2, :cond_0

    .line 258
    iget-object v0, p0, Lh;->a:Lg;

    iget-object v0, v0, Lg;->b:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lh;->a:Lg;

    iget v1, v1, Lg;->f:I

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .line 261
    check-cast v0, LA;

    .line 262
    invoke-virtual {p0, p1}, Lh;->a(I)Lm;

    move-result-object v2

    invoke-interface {v0, v2, v3}, LA;->a(Lm;I)V

    .line 263
    return-object v1

    :cond_0
    move-object v1, p2

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 284
    invoke-virtual {p0}, Lh;->a()V

    .line 285
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 286
    return-void
.end method
