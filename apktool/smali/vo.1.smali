.class Lvo;
.super Lvn;
.source "SourceFile"


# instance fields
.field d:F


# direct methods
.method constructor <init>(F)V
    .locals 1

    .prologue
    .line 333
    invoke-direct {p0}, Lvn;-><init>()V

    .line 334
    iput p1, p0, Lvo;->a:F

    .line 335
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lvo;->b:Ljava/lang/Class;

    .line 336
    return-void
.end method

.method constructor <init>(FF)V
    .locals 1

    .prologue
    .line 326
    invoke-direct {p0}, Lvn;-><init>()V

    .line 327
    iput p1, p0, Lvo;->a:F

    .line 328
    iput p2, p0, Lvo;->d:F

    .line 329
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lvo;->b:Ljava/lang/Class;

    .line 330
    const/4 v0, 0x1

    iput-boolean v0, p0, Lvo;->c:Z

    .line 331
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 347
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_0

    .line 348
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lvo;->d:F

    .line 349
    const/4 v0, 0x1

    iput-boolean v0, p0, Lvo;->c:Z

    .line 351
    :cond_0
    return-void
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 343
    iget v0, p0, Lvo;->d:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 320
    invoke-virtual {p0}, Lvo;->g()Lvo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic e()Lvn;
    .locals 1

    .prologue
    .line 320
    invoke-virtual {p0}, Lvo;->g()Lvo;

    move-result-object v0

    return-object v0
.end method

.method public f()F
    .locals 1

    .prologue
    .line 339
    iget v0, p0, Lvo;->d:F

    return v0
.end method

.method public g()Lvo;
    .locals 3

    .prologue
    .line 355
    new-instance v0, Lvo;

    invoke-virtual {p0}, Lvo;->c()F

    move-result v1

    iget v2, p0, Lvo;->d:F

    invoke-direct {v0, v1, v2}, Lvo;-><init>(FF)V

    .line 356
    invoke-virtual {p0}, Lvo;->d()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvo;->a(Landroid/view/animation/Interpolator;)V

    .line 357
    return-object v0
.end method