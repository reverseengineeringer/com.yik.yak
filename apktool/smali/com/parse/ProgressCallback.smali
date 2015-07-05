.class public abstract Lcom/parse/ProgressCallback;
.super Lcom/parse/ParseCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parse/ParseCallback",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field maxProgressSoFar:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/parse/ParseCallback;-><init>()V

    .line 9
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ProgressCallback;->maxProgressSoFar:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public abstract done(Ljava/lang/Integer;)V
.end method

.method final internalDone(Ljava/lang/Integer;Lcom/parse/ParseException;)V
    .locals 2

    .prologue
    .line 18
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/parse/ProgressCallback;->maxProgressSoFar:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 19
    iput-object p1, p0, Lcom/parse/ProgressCallback;->maxProgressSoFar:Ljava/lang/Integer;

    .line 20
    invoke-virtual {p0, p1}, Lcom/parse/ProgressCallback;->done(Ljava/lang/Integer;)V

    .line 22
    :cond_0
    return-void
.end method

.method bridge synthetic internalDone(Ljava/lang/Object;Lcom/parse/ParseException;)V
    .locals 0

    .prologue
    .line 8
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/parse/ProgressCallback;->internalDone(Ljava/lang/Integer;Lcom/parse/ParseException;)V

    return-void
.end method
