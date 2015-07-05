.class final Lcom/parse/EventuallyPin$1;
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
        "Lcom/parse/EventuallyPin;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$pin:Lcom/parse/EventuallyPin;


# direct methods
.method constructor <init>(Lcom/parse/EventuallyPin;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/parse/EventuallyPin$1;->val$pin:Lcom/parse/EventuallyPin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LR;)Lcom/parse/EventuallyPin;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/parse/EventuallyPin;"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/parse/EventuallyPin$1;->val$pin:Lcom/parse/EventuallyPin;

    return-object v0
.end method

.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 120
    invoke-virtual {p0, p1}, Lcom/parse/EventuallyPin$1;->then(LR;)Lcom/parse/EventuallyPin;

    move-result-object v0

    return-object v0
.end method
