.class final Lcom/parse/ParsePush$1;
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
.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/parse/ParsePush$1;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/parse/ParsePush$1;->then(LR;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(LR;)Ljava/lang/Void;
    .locals 1
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
    .line 56
    iget-boolean v0, p0, Lcom/parse/ParsePush$1;->val$enabled:Z

    if-nez v0, :cond_0

    .line 57
    sget-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/parse/PushService;->stopPpnsService(Landroid/content/Context;)V

    .line 61
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 59
    :cond_0
    sget-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/parse/PushService;->startServiceIfRequired(Landroid/content/Context;)V

    goto :goto_0
.end method
