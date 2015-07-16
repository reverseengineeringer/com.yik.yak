.class Lcom/parse/EventuallyPin$2$1;
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
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/parse/EventuallyPin;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/EventuallyPin$2;

.field final synthetic val$pins:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/parse/EventuallyPin$2;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/parse/EventuallyPin$2$1;->this$0:Lcom/parse/EventuallyPin$2;

    iput-object p2, p0, Lcom/parse/EventuallyPin$2$1;->val$pins:Ljava/util/List;

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
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/parse/EventuallyPin;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lcom/parse/EventuallyPin$2$1;->val$pins:Ljava/util/List;

    invoke-static {v0}, LN;->a(Ljava/lang/Object;)LN;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Lcom/parse/EventuallyPin$2$1;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
