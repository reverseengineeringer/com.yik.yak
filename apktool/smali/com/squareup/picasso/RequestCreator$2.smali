.class final Lcom/squareup/picasso/RequestCreator$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$e:Ljava/lang/InterruptedException;


# direct methods
.method constructor <init>(Ljava/lang/InterruptedException;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/squareup/picasso/RequestCreator$2;->val$e:Ljava/lang/InterruptedException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 70
    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v1, p0, Lcom/squareup/picasso/RequestCreator$2;->val$e:Ljava/lang/InterruptedException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
