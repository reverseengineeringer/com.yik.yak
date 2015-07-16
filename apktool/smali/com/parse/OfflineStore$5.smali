.class Lcom/parse/OfflineStore$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LM",
        "<",
        "Lcom/parse/ParseSQLiteDatabase;",
        "LN",
        "<",
        "Ljava/util/List",
        "<TT;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineStore;

.field final synthetic val$ignoreACLs:Z

.field final synthetic val$includeIsDeletingEventually:Z

.field final synthetic val$isCount:Z

.field final synthetic val$pin:Lcom/parse/ParsePin;

.field final synthetic val$query:Lcom/parse/ParseQuery;

.field final synthetic val$user:Lcom/parse/ParseUser;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;Lcom/parse/ParseQuery;Lcom/parse/ParseUser;Lcom/parse/ParsePin;ZZZ)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/parse/OfflineStore$5;->this$0:Lcom/parse/OfflineStore;

    iput-object p2, p0, Lcom/parse/OfflineStore$5;->val$query:Lcom/parse/ParseQuery;

    iput-object p3, p0, Lcom/parse/OfflineStore$5;->val$user:Lcom/parse/ParseUser;

    iput-object p4, p0, Lcom/parse/OfflineStore$5;->val$pin:Lcom/parse/ParsePin;

    iput-boolean p5, p0, Lcom/parse/OfflineStore$5;->val$isCount:Z

    iput-boolean p6, p0, Lcom/parse/OfflineStore$5;->val$includeIsDeletingEventually:Z

    iput-boolean p7, p0, Lcom/parse/OfflineStore$5;->val$ignoreACLs:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LN;)LN;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LN",
            "<",
            "Lcom/parse/ParseSQLiteDatabase;",
            ">;)",
            "LN",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 380
    invoke-virtual {p1}, LN;->e()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/parse/ParseSQLiteDatabase;

    .line 381
    iget-object v0, p0, Lcom/parse/OfflineStore$5;->this$0:Lcom/parse/OfflineStore;

    iget-object v1, p0, Lcom/parse/OfflineStore$5;->val$query:Lcom/parse/ParseQuery;

    iget-object v2, p0, Lcom/parse/OfflineStore$5;->val$user:Lcom/parse/ParseUser;

    iget-object v3, p0, Lcom/parse/OfflineStore$5;->val$pin:Lcom/parse/ParsePin;

    iget-boolean v4, p0, Lcom/parse/OfflineStore$5;->val$isCount:Z

    iget-boolean v5, p0, Lcom/parse/OfflineStore$5;->val$includeIsDeletingEventually:Z

    iget-boolean v6, p0, Lcom/parse/OfflineStore$5;->val$ignoreACLs:Z

    invoke-virtual/range {v0 .. v7}, Lcom/parse/OfflineStore;->findAsync(Lcom/parse/ParseQuery;Lcom/parse/ParseUser;Lcom/parse/ParsePin;ZZZLcom/parse/ParseSQLiteDatabase;)LN;

    move-result-object v0

    new-instance v1, Lcom/parse/OfflineStore$5$1;

    invoke-direct {v1, p0, v7}, Lcom/parse/OfflineStore$5$1;-><init>(Lcom/parse/OfflineStore$5;Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v0, v1}, LN;->b(LM;)LN;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 377
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$5;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
