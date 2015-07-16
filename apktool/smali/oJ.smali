.class LoJ;
.super Ljava/lang/Object;


# direct methods
.method public static a(LhH;)LhH;
    .locals 2

    new-instance v1, LhH;

    invoke-direct {v1}, LhH;-><init>()V

    iget v0, p0, LhH;->a:I

    iput v0, v1, LhH;->a:I

    iget-object v0, p0, LhH;->k:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, v1, LhH;->k:[I

    iget-boolean v0, p0, LhH;->l:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, LhH;->l:Z

    iput-boolean v0, v1, LhH;->l:Z

    :cond_0
    return-object v1
.end method
