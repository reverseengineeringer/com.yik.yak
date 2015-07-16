.class Lcom/parse/ParseUser$3;
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
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseUser;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser;)V
    .locals 0

    .prologue
    .line 618
    iput-object p1, p0, Lcom/parse/ParseUser$3;->this$0:Lcom/parse/ParseUser;

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
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 621
    iget-object v0, p0, Lcom/parse/ParseUser$3;->this$0:Lcom/parse/ParseUser;

    # invokes: Lcom/parse/ParseUser;->signUpAsync(LN;)LN;
    invoke-static {v0, p1}, Lcom/parse/ParseUser;->access$100(Lcom/parse/ParseUser;LN;)LN;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 618
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$3;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
