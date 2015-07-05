.class Lcom/parse/ParseUser$14$1;
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
        "Lcom/parse/ParseUser;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseUser$14;

.field final synthetic val$user:Lcom/parse/ParseUser;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser$14;Lcom/parse/ParseUser;)V
    .locals 0

    .prologue
    .line 1280
    iput-object p1, p0, Lcom/parse/ParseUser$14$1;->this$0:Lcom/parse/ParseUser$14;

    iput-object p2, p0, Lcom/parse/ParseUser$14$1;->val$user:Lcom/parse/ParseUser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LR;)Lcom/parse/ParseUser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/parse/ParseUser;"
        }
    .end annotation

    .prologue
    .line 1283
    iget-object v0, p0, Lcom/parse/ParseUser$14$1;->val$user:Lcom/parse/ParseUser;

    return-object v0
.end method

.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1280
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$14$1;->then(LR;)Lcom/parse/ParseUser;

    move-result-object v0

    return-object v0
.end method
