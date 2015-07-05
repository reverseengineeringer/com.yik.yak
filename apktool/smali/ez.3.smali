.class final Lez;
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
        "Ley;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Ley;
    .locals 1

    .prologue
    .line 662
    invoke-static {p1}, Ley;->a(I)Ley;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(I)Lqp;
    .locals 1

    .prologue
    .line 660
    invoke-virtual {p0, p1}, Lez;->a(I)Ley;

    move-result-object v0

    return-object v0
.end method
