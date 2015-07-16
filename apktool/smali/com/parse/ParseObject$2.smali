.class final Lcom/parse/ParseObject$2;
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
        "LN",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$childTasks:Ljava/util/List;

.field final synthetic val$fullTask:LN;


# direct methods
.method constructor <init>(Ljava/util/List;LN;)V
    .locals 0

    .prologue
    .line 379
    iput-object p1, p0, Lcom/parse/ParseObject$2;->val$childTasks:Ljava/util/List;

    iput-object p2, p0, Lcom/parse/ParseObject$2;->val$fullTask:LN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LN;)LN;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "LN",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 382
    iget-object v0, p0, Lcom/parse/ParseObject$2;->val$childTasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    iget-object v0, p0, Lcom/parse/ParseObject$2;->val$fullTask:LN;

    return-object v0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 379
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$2;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
