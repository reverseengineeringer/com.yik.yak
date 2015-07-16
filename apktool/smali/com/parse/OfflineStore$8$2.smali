.class Lcom/parse/OfflineStore$8$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LM",
        "<TT;",
        "LN",
        "<",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/OfflineStore$8;

.field final synthetic val$matcher:Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

.field final synthetic val$object:LL;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore$8;LL;Lcom/parse/OfflineQueryLogic$ConstraintMatcher;)V
    .locals 0

    .prologue
    .line 481
    iput-object p1, p0, Lcom/parse/OfflineStore$8$2;->this$1:Lcom/parse/OfflineStore$8;

    iput-object p2, p0, Lcom/parse/OfflineStore$8$2;->val$object:LL;

    iput-object p3, p0, Lcom/parse/OfflineStore$8$2;->val$matcher:Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LN;)LN;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LN",
            "<TT;>;)",
            "LN",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 484
    iget-object v0, p0, Lcom/parse/OfflineStore$8$2;->val$object:LL;

    invoke-virtual {v0}, LL;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    invoke-virtual {v0}, Lcom/parse/ParseObject;->isDataAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 485
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, LN;->a(Ljava/lang/Object;)LN;

    move-result-object v0

    .line 487
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/parse/OfflineStore$8$2;->val$matcher:Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

    iget-object v0, p0, Lcom/parse/OfflineStore$8$2;->val$object:LL;

    invoke-virtual {v0}, LL;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    iget-object v2, p0, Lcom/parse/OfflineStore$8$2;->this$1:Lcom/parse/OfflineStore$8;

    iget-object v2, v2, Lcom/parse/OfflineStore$8;->val$db:Lcom/parse/ParseSQLiteDatabase;

    invoke-interface {v1, v0, v2}, Lcom/parse/OfflineQueryLogic$ConstraintMatcher;->matchesAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)LN;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 481
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$8$2;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
