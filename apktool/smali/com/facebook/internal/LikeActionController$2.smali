.class final Lcom/facebook/internal/LikeActionController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$controllerToRefresh:Lcom/facebook/internal/LikeActionController;


# direct methods
.method constructor <init>(Lcom/facebook/internal/LikeActionController;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/facebook/internal/LikeActionController$2;->val$controllerToRefresh:Lcom/facebook/internal/LikeActionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController$2;->val$controllerToRefresh:Lcom/facebook/internal/LikeActionController;

    # invokes: Lcom/facebook/internal/LikeActionController;->refreshStatusAsync()V
    invoke-static {v0}, Lcom/facebook/internal/LikeActionController;->access$100(Lcom/facebook/internal/LikeActionController;)V

    .line 230
    return-void
.end method
