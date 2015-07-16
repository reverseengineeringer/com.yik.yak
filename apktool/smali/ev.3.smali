.class final Lev;
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
        "Leu;",
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
.method public a(I)Leu;
    .locals 1

    .prologue
    .line 662
    invoke-static {p1}, Leu;->a(I)Leu;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(I)Lqs;
    .locals 1

    .prologue
    .line 660
    invoke-virtual {p0, p1}, Lev;->a(I)Leu;

    move-result-object v0

    return-object v0
.end method
