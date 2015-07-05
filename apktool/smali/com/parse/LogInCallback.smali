.class public abstract Lcom/parse/LogInCallback;
.super Lcom/parse/ParseCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parse/ParseCallback",
        "<",
        "Lcom/parse/ParseUser;",
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
.method public abstract done(Lcom/parse/ParseUser;Lcom/parse/ParseException;)V
.end method

.method internalDone(Lcom/parse/ParseUser;Lcom/parse/ParseException;)V
    .locals 0

    .prologue
    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/parse/LogInCallback;->done(Lcom/parse/ParseUser;Lcom/parse/ParseException;)V

    .line 44
    return-void
.end method

.method bridge synthetic internalDone(Ljava/lang/Object;Lcom/parse/ParseException;)V
    .locals 0

    .prologue
    .line 29
    check-cast p1, Lcom/parse/ParseUser;

    invoke-virtual {p0, p1, p2}, Lcom/parse/LogInCallback;->internalDone(Lcom/parse/ParseUser;Lcom/parse/ParseException;)V

    return-void
.end method
