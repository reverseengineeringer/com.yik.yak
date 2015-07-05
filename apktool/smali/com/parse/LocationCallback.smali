.class public abstract Lcom/parse/LocationCallback;
.super Lcom/parse/ParseCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parse/ParseCallback",
        "<",
        "Lcom/parse/ParseGeoPoint;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/parse/ParseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract done(Lcom/parse/ParseGeoPoint;Lcom/parse/ParseException;)V
.end method

.method final internalDone(Lcom/parse/ParseGeoPoint;Lcom/parse/ParseException;)V
    .locals 0

    .prologue
    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/parse/LocationCallback;->done(Lcom/parse/ParseGeoPoint;Lcom/parse/ParseException;)V

    .line 44
    return-void
.end method

.method bridge synthetic internalDone(Ljava/lang/Object;Lcom/parse/ParseException;)V
    .locals 0

    .prologue
    .line 30
    check-cast p1, Lcom/parse/ParseGeoPoint;

    invoke-virtual {p0, p1, p2}, Lcom/parse/LocationCallback;->internalDone(Lcom/parse/ParseGeoPoint;Lcom/parse/ParseException;)V

    return-void
.end method
