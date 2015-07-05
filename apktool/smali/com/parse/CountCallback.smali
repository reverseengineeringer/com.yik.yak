.class public abstract Lcom/parse/CountCallback;
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/parse/ParseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract done(ILcom/parse/ParseException;)V
.end method

.method internalDone(Ljava/lang/Integer;Lcom/parse/ParseException;)V
    .locals 2

    .prologue
    .line 42
    if-nez p2, :cond_0

    .line 43
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/parse/CountCallback;->done(ILcom/parse/ParseException;)V

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p2}, Lcom/parse/CountCallback;->done(ILcom/parse/ParseException;)V

    goto :goto_0
.end method

.method bridge synthetic internalDone(Ljava/lang/Object;Lcom/parse/ParseException;)V
    .locals 0

    .prologue
    .line 29
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/parse/CountCallback;->internalDone(Ljava/lang/Integer;Lcom/parse/ParseException;)V

    return-void
.end method
