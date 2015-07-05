.class final LeB;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lqq",
        "<",
        "LeA;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)LeA;
    .locals 1

    .prologue
    .line 471
    invoke-static {p1}, LeA;->a(I)LeA;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(I)Lqp;
    .locals 1

    .prologue
    .line 469
    invoke-virtual {p0, p1}, LeB;->a(I)LeA;

    move-result-object v0

    return-object v0
.end method
