.class Lcom/parse/OfflineQueryLogic$11$1;
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
        "Ljava/lang/Boolean;",
        "LR",
        "<",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/OfflineQueryLogic$11;

.field final synthetic val$db:Lcom/parse/ParseSQLiteDatabase;

.field final synthetic val$matcher:Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

.field final synthetic val$object:Lcom/parse/ParseObject;


# direct methods
.method constructor <init>(Lcom/parse/OfflineQueryLogic$11;Lcom/parse/OfflineQueryLogic$ConstraintMatcher;Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)V
    .locals 0

    .prologue
    .line 646
    iput-object p1, p0, Lcom/parse/OfflineQueryLogic$11$1;->this$1:Lcom/parse/OfflineQueryLogic$11;

    iput-object p2, p0, Lcom/parse/OfflineQueryLogic$11$1;->val$matcher:Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

    iput-object p3, p0, Lcom/parse/OfflineQueryLogic$11$1;->val$object:Lcom/parse/ParseObject;

    iput-object p4, p0, Lcom/parse/OfflineQueryLogic$11$1;->val$db:Lcom/parse/ParseSQLiteDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LR;)LR;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "LR",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 649
    invoke-virtual {p1}, LR;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 652
    :goto_0
    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/parse/OfflineQueryLogic$11$1;->val$matcher:Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

    iget-object v1, p0, Lcom/parse/OfflineQueryLogic$11$1;->val$object:Lcom/parse/ParseObject;

    iget-object v2, p0, Lcom/parse/OfflineQueryLogic$11$1;->val$db:Lcom/parse/ParseSQLiteDatabase;

    invoke-interface {v0, v1, v2}, Lcom/parse/OfflineQueryLogic$ConstraintMatcher;->matchesAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)LR;

    move-result-object p1

    goto :goto_0
.end method

.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 646
    invoke-virtual {p0, p1}, Lcom/parse/OfflineQueryLogic$11$1;->then(LR;)LR;

    move-result-object v0

    return-object v0
.end method
