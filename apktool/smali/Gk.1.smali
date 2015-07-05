.class LGk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LGg;

.field private final b:LGp;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(LGg;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 995
    iput-object p1, p0, LGk;->a:LGg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 996
    invoke-static {p2}, LGp;->a(Landroid/content/Context;)LGp;

    move-result-object v0

    iput-object v0, p0, LGk;->b:LGp;

    .line 997
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 1000
    invoke-static {}, LGg;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1001
    invoke-static {}, LGc;->a()LGd;

    .line 1003
    :cond_0
    iget-object v0, p0, LGk;->b:LGp;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LGp;->a(Z)V

    .line 1004
    return-void
.end method

.method public a(IIII)V
    .locals 11

    .prologue
    const/4 v9, 0x0

    .line 1008
    iget-object v0, p0, LGk;->a:LGg;

    invoke-virtual {v0}, LGg;->b()Landroid/graphics/RectF;

    move-result-object v0

    .line 1009
    if-nez v0, :cond_1

    .line 1046
    :cond_0
    :goto_0
    return-void

    .line 1013
    :cond_1
    iget v1, v0, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1016
    int-to-float v2, p1

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    .line 1018
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    int-to-float v3, p1

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v6

    move v5, v9

    .line 1023
    :goto_1
    iget v2, v0, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1024
    int-to-float v3, p2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_5

    .line 1026
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    int-to-float v3, p2

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v8

    move v7, v9

    .line 1031
    :goto_2
    iput v1, p0, LGk;->c:I

    .line 1032
    iput v2, p0, LGk;->d:I

    .line 1034
    invoke-static {}, LGg;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1035
    invoke-static {}, LGc;->a()LGd;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fling. StartX:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " StartY:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " MaxX:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " MaxY:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1042
    :cond_2
    if-ne v1, v6, :cond_3

    if-eq v2, v8, :cond_0

    .line 1043
    :cond_3
    iget-object v0, p0, LGk;->b:LGp;

    move v3, p3

    move v4, p4

    move v10, v9

    invoke-virtual/range {v0 .. v10}, LGp;->a(IIIIIIIIII)V

    goto :goto_0

    :cond_4
    move v6, v1

    move v5, v1

    .line 1020
    goto :goto_1

    :cond_5
    move v8, v2

    move v7, v2

    .line 1028
    goto :goto_2
.end method

.method public run()V
    .locals 6

    .prologue
    .line 1050
    iget-object v0, p0, LGk;->b:LGp;

    invoke-virtual {v0}, LGp;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1077
    :cond_0
    :goto_0
    return-void

    .line 1054
    :cond_1
    iget-object v0, p0, LGk;->a:LGg;

    invoke-virtual {v0}, LGg;->c()Landroid/widget/ImageView;

    move-result-object v0

    .line 1055
    if-eqz v0, :cond_0

    iget-object v1, p0, LGk;->b:LGp;

    invoke-virtual {v1}, LGp;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1057
    iget-object v1, p0, LGk;->b:LGp;

    invoke-virtual {v1}, LGp;->c()I

    move-result v1

    .line 1058
    iget-object v2, p0, LGk;->b:LGp;

    invoke-virtual {v2}, LGp;->d()I

    move-result v2

    .line 1060
    invoke-static {}, LGg;->m()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1061
    invoke-static {}, LGc;->a()LGd;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fling run(). CurrentX:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, LGk;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " CurrentY:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, LGk;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " NewX:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " NewY:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1068
    :cond_2
    iget-object v3, p0, LGk;->a:LGg;

    invoke-static {v3}, LGg;->b(LGg;)Landroid/graphics/Matrix;

    move-result-object v3

    iget v4, p0, LGk;->c:I

    sub-int/2addr v4, v1

    int-to-float v4, v4

    iget v5, p0, LGk;->d:I

    sub-int/2addr v5, v2

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1069
    iget-object v3, p0, LGk;->a:LGg;

    iget-object v4, p0, LGk;->a:LGg;

    invoke-virtual {v4}, LGg;->l()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-static {v3, v4}, LGg;->a(LGg;Landroid/graphics/Matrix;)V

    .line 1071
    iput v1, p0, LGk;->c:I

    .line 1072
    iput v2, p0, LGk;->d:I

    .line 1075
    invoke-static {v0, p0}, LFS;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
