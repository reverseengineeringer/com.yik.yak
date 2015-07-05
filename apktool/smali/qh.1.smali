.class public abstract Lqh;
.super LpN;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lqf;",
        "BuilderType:",
        "Lqh;",
        ">",
        "LpN",
        "<TBuilderType;>;"
    }
.end annotation


# instance fields
.field private a:LpT;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, LpN;-><init>()V

    .line 103
    sget-object v0, LpT;->a:LpT;

    iput-object v0, p0, Lqh;->a:LpT;

    .line 59
    return-void
.end method


# virtual methods
.method public final a(LpT;)Lqh;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LpT;",
            ")TBuilderType;"
        }
    .end annotation

    .prologue
    .line 99
    iput-object p1, p0, Lqh;->a:LpT;

    .line 100
    return-object p0
.end method

.method public abstract a(Lqf;)Lqh;
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
    invoke-virtual {p0}, Lqh;->f()Lqh;

    move-result-object v0

    return-object v0
.end method

.method public abstract e()Lqf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation
.end method

.method public f()Lqh;
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

.method public synthetic g()LpN;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lqh;->f()Lqh;

    move-result-object v0

    return-object v0
.end method

.method public synthetic p()Lqy;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lqh;->e()Lqf;

    move-result-object v0

    return-object v0
.end method

.method public final r()LpT;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lqh;->a:LpT;

    return-object v0
.end method
