.class final LdX;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lqt",
        "<",
        "LdW;",
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
.method public a(I)LdW;
    .locals 1

    .prologue
    .line 5686
    invoke-static {p1}, LdW;->a(I)LdW;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(I)Lqs;
    .locals 1

    .prologue
    .line 5684
    invoke-virtual {p0, p1}, LdX;->a(I)LdW;

    move-result-object v0

    return-object v0
.end method
