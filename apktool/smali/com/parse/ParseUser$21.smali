.class Lcom/parse/ParseUser$21;
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
        "Lcom/parse/ParseOperationSet;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseUser;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser;)V
    .locals 0

    .prologue
    .line 1378
    iput-object p1, p0, Lcom/parse/ParseUser$21;->this$0:Lcom/parse/ParseUser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/parse/ParseOperationSet;
    .locals 1

    .prologue
    .line 1381
    iget-object v0, p0, Lcom/parse/ParseUser$21;->this$0:Lcom/parse/ParseUser;

    invoke-virtual {v0}, Lcom/parse/ParseUser;->startSave()Lcom/parse/ParseOperationSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1378
    invoke-virtual {p0}, Lcom/parse/ParseUser$21;->call()Lcom/parse/ParseOperationSet;

    move-result-object v0

    return-object v0
.end method
