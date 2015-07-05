.class Lcom/parse/OfflineStore$34;
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
        "Lcom/parse/ParseObject;",
        "LR",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineStore;

.field final synthetic val$object:Lcom/parse/ParseObject;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;)V
    .locals 0

    .prologue
    .line 1176
    iput-object p1, p0, Lcom/parse/OfflineStore$34;->this$0:Lcom/parse/OfflineStore;

    iput-object p2, p0, Lcom/parse/OfflineStore$34;->val$object:Lcom/parse/ParseObject;

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
            "Lcom/parse/ParseObject;",
            ">;)",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1179
    invoke-virtual {p1}, LR;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1181
    invoke-virtual {p1}, LR;->f()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, Lcom/parse/ParseException;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, LR;->f()Ljava/lang/Exception;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseException;

    invoke-virtual {v0}, Lcom/parse/ParseException;->getCode()I

    move-result v0

    const/16 v1, 0x78

    if-ne v0, v1, :cond_0

    .line 1183
    const/4 v0, 0x0

    invoke-static {v0}, LR;->a(Ljava/lang/Object;)LR;

    move-result-object v0

    .line 1188
    :goto_0
    return-object v0

    .line 1185
    :cond_0
    invoke-virtual {p1}, LR;->j()LR;

    move-result-object v0

    goto :goto_0

    .line 1188
    :cond_1
    iget-object v0, p0, Lcom/parse/OfflineStore$34;->this$0:Lcom/parse/OfflineStore;

    # getter for: Lcom/parse/OfflineStore;->helper:Lcom/parse/OfflineSQLiteOpenHelper;
    invoke-static {v0}, Lcom/parse/OfflineStore;->access$1300(Lcom/parse/OfflineStore;)Lcom/parse/OfflineSQLiteOpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/OfflineSQLiteOpenHelper;->getWritableDatabaseAsync()LR;

    move-result-object v0

    new-instance v1, Lcom/parse/OfflineStore$34$1;

    invoke-direct {v1, p0}, Lcom/parse/OfflineStore$34$1;-><init>(Lcom/parse/OfflineStore$34;)V

    invoke-virtual {v0, v1}, LR;->b(LQ;)LR;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1176
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$34;->then(LR;)LR;

    move-result-object v0

    return-object v0
.end method
