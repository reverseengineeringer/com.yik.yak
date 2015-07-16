.class Lcom/parse/ParseInstallation$6;
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
.field final synthetic this$0:Lcom/parse/ParseInstallation;


# direct methods
.method constructor <init>(Lcom/parse/ParseInstallation;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/parse/ParseInstallation$6;->this$0:Lcom/parse/ParseInstallation;

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
    .line 296
    iget-object v0, p0, Lcom/parse/ParseInstallation$6;->this$0:Lcom/parse/ParseInstallation;

    # invokes: Lcom/parse/ParseInstallation;->maybeFlushToDiskAsync(Lcom/parse/ParseInstallation;)LN;
    invoke-static {v0}, Lcom/parse/ParseInstallation;->access$100(Lcom/parse/ParseInstallation;)LN;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 293
    invoke-virtual {p0, p1}, Lcom/parse/ParseInstallation$6;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
