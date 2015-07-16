.class LIT;
.super LIV;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LIV",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic a:LIS;


# direct methods
.method constructor <init>(LIS;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, LIT;->a:LIS;

    invoke-direct {p0, p2, p3}, LIV;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()LIN;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "LIN",
            "<",
            "LJa;",
            ">;:",
            "LIW;",
            ":",
            "LJa;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, LIT;->a:LIS;

    invoke-static {v0}, LIS;->a(LIS;)LIR;

    move-result-object v0

    return-object v0
.end method
