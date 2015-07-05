.class Lcom/facebook/internal/LikeActionController$CreateLikeActionControllerWorkItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private callback:Lcom/facebook/internal/LikeActionController$CreationCallback;

.field private objectId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/facebook/internal/LikeActionController$CreationCallback;)V
    .locals 0

    .prologue
    .line 1474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1475
    iput-object p1, p0, Lcom/facebook/internal/LikeActionController$CreateLikeActionControllerWorkItem;->objectId:Ljava/lang/String;

    .line 1476
    iput-object p2, p0, Lcom/facebook/internal/LikeActionController$CreateLikeActionControllerWorkItem;->callback:Lcom/facebook/internal/LikeActionController$CreationCallback;

    .line 1477
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1481
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController$CreateLikeActionControllerWorkItem;->objectId:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/internal/LikeActionController$CreateLikeActionControllerWorkItem;->callback:Lcom/facebook/internal/LikeActionController$CreationCallback;

    # invokes: Lcom/facebook/internal/LikeActionController;->createControllerForObjectId(Ljava/lang/String;Lcom/facebook/internal/LikeActionController$CreationCallback;)V
    invoke-static {v0, v1}, Lcom/facebook/internal/LikeActionController;->access$3000(Ljava/lang/String;Lcom/facebook/internal/LikeActionController$CreationCallback;)V

    .line 1482
    return-void
.end method
