.class public abstract LjI;
.super LjN;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "LjI",
        "<TM;>;>",
        "LjN;"
    }
.end annotation


# instance fields
.field protected m:LjK;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LjN;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LjG;)V
    .locals 2

    iget-object v0, p0, LjI;->m:LjK;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LjI;->m:LjK;

    invoke-virtual {v1}, LjK;->a()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, LjI;->m:LjK;

    invoke-virtual {v1, v0}, LjK;->a(I)LjL;

    move-result-object v1

    invoke-virtual {v1, p1}, LjL;->a(LjG;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected final a(LjI;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)Z"
        }
    .end annotation

    iget-object v0, p0, LjI;->m:LjK;

    if-eqz v0, :cond_0

    iget-object v0, p0, LjI;->m:LjK;

    invoke-virtual {v0}, LjK;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p1, LjI;->m:LjK;

    if-eqz v0, :cond_1

    iget-object v0, p1, LjI;->m:LjK;

    invoke-virtual {v0}, LjK;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v0, p0, LjI;->m:LjK;

    iget-object v1, p1, LjI;->m:LjK;

    invoke-virtual {v0, v1}, LjK;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method protected c()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, LjI;->m:LjK;

    if-eqz v1, :cond_0

    move v1, v0

    :goto_0
    iget-object v2, p0, LjI;->m:LjK;

    invoke-virtual {v2}, LjK;->a()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, LjI;->m:LjK;

    invoke-virtual {v2, v0}, LjK;->a(I)LjL;

    move-result-object v2

    invoke-virtual {v2}, LjL;->a()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :cond_1
    return v1
.end method

.method protected final d()I
    .locals 1

    iget-object v0, p0, LjI;->m:LjK;

    if-eqz v0, :cond_0

    iget-object v0, p0, LjI;->m:LjK;

    invoke-virtual {v0}, LjK;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, LjI;->m:LjK;

    invoke-virtual {v0}, LjK;->hashCode()I

    move-result v0

    goto :goto_0
.end method
