.class final Lex;
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
        "Lew;",
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
.method public a(I)Lew;
    .locals 1

    .prologue
    .line 471
    invoke-static {p1}, Lew;->a(I)Lew;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(I)Lqs;
    .locals 1

    .prologue
    .line 469
    invoke-virtual {p0, p1}, Lex;->a(I)Lew;

    move-result-object v0

    return-object v0
.end method
