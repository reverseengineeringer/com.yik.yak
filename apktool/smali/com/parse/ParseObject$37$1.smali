.class Lcom/parse/ParseObject$37$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseObject$37;

.field final synthetic val$remaining:LP;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject$37;LP;)V
    .locals 0

    .prologue
    .line 2270
    iput-object p1, p0, Lcom/parse/ParseObject$37$1;->this$0:Lcom/parse/ParseObject$37;

    iput-object p2, p0, Lcom/parse/ParseObject$37$1;->val$remaining:LP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 2273
    iget-object v0, p0, Lcom/parse/ParseObject$37$1;->val$remaining:LP;

    invoke-virtual {v0}, LP;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2270
    invoke-virtual {p0}, Lcom/parse/ParseObject$37$1;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
