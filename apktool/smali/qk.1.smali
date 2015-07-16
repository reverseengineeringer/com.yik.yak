.class public abstract Lqk;
.super LpQ;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lqi;",
        "BuilderType:",
        "Lqk;",
        ">",
        "LpQ",
        "<TBuilderType;>;"
    }
.end annotation


# instance fields
.field private a:LpW;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, LpQ;-><init>()V

    .line 103
    sget-object v0, LpW;->a:LpW;

    iput-object v0, p0, Lqk;->a:LpW;

    .line 59
    return-void
.end method


# virtual methods
.method public final a(LpW;)Lqk;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LpW;",
            ")TBuilderType;"
        }
    .end annotation

    .prologue
    .line 99
    iput-object p1, p0, Lqk;->a:LpW;

    .line 100
    return-object p0
.end method

.method public abstract a(Lqi;)Lqk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lqk;->f()Lqk;

    move-result-object v0

    return-object v0
.end method

.method public abstract e()Lqi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation
.end method

.method public f()Lqk;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is supposed to be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic g()LpQ;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lqk;->f()Lqk;

    move-result-object v0

    return-object v0
.end method

.method public synthetic p()LqB;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lqk;->e()Lqi;

    move-result-object v0

    return-object v0
.end method

.method public final r()LpW;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lqk;->a:LpW;

    return-object v0
.end method
