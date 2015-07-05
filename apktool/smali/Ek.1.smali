.class LEk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LEj;


# direct methods
.method constructor <init>(LEj;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, LEk;->a:LEj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 320
    :try_start_0
    iget-object v0, p0, LEk;->a:LEj;

    iget-object v0, v0, LEj;->b:LEf;

    new-instance v1, LCK;

    iget-object v2, p0, LEk;->a:LEj;

    iget-object v2, v2, LEj;->b:LEf;

    invoke-virtual {v2}, LEf;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f030060

    invoke-static {}, LzV;->a()LzV;

    move-result-object v4

    invoke-virtual {v4}, LzV;->c()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, LCK;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-static {v0, v1}, LEf;->a(LEf;LCK;)LCK;

    .line 321
    iget-object v0, p0, LEk;->a:LEj;

    iget-object v0, v0, LEj;->b:LEf;

    invoke-static {v0}, LEf;->d(LEf;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, LEk;->a:LEj;

    iget-object v1, v1, LEj;->b:LEf;

    invoke-static {v1}, LEf;->c(LEf;)LCK;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :goto_0
    return-void

    .line 322
    :catch_0
    move-exception v0

    .line 323
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
