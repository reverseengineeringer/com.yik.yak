.class Lcom/facebook/internal/LikeActionController$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/facebook/internal/LikeActionController$4;

.field final synthetic val$shouldClearDisk:Z


# direct methods
.method constructor <init>(Lcom/facebook/internal/LikeActionController$4;Z)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/facebook/internal/LikeActionController$4$1;->this$0:Lcom/facebook/internal/LikeActionController$4;

    iput-boolean p2, p0, Lcom/facebook/internal/LikeActionController$4$1;->val$shouldClearDisk:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 311
    iget-boolean v0, p0, Lcom/facebook/internal/LikeActionController$4$1;->val$shouldClearDisk:Z

    if-eqz v0, :cond_0

    .line 312
    # getter for: Lcom/facebook/internal/LikeActionController;->objectSuffix:I
    invoke-static {}, Lcom/facebook/internal/LikeActionController;->access$300()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    rem-int/lit16 v0, v0, 0x3e8

    # setter for: Lcom/facebook/internal/LikeActionController;->objectSuffix:I
    invoke-static {v0}, Lcom/facebook/internal/LikeActionController;->access$302(I)I

    .line 313
    # getter for: Lcom/facebook/internal/LikeActionController;->applicationContext:Landroid/content/Context;
    invoke-static {}, Lcom/facebook/internal/LikeActionController;->access$400()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.facebook.LikeActionController.CONTROLLER_STORE_KEY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OBJECT_SUFFIX"

    # getter for: Lcom/facebook/internal/LikeActionController;->objectSuffix:I
    invoke-static {}, Lcom/facebook/internal/LikeActionController;->access$300()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 320
    # getter for: Lcom/facebook/internal/LikeActionController;->cache:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Lcom/facebook/internal/LikeActionController;->access$500()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 321
    # getter for: Lcom/facebook/internal/LikeActionController;->controllerDiskCache:Lcom/facebook/internal/FileLruCache;
    invoke-static {}, Lcom/facebook/internal/LikeActionController;->access$600()Lcom/facebook/internal/FileLruCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/internal/FileLruCache;->clearCache()V

    .line 324
    :cond_0
    const/4 v0, 0x0

    const-string v1, "com.facebook.sdk.LikeActionController.DID_RESET"

    # invokes: Lcom/facebook/internal/LikeActionController;->broadcastAction(Lcom/facebook/internal/LikeActionController;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/facebook/internal/LikeActionController;->access$700(Lcom/facebook/internal/LikeActionController;Ljava/lang/String;)V

    .line 325
    # setter for: Lcom/facebook/internal/LikeActionController;->isPendingBroadcastReset:Z
    invoke-static {v3}, Lcom/facebook/internal/LikeActionController;->access$202(Z)Z

    .line 326
    return-void
.end method
