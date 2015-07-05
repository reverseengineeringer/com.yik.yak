.class public abstract LjL;
.super LjQ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "LjL",
        "<TM;>;>",
        "LjQ;"
    }
.end annotation


# instance fields
.field protected m:LjN;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LjQ;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LjJ;)V
    .locals 2

    iget-object v0, p0, LjL;->m:LjN;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LjL;->m:LjN;

    invoke-virtual {v1}, LjN;->a()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, LjL;->m:LjN;

    invoke-virtual {v1, v0}, LjN;->a(I)LjO;

    move-result-object v1

    invoke-virtual {v1, p1}, LjO;->a(LjJ;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected final a(LjL;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)Z"
        }
    .end annotation

    iget-object v0, p0, LjL;->m:LjN;

    if-eqz v0, :cond_0

    iget-object v0, p0, LjL;->m:LjN;

    invoke-virtual {v0}, LjN;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p1, LjL;->m:LjN;

    if-eqz v0, :cond_1

    iget-object v0, p1, LjL;->m:LjN;

    invoke-virtual {v0}, LjN;->b()Z

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
    iget-object v0, p0, LjL;->m:LjN;

    iget-object v1, p1, LjL;->m:LjN;

    invoke-virtual {v0, v1}, LjN;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method protected c()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, LjL;->m:LjN;

    if-eqz v1, :cond_0

    move v1, v0

    :goto_0
    iget-object v2, p0, LjL;->m:LjN;

    invoke-virtual {v2}, LjN;->a()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, LjL;->m:LjN;

    invoke-virtual {v2, v0}, LjN;->a(I)LjO;

    move-result-object v2

    invoke-virtual {v2}, LjO;->a()I

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

    iget-object v0, p0, LjL;->m:LjN;

    if-eqz v0, :cond_0

    iget-object v0, p0, LjL;->m:LjN;

    invoke-virtual {v0}, LjN;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, LjL;->m:LjN;

    invoke-virtual {v0}, LjN;->hashCode()I

    move-result v0

    goto :goto_0
.end method
