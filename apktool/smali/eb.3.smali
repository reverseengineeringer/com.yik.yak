.class final Leb;
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
        "Lea;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 5684
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lea;
    .locals 1

    .prologue
    .line 5686
    invoke-static {p1}, Lea;->a(I)Lea;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(I)Lqp;
    .locals 1

    .prologue
    .line 5684
    invoke-virtual {p0, p1}, Leb;->a(I)Lea;

    move-result-object v0

    return-object v0
.end method
