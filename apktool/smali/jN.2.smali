.class public abstract LjN;
.super Ljava/lang/Object;


# instance fields
.field protected volatile n:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, LjN;->n:I

    return-void
.end method


# virtual methods
.method public a(LjG;)V
    .locals 0

    return-void
.end method

.method protected c()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, LjN;->n:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, LjN;->f()I

    :cond_0
    iget v0, p0, LjN;->n:I

    return v0
.end method

.method public f()I
    .locals 1

    invoke-virtual {p0}, LjN;->c()I

    move-result v0

    iput v0, p0, LjN;->n:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, LjO;->a(LjN;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
