.class Lui;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Luk;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Luk;

    invoke-direct {v0}, Luk;-><init>()V

    iput-object v0, p0, Lui;->a:Luk;

    .line 109
    return-void
.end method

.method private a(Lul;Landroid/view/View;I)Landroid/view/View;
    .locals 3

    .prologue
    .line 176
    iget-object v0, p0, Lui;->a:Luk;

    invoke-virtual {v0, p3}, Luk;->a(I)I

    move-result v0

    .line 177
    invoke-direct {p0, p1, p2}, Lui;->a(Lul;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 178
    iget-object v1, p0, Lui;->a:Luk;

    invoke-virtual {v1, p3}, Luk;->b(I)V

    .line 179
    iget v1, p1, Lul;->c:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p1, Lul;->c:I

    if-ne v1, v0, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-object p2

    .line 184
    :cond_1
    iget v0, p1, Lul;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 185
    check-cast p2, Landroid/view/ViewGroup;

    .line 186
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 187
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_3

    .line 188
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 189
    invoke-direct {p0, p1, v0, p3}, Lui;->a(Lul;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 190
    if-eqz v0, :cond_2

    move-object p2, v0

    .line 191
    goto :goto_0

    .line 187
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 196
    :cond_3
    const/4 p2, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 226
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 228
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    const/4 v0, 0x1

    .line 233
    :goto_1
    return v0

    .line 232
    :cond_0
    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 233
    const/4 v0, 0x0

    goto :goto_1

    .line 236
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lul;Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 200
    iget-object v1, p1, Lul;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lul;->b:Ljava/lang/String;

    .line 201
    invoke-static {p2, v1}, Lui;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 222
    :cond_0
    :goto_0
    return v0

    .line 205
    :cond_1
    const/4 v1, -0x1

    iget v2, p1, Lul;->d:I

    if-eq v1, v2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v1

    iget v2, p1, Lul;->d:I

    if-ne v1, v2, :cond_0

    .line 209
    :cond_2
    iget-object v1, p1, Lul;->e:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lul;->e:Ljava/lang/String;

    .line 210
    invoke-virtual {p2}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    :cond_3
    iget-object v1, p1, Lul;->f:Ljava/lang/String;

    .line 215
    iget-object v2, p1, Lul;->f:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 216
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 217
    if-eqz v2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(Landroid/view/View;Ljava/util/List;Luj;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Lul;",
            ">;",
            "Luj;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 137
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    invoke-interface {p3, p1}, Luj;->a(Landroid/view/View;)V

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lui;->a:Luk;

    invoke-virtual {v0}, Luk;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    check-cast p1, Landroid/view/ViewGroup;

    .line 155
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lul;

    .line 156
    const/4 v2, 0x1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p2, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 158
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 159
    iget-object v4, p0, Lui;->a:Luk;

    invoke-virtual {v4}, Luk;->b()I

    move-result v4

    .line 160
    :goto_1
    if-ge v1, v3, :cond_3

    .line 161
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 162
    invoke-direct {p0, v0, v5, v4}, Lui;->a(Lul;Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 163
    if-eqz v5, :cond_2

    .line 164
    invoke-direct {p0, v5, v2, p3}, Lui;->b(Landroid/view/View;Ljava/util/List;Luj;)V

    .line 166
    :cond_2
    iget v5, v0, Lul;->c:I

    if-ltz v5, :cond_4

    iget-object v5, p0, Lui;->a:Luk;

    invoke-virtual {v5, v4}, Luk;->a(I)I

    move-result v5

    iget v6, v0, Lul;->c:I

    if-le v5, v6, :cond_4

    .line 170
    :cond_3
    iget-object v0, p0, Lui;->a:Luk;

    invoke-virtual {v0}, Luk;->c()V

    goto :goto_0

    .line 160
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/view/View;Ljava/util/List;Luj;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Lul;",
            ">;",
            "Luj;",
            ")V"
        }
    .end annotation

    .prologue
    .line 112
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget-object v0, p0, Lui;->a:Luk;

    invoke-virtual {v0}, Luk;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lul;

    .line 122
    const/4 v1, 0x1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p2, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 124
    iget-object v2, p0, Lui;->a:Luk;

    invoke-virtual {v2}, Luk;->b()I

    move-result v2

    .line 125
    invoke-direct {p0, v0, p1, v2}, Lui;->a(Lul;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 126
    iget-object v2, p0, Lui;->a:Luk;

    invoke-virtual {v2}, Luk;->c()V

    .line 128
    if-eqz v0, :cond_0

    .line 129
    invoke-direct {p0, v0, v1, p3}, Lui;->b(Landroid/view/View;Ljava/util/List;Luj;)V

    goto :goto_0
.end method
