.class Lcom/parse/OfflineQueryLogic$SubQueryMatcher$1;
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
        "Ljava/util/List",
        "<TT;>;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/OfflineQueryLogic$SubQueryMatcher;

.field final synthetic val$object:Lcom/parse/ParseObject;


# direct methods
.method constructor <init>(Lcom/parse/OfflineQueryLogic$SubQueryMatcher;Lcom/parse/ParseObject;)V
    .locals 0

    .prologue
    .line 503
    iput-object p1, p0, Lcom/parse/OfflineQueryLogic$SubQueryMatcher$1;->this$1:Lcom/parse/OfflineQueryLogic$SubQueryMatcher;

    iput-object p2, p0, Lcom/parse/OfflineQueryLogic$SubQueryMatcher$1;->val$object:Lcom/parse/ParseObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LR;)Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR",
            "<",
            "Ljava/util/List",
            "<TT;>;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .line 506
    iget-object v1, p0, Lcom/parse/OfflineQueryLogic$SubQueryMatcher$1;->this$1:Lcom/parse/OfflineQueryLogic$SubQueryMatcher;

    iget-object v2, p0, Lcom/parse/OfflineQueryLogic$SubQueryMatcher$1;->val$object:Lcom/parse/ParseObject;

    invoke-virtual {p1}, LR;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v2, v0}, Lcom/parse/OfflineQueryLogic$SubQueryMatcher;->matches(Lcom/parse/ParseObject;Ljava/util/List;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 503
    invoke-virtual {p0, p1}, Lcom/parse/OfflineQueryLogic$SubQueryMatcher$1;->then(LR;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
