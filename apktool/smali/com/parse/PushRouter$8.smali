.class final Lcom/parse/PushRouter$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$done:Ljava/util/concurrent/Semaphore;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Intent;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/parse/PushRouter$8;->val$intent:Landroid/content/Intent;

    iput-object p2, p0, Lcom/parse/PushRouter$8;->val$done:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 241
    # invokes: Lcom/parse/PushRouter;->getInstance()Lcom/parse/PushRouter;
    invoke-static {}, Lcom/parse/PushRouter;->access$000()Lcom/parse/PushRouter;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/PushRouter$8;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/parse/PushRouter;->handleGcmPush(Landroid/content/Intent;)Lcom/parse/PushRouter$HandlePushResult;

    .line 242
    iget-object v0, p0, Lcom/parse/PushRouter$8;->val$done:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 243
    return-void
.end method
