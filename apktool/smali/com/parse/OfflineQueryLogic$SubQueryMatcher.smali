.class abstract Lcom/parse/OfflineQueryLogic$SubQueryMatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/parse/OfflineQueryLogic$ConstraintMatcher;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/parse/ParseObject;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/parse/OfflineQueryLogic$ConstraintMatcher",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final subQuery:Lcom/parse/ParseQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation
.end field

.field private subQueryResults:LN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LN",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/parse/OfflineQueryLogic;


# direct methods
.method public constructor <init>(Lcom/parse/OfflineQueryLogic;Lcom/parse/ParseQuery;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseQuery",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 489
    iput-object p1, p0, Lcom/parse/OfflineQueryLogic$SubQueryMatcher;->this$0:Lcom/parse/OfflineQueryLogic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 487
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/OfflineQueryLogic$SubQueryMatcher;->subQueryResults:LN;

    .line 490
    iput-object p2, p0, Lcom/parse/OfflineQueryLogic$SubQueryMatcher;->subQuery:Lcom/parse/ParseQuery;

    .line 491
    return-void
.end method


# virtual methods
.method protected abstract matches(Lcom/parse/ParseObject;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/List",
            "<TT;>;)Z"
        }
    .end annotation
.end method

.method public matchesAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)LN;
    .locals 8
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
    const/4 v4, 0x0

    .line 499
    iget-object v0, p0, Lcom/parse/OfflineQueryLogic$SubQueryMatcher;->subQueryResults:LN;

    if-nez v0, :cond_0

    .line 500
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v2

    .line 501
    iget-object v0, p0, Lcom/parse/OfflineQueryLogic$SubQueryMatcher;->this$0:Lcom/parse/OfflineQueryLogic;

    # getter for: Lcom/parse/OfflineQueryLogic;->store:Lcom/parse/OfflineStore;
    invoke-static {v0}, Lcom/parse/OfflineQueryLogic;->access$100(Lcom/parse/OfflineQueryLogic;)Lcom/parse/OfflineStore;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/OfflineQueryLogic$SubQueryMatcher;->subQuery:Lcom/parse/ParseQuery;

    const/4 v3, 0x0

    move v5, v4

    move v6, v4

    move-object v7, p2

    invoke-virtual/range {v0 .. v7}, Lcom/parse/OfflineStore;->findAsync(Lcom/parse/ParseQuery;Lcom/parse/ParseUser;Lcom/parse/ParsePin;ZZZLcom/parse/ParseSQLiteDatabase;)LN;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/OfflineQueryLogic$SubQueryMatcher;->subQueryResults:LN;

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/parse/OfflineQueryLogic$SubQueryMatcher;->subQueryResults:LN;

    new-instance v1, Lcom/parse/OfflineQueryLogic$SubQueryMatcher$1;

    invoke-direct {v1, p0, p1}, Lcom/parse/OfflineQueryLogic$SubQueryMatcher$1;-><init>(Lcom/parse/OfflineQueryLogic$SubQueryMatcher;Lcom/parse/ParseObject;)V

    invoke-virtual {v0, v1}, LN;->c(LM;)LN;

    move-result-object v0

    return-object v0
.end method
