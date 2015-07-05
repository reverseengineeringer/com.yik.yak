.class public abstract Lcom/parse/ConfigCallback;
.super Lcom/parse/ParseCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parse/ParseCallback",
        "<",
        "Lcom/parse/ParseConfig;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/parse/ParseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract done(Lcom/parse/ParseConfig;Lcom/parse/ParseException;)V
.end method

.method final internalDone(Lcom/parse/ParseConfig;Lcom/parse/ParseException;)V
    .locals 0

    .prologue
    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/parse/ConfigCallback;->done(Lcom/parse/ParseConfig;Lcom/parse/ParseException;)V

    .line 9
    return-void
.end method

.method bridge synthetic internalDone(Ljava/lang/Object;Lcom/parse/ParseException;)V
    .locals 0

    .prologue
    .line 3
    check-cast p1, Lcom/parse/ParseConfig;

    invoke-virtual {p0, p1, p2}, Lcom/parse/ConfigCallback;->internalDone(Lcom/parse/ParseConfig;Lcom/parse/ParseException;)V

    return-void
.end method
