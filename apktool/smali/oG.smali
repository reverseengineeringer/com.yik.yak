.class LoG;
.super Ljava/lang/Object;


# direct methods
.method public static a(LhK;)LhK;
    .locals 2

    new-instance v1, LhK;

    invoke-direct {v1}, LhK;-><init>()V

    iget v0, p0, LhK;->a:I

    iput v0, v1, LhK;->a:I

    iget-object v0, p0, LhK;->k:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, v1, LhK;->k:[I

    iget-boolean v0, p0, LhK;->l:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, LhK;->l:Z

    iput-boolean v0, v1, LhK;->l:Z

    :cond_0
    return-object v1
.end method
