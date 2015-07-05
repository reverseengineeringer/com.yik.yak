.class LDs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCS;


# instance fields
.field final synthetic a:LDh;


# direct methods
.method constructor <init>(LDh;)V
    .locals 0

    .prologue
    .line 442
    iput-object p1, p0, LDs;->a:LDh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LDb;LCQ;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LDb",
            "<*>;",
            "LCQ;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 446
    :try_start_0
    iget-object v0, p0, LDs;->a:LDh;

    invoke-virtual {v0}, LDh;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Yak;

    .line 448
    iget v1, v0, Lcom/yik/yak/data/models/Yak;->Type:I

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/yik/yak/data/models/Yak;->Type:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    iget v1, v0, Lcom/yik/yak/data/models/Yak;->Type:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 449
    :cond_0
    iget-object v1, p0, LDs;->a:LDh;

    invoke-virtual {v1, v0}, LDh;->a(Lcom/yik/yak/data/models/Yak;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    :cond_1
    :goto_0
    return-void

    .line 451
    :catch_0
    move-exception v0

    .line 452
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
