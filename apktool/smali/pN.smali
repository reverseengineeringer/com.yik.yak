.class public abstract LpN;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BuilderType:",
        "LpN;",
        ">",
        "Ljava/lang/Object;",
        "Lqz;"
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

.method protected static a(Lqy;)LqR;
    .locals 1

    .prologue
    .line 292
    new-instance v0, LqR;

    invoke-direct {v0, p0}, LqR;-><init>(Lqy;)V

    return-object v0
.end method


# virtual methods
.method public abstract b(LpW;Lqa;)LpN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LpW;",
            "Lqa;",
            ")TBuilderType;"
        }
    .end annotation
.end method

.method public synthetic c(LpW;Lqa;)Lqz;
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0, p1, p2}, LpN;->b(LpW;Lqa;)LpN;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, LpN;->g()LpN;

    move-result-object v0

    return-object v0
.end method

.method public abstract g()LpN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation
.end method
