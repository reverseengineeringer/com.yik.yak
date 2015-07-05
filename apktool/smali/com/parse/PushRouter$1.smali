.class final Lcom/parse/PushRouter$1;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$channel:Ljava/lang/String;

.field final synthetic val$cls:Ljava/lang/Class;

.field final synthetic val$iconId:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;I)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/parse/PushRouter$1;->val$channel:Ljava/lang/String;

    iput-object p2, p0, Lcom/parse/PushRouter$1;->val$cls:Ljava/lang/Class;

    iput p3, p0, Lcom/parse/PushRouter$1;->val$iconId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/parse/PushRouter$1;->then(LR;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(LR;)Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 77
    # invokes: Lcom/parse/PushRouter;->getInstance()Lcom/parse/PushRouter;
    invoke-static {}, Lcom/parse/PushRouter;->access$000()Lcom/parse/PushRouter;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/PushRouter$1;->val$channel:Ljava/lang/String;

    iget-object v2, p0, Lcom/parse/PushRouter$1;->val$cls:Ljava/lang/Class;

    iget v3, p0, Lcom/parse/PushRouter$1;->val$iconId:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/parse/PushRouter;->subscribe(Ljava/lang/String;Ljava/lang/Class;I)V

    .line 78
    const/4 v0, 0x0

    return-object v0
.end method
