.class final Lcom/parse/ParseUser$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LQ",
        "<",
        "Ljava/lang/Void;",
        "LR",
        "<",
        "Lcom/parse/ParseUser;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$logInWithTask:LQ;

.field final synthetic val$user:Lcom/parse/ParseUser;


# direct methods
.method constructor <init>(LQ;Lcom/parse/ParseUser;)V
    .locals 0

    .prologue
    .line 1333
    iput-object p1, p0, Lcom/parse/ParseUser$16;->val$logInWithTask:LQ;

    iput-object p2, p0, Lcom/parse/ParseUser$16;->val$user:Lcom/parse/ParseUser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LR;)LR;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "LR",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1336
    invoke-virtual {p1}, LR;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1337
    invoke-virtual {p1}, LR;->f()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, Lcom/parse/ParseException;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, LR;->f()Ljava/lang/Exception;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseException;

    invoke-virtual {v0}, Lcom/parse/ParseException;->getCode()I

    move-result v0

    const/16 v1, 0xd0

    if-ne v0, v1, :cond_0

    .line 1341
    const/4 v0, 0x0

    invoke-static {v0}, LR;->a(Ljava/lang/Object;)LR;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParseUser$16;->val$logInWithTask:LQ;

    invoke-virtual {v0, v1}, LR;->b(LQ;)LR;

    move-result-object v0

    .line 1347
    :goto_0
    return-object v0

    .line 1344
    :cond_0
    invoke-virtual {p1}, LR;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1345
    invoke-static {}, LR;->h()LR;

    move-result-object v0

    goto :goto_0

    .line 1347
    :cond_1
    iget-object v0, p0, Lcom/parse/ParseUser$16;->val$user:Lcom/parse/ParseUser;

    invoke-static {v0}, LR;->a(Ljava/lang/Object;)LR;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1333
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$16;->then(LR;)LR;

    move-result-object v0

    return-object v0
.end method
