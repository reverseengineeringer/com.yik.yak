.class public abstract LpQ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LqC;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BuilderType:",
        "LpQ;",
        ">",
        "Ljava/lang/Object;",
        "LqC;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    return-void
.end method

.method protected static a(LqB;)LqU;
    .locals 1

    .prologue
    .line 292
    new-instance v0, LqU;

    invoke-direct {v0, p0}, LqU;-><init>(LqB;)V

    return-object v0
.end method


# virtual methods
.method public abstract b(LpZ;Lqd;)LpQ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LpZ;",
            "Lqd;",
            ")TBuilderType;"
        }
    .end annotation
.end method

.method public synthetic c(LpZ;Lqd;)LqC;
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0, p1, p2}, LpQ;->b(LpZ;Lqd;)LpQ;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, LpQ;->g()LpQ;

    move-result-object v0

    return-object v0
.end method

.method public abstract g()LpQ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation
.end method
