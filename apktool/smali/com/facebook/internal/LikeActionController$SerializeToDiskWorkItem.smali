.class Lcom/facebook/internal/LikeActionController$SerializeToDiskWorkItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private cacheKey:Ljava/lang/String;

.field private controllerJson:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1460
    iput-object p1, p0, Lcom/facebook/internal/LikeActionController$SerializeToDiskWorkItem;->cacheKey:Ljava/lang/String;

    .line 1461
    iput-object p2, p0, Lcom/facebook/internal/LikeActionController$SerializeToDiskWorkItem;->controllerJson:Ljava/lang/String;

    .line 1462
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1466
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController$SerializeToDiskWorkItem;->cacheKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/internal/LikeActionController$SerializeToDiskWorkItem;->controllerJson:Ljava/lang/String;

    # invokes: Lcom/facebook/internal/LikeActionController;->serializeToDiskSynchronously(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/facebook/internal/LikeActionController;->access$2900(Ljava/lang/String;Ljava/lang/String;)V

    .line 1467
    return-void
.end method
