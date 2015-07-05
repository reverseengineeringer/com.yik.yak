.class Lcom/parse/ParseQuery$10;
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
        "Lcom/parse/ParsePin;",
        "LR",
        "<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseQuery;

.field final synthetic val$ignoreACLs:Z

.field final synthetic val$includeIsDeletingEventually:Z

.field final synthetic val$store:Lcom/parse/OfflineStore;

.field final synthetic val$user:Lcom/parse/ParseUser;


# direct methods
.method constructor <init>(Lcom/parse/ParseQuery;Lcom/parse/OfflineStore;Lcom/parse/ParseUser;ZZ)V
    .locals 0

    .prologue
    .line 813
    iput-object p1, p0, Lcom/parse/ParseQuery$10;->this$0:Lcom/parse/ParseQuery;

    iput-object p2, p0, Lcom/parse/ParseQuery$10;->val$store:Lcom/parse/OfflineStore;

    iput-object p3, p0, Lcom/parse/ParseQuery$10;->val$user:Lcom/parse/ParseUser;

    iput-boolean p4, p0, Lcom/parse/ParseQuery$10;->val$includeIsDeletingEventually:Z

    iput-boolean p5, p0, Lcom/parse/ParseQuery$10;->val$ignoreACLs:Z

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
            "Lcom/parse/ParsePin;",
            ">;)",
            "LR",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 816
    invoke-virtual {p1}, LR;->e()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parse/ParsePin;

    .line 817
    iget-object v0, p0, Lcom/parse/ParseQuery$10;->val$store:Lcom/parse/OfflineStore;

    iget-object v1, p0, Lcom/parse/ParseQuery$10;->this$0:Lcom/parse/ParseQuery;

    iget-object v2, p0, Lcom/parse/ParseQuery$10;->val$user:Lcom/parse/ParseUser;

    iget-boolean v4, p0, Lcom/parse/ParseQuery$10;->val$includeIsDeletingEventually:Z

    iget-boolean v5, p0, Lcom/parse/ParseQuery$10;->val$ignoreACLs:Z

    invoke-virtual/range {v0 .. v5}, Lcom/parse/OfflineStore;->countAsync(Lcom/parse/ParseQuery;Lcom/parse/ParseUser;Lcom/parse/ParsePin;ZZ)LR;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 813
    invoke-virtual {p0, p1}, Lcom/parse/ParseQuery$10;->then(LR;)LR;

    move-result-object v0

    return-object v0
.end method
