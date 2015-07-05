.class final Lcom/parse/PushRouter$5;
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
        "Lcom/parse/PushRoutes$Route;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$channel:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/parse/PushRouter$5;->val$channel:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LR;)Lcom/parse/PushRoutes$Route;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/parse/PushRoutes$Route;"
        }
    .end annotation

    .prologue
    .line 155
    # invokes: Lcom/parse/PushRouter;->getInstance()Lcom/parse/PushRouter;
    invoke-static {}, Lcom/parse/PushRouter;->access$000()Lcom/parse/PushRouter;

    move-result-object v0

    # getter for: Lcom/parse/PushRouter;->routes:Lcom/parse/PushRoutes;
    invoke-static {v0}, Lcom/parse/PushRouter;->access$200(Lcom/parse/PushRouter;)Lcom/parse/PushRoutes;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/PushRouter$5;->val$channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/parse/PushRoutes;->get(Ljava/lang/String;)Lcom/parse/PushRoutes$Route;

    move-result-object v0

    .line 157
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/parse/PushRouter$5;->val$channel:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 158
    # invokes: Lcom/parse/PushRouter;->getInstance()Lcom/parse/PushRouter;
    invoke-static {}, Lcom/parse/PushRouter;->access$000()Lcom/parse/PushRouter;

    move-result-object v0

    # getter for: Lcom/parse/PushRouter;->routes:Lcom/parse/PushRoutes;
    invoke-static {v0}, Lcom/parse/PushRouter;->access$200(Lcom/parse/PushRouter;)Lcom/parse/PushRoutes;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parse/PushRoutes;->get(Ljava/lang/String;)Lcom/parse/PushRoutes$Route;

    move-result-object v0

    .line 160
    :cond_0
    return-object v0
.end method

.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/parse/PushRouter$5;->then(LR;)Lcom/parse/PushRoutes$Route;

    move-result-object v0

    return-object v0
.end method
