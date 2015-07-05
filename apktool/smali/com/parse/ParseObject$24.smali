.class Lcom/parse/ParseObject$24;
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
        "Ljava/lang/Void;",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseObject;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject;)V
    .locals 0

    .prologue
    .line 1840
    iput-object p1, p0, Lcom/parse/ParseObject$24;->this$0:Lcom/parse/ParseObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LR;)Lcom/parse/ParseObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 1843
    iget-object v0, p0, Lcom/parse/ParseObject$24;->this$0:Lcom/parse/ParseObject;

    return-object v0
.end method

.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1840
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$24;->then(LR;)Lcom/parse/ParseObject;

    move-result-object v0

    return-object v0
.end method
