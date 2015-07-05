.class LIk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Executor;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:LIj;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;LIj;)V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, LIk;->a:Ljava/util/concurrent/Executor;

    .line 92
    iput-object p2, p0, LIk;->b:LIj;

    .line 93
    return-void
.end method

.method static synthetic a(LIk;)LIj;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, LIk;->b:LIj;

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, LIk;->a:Ljava/util/concurrent/Executor;

    new-instance v1, LIl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, LIl;-><init>(LIk;Ljava/lang/Runnable;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 105
    return-void
.end method
