.class Lcom/parse/OfflineQueryLogic$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/parse/OfflineQueryLogic$ConstraintMatcher;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parse/OfflineQueryLogic$ConstraintMatcher",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineQueryLogic;

.field final synthetic val$matchers:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/parse/OfflineQueryLogic;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 641
    iput-object p1, p0, Lcom/parse/OfflineQueryLogic$11;->this$0:Lcom/parse/OfflineQueryLogic;

    iput-object p2, p0, Lcom/parse/OfflineQueryLogic$11;->val$matchers:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public matchesAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)LN;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/parse/ParseSQLiteDatabase;",
            ")",
            "LN",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 644
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, LN;->a(Ljava/lang/Object;)LN;

    move-result-object v0

    .line 645
    iget-object v1, p0, Lcom/parse/OfflineQueryLogic$11;->val$matchers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

    .line 646
    new-instance v3, Lcom/parse/OfflineQueryLogic$11$1;

    invoke-direct {v3, p0, v0, p1, p2}, Lcom/parse/OfflineQueryLogic$11$1;-><init>(Lcom/parse/OfflineQueryLogic$11;Lcom/parse/OfflineQueryLogic$ConstraintMatcher;Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v1, v3}, LN;->d(LM;)LN;

    move-result-object v0

    move-object v1, v0

    .line 655
    goto :goto_0

    .line 656
    :cond_0
    return-object v1
.end method
