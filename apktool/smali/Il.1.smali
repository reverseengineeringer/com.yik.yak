.class LIl;
.super LIn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LIn",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic a:LIk;


# direct methods
.method constructor <init>(LIk;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, LIl;->a:LIk;

    invoke-direct {p0, p2, p3}, LIn;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()LIf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "LIf",
            "<",
            "LIs;",
            ">;:",
            "LIo;",
            ":",
            "LIs;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, LIl;->a:LIk;

    invoke-static {v0}, LIk;->a(LIk;)LIj;

    move-result-object v0

    return-object v0
.end method
