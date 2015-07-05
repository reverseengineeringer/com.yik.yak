.class public abstract LpP;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LqC;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType::",
        "Lqy;",
        ">",
        "Ljava/lang/Object;",
        "LqC",
        "<TMessageType;>;"
    }
.end annotation


# static fields
.field private static final a:Lqa;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lqa;->a()Lqa;

    move-result-object v0

    sput-object v0, LpP;->a:Lqa;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lqy;)LqR;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)",
            "LqR;"
        }
    .end annotation

    .prologue
    .line 28
    instance-of v0, p1, LpM;

    if-eqz v0, :cond_0

    .line 29
    check-cast p1, LpM;

    invoke-virtual {p1}, LpM;->Q()LqR;

    move-result-object v0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    instance-of v0, p1, LpO;

    if-eqz v0, :cond_1

    .line 32
    check-cast p1, LpO;

    invoke-virtual {p1}, LpO;->b()LqR;

    move-result-object v0

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, LqR;

    invoke-direct {v0, p1}, LqR;-><init>(Lqy;)V

    goto :goto_0
.end method

.method private b(Lqy;)Lqy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TMessageType;"
        }
    .end annotation

    .prologue
    .line 46
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lqy;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    invoke-direct {p0, p1}, LpP;->a(Lqy;)LqR;

    move-result-object v0

    invoke-virtual {v0}, LqR;->a()Lqr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lqr;->a(Lqy;)Lqr;

    move-result-object v0

    throw v0

    .line 51
    :cond_0
    return-object p1
.end method


# virtual methods
.method public a(LpT;Lqa;)Lqy;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LpT;",
            "Lqa;",
            ")TMessageType;"
        }
    .end annotation

    .prologue
    .line 79
    :try_start_0
    invoke-virtual {p1}, LpT;->h()LpW;

    move-result-object v1

    .line 80
    invoke-virtual {p0, v1, p2}, LpP;->b(LpW;Lqa;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqy;
    :try_end_0
    .catch Lqr; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 82
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v1, v2}, LpW;->a(I)V
    :try_end_1
    .catch Lqr; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 86
    return-object v0

    .line 83
    :catch_0
    move-exception v1

    .line 84
    :try_start_2
    invoke-virtual {v1, v0}, Lqr;->a(Lqy;)Lqr;

    move-result-object v0

    throw v0
    :try_end_2
    .catch Lqr; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 87
    :catch_1
    move-exception v0

    .line 88
    throw v0

    .line 89
    :catch_2
    move-exception v0

    .line 90
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Reading from a ByteString threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public b(LpT;Lqa;)Lqy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LpT;",
            "Lqa;",
            ")TMessageType;"
        }
    .end annotation

    .prologue
    .line 104
    invoke-virtual {p0, p1, p2}, LpP;->a(LpT;Lqa;)Lqy;

    move-result-object v0

    invoke-direct {p0, v0}, LpP;->b(Lqy;)Lqy;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(LpT;Lqa;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1, p2}, LpP;->b(LpT;Lqa;)Lqy;

    move-result-object v0

    return-object v0
.end method
