.class Lcom/parse/OfflineStore$8;
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
        "Landroid/database/Cursor;",
        "LR",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineStore;

.field final synthetic val$db:Lcom/parse/ParseSQLiteDatabase;

.field final synthetic val$ignoreACLs:Z

.field final synthetic val$query:Lcom/parse/ParseQuery;

.field final synthetic val$queryLogic:Lcom/parse/OfflineQueryLogic;

.field final synthetic val$results:Ljava/util/List;

.field final synthetic val$user:Lcom/parse/ParseUser;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;Lcom/parse/OfflineQueryLogic;Lcom/parse/ParseQuery;Lcom/parse/ParseUser;ZLcom/parse/ParseSQLiteDatabase;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 455
    iput-object p1, p0, Lcom/parse/OfflineStore$8;->this$0:Lcom/parse/OfflineStore;

    iput-object p2, p0, Lcom/parse/OfflineStore$8;->val$queryLogic:Lcom/parse/OfflineQueryLogic;

    iput-object p3, p0, Lcom/parse/OfflineStore$8;->val$query:Lcom/parse/ParseQuery;

    iput-object p4, p0, Lcom/parse/OfflineStore$8;->val$user:Lcom/parse/ParseUser;

    iput-boolean p5, p0, Lcom/parse/OfflineStore$8;->val$ignoreACLs:Z

    iput-object p6, p0, Lcom/parse/OfflineStore$8;->val$db:Lcom/parse/ParseSQLiteDatabase;

    iput-object p7, p0, Lcom/parse/OfflineStore$8;->val$results:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LR;)LR;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR",
            "<",
            "Landroid/database/Cursor;",
            ">;)",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 459
    invoke-virtual {p1}, LR;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 462
    iget-object v1, p0, Lcom/parse/OfflineStore$8;->val$queryLogic:Lcom/parse/OfflineQueryLogic;

    iget-object v2, p0, Lcom/parse/OfflineStore$8;->val$query:Lcom/parse/ParseQuery;

    iget-object v3, p0, Lcom/parse/OfflineStore$8;->val$user:Lcom/parse/ParseUser;

    iget-boolean v4, p0, Lcom/parse/OfflineStore$8;->val$ignoreACLs:Z

    invoke-virtual {v1, v2, v3, v4}, Lcom/parse/OfflineQueryLogic;->createMatcher(Lcom/parse/ParseQuery;Lcom/parse/ParseUser;Z)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

    move-result-object v2

    .line 464
    const/4 v1, 0x0

    invoke-static {v1}, LR;->a(Ljava/lang/Object;)LR;

    move-result-object v1

    .line 465
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_0

    .line 466
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 467
    new-instance v4, LP;

    invoke-direct {v4}, LP;-><init>()V

    .line 469
    new-instance v5, Lcom/parse/OfflineStore$8$4;

    invoke-direct {v5, p0, v3}, Lcom/parse/OfflineStore$8$4;-><init>(Lcom/parse/OfflineStore$8;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, LR;->d(LQ;)LR;

    move-result-object v1

    new-instance v3, Lcom/parse/OfflineStore$8$3;

    invoke-direct {v3, p0, v4}, Lcom/parse/OfflineStore$8$3;-><init>(Lcom/parse/OfflineStore$8;LP;)V

    invoke-virtual {v1, v3}, LR;->d(LQ;)LR;

    move-result-object v1

    new-instance v3, Lcom/parse/OfflineStore$8$2;

    invoke-direct {v3, p0, v4, v2}, Lcom/parse/OfflineStore$8$2;-><init>(Lcom/parse/OfflineStore$8;LP;Lcom/parse/OfflineQueryLogic$ConstraintMatcher;)V

    invoke-virtual {v1, v3}, LR;->d(LQ;)LR;

    move-result-object v1

    new-instance v3, Lcom/parse/OfflineStore$8$1;

    invoke-direct {v3, p0, v4}, Lcom/parse/OfflineStore$8$1;-><init>(Lcom/parse/OfflineStore$8;LP;)V

    invoke-virtual {v1, v3}, LR;->c(LQ;)LR;

    move-result-object v1

    .line 465
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 500
    :cond_0
    return-object v1
.end method

.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 455
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$8;->then(LR;)LR;

    move-result-object v0

    return-object v0
.end method
