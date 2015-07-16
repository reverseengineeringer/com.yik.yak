.class final Lcom/parse/PushRouter$6;
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
        "Ljava/lang/Void;",
        "Ljava/util/Set",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$includeDefaultRoute:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .prologue
    .line 193
    iput-boolean p1, p0, Lcom/parse/PushRouter$6;->val$includeDefaultRoute:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 193
    invoke-virtual {p0, p1}, Lcom/parse/PushRouter$6;->then(LN;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public then(LN;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    # invokes: Lcom/parse/PushRouter;->getInstance()Lcom/parse/PushRouter;
    invoke-static {}, Lcom/parse/PushRouter;->access$000()Lcom/parse/PushRouter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/parse/PushRouter$6;->val$includeDefaultRoute:Z

    invoke-virtual {v0, v1}, Lcom/parse/PushRouter;->getSubscriptions(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
