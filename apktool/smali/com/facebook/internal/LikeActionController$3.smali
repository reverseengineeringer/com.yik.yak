.class final Lcom/facebook/internal/LikeActionController$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$callback:Lcom/facebook/internal/LikeActionController$CreationCallback;

.field final synthetic val$controller:Lcom/facebook/internal/LikeActionController;


# direct methods
.method constructor <init>(Lcom/facebook/internal/LikeActionController$CreationCallback;Lcom/facebook/internal/LikeActionController;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/facebook/internal/LikeActionController$3;->val$callback:Lcom/facebook/internal/LikeActionController$CreationCallback;

    iput-object p2, p0, Lcom/facebook/internal/LikeActionController$3;->val$controller:Lcom/facebook/internal/LikeActionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController$3;->val$callback:Lcom/facebook/internal/LikeActionController$CreationCallback;

    iget-object v1, p0, Lcom/facebook/internal/LikeActionController$3;->val$controller:Lcom/facebook/internal/LikeActionController;

    invoke-interface {v0, v1}, Lcom/facebook/internal/LikeActionController$CreationCallback;->onComplete(Lcom/facebook/internal/LikeActionController;)V

    .line 270
    return-void
.end method
