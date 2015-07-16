.class Lcom/parse/ParseUser$8$1;
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
        "Lcom/parse/ParseUser;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseUser$8;

.field final synthetic val$user:Lcom/parse/ParseUser;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser$8;Lcom/parse/ParseUser;)V
    .locals 0

    .prologue
    .line 893
    iput-object p1, p0, Lcom/parse/ParseUser$8$1;->this$0:Lcom/parse/ParseUser$8;

    iput-object p2, p0, Lcom/parse/ParseUser$8$1;->val$user:Lcom/parse/ParseUser;

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
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 896
    iget-object v0, p0, Lcom/parse/ParseUser$8$1;->val$user:Lcom/parse/ParseUser;

    invoke-static {v0}, LN;->a(Ljava/lang/Object;)LN;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 893
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$8$1;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
