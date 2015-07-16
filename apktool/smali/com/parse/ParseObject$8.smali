.class Lcom/parse/ParseObject$8;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseObject;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject;)V
    .locals 0

    .prologue
    .line 1306
    iput-object p1, p0, Lcom/parse/ParseObject$8;->this$0:Lcom/parse/ParseObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1306
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$8;->then(LN;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(LN;)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1309
    iget-object v0, p0, Lcom/parse/ParseObject$8;->this$0:Lcom/parse/ParseObject;

    # getter for: Lcom/parse/ParseObject;->saveEvent:Lcom/parse/ParseMulticastDelegate;
    invoke-static {v0}, Lcom/parse/ParseObject;->access$200(Lcom/parse/ParseObject;)Lcom/parse/ParseMulticastDelegate;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParseObject$8;->this$0:Lcom/parse/ParseObject;

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseMulticastDelegate;->invoke(Ljava/lang/Object;Lcom/parse/ParseException;)V

    .line 1310
    return-object v2
.end method
