.class public abstract LpS;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LqF;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType::",
        "LqB;",
        ">",
        "Ljava/lang/Object;",
        "LqF",
        "<TMessageType;>;"
    }
.end annotation


# static fields
.field private static final a:Lqd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lqd;->a()Lqd;

    move-result-object v0

    sput-object v0, LpS;->a:Lqd;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(LqB;)LqU;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)",
            "LqU;"
        }
    .end annotation

    .prologue
    .line 28
    instance-of v0, p1, LpP;

    if-eqz v0, :cond_0

    .line 29
    check-cast p1, LpP;

    invoke-virtual {p1}, LpP;->Q()LqU;

    move-result-object v0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    instance-of v0, p1, LpR;

    if-eqz v0, :cond_1

    .line 32
    check-cast p1, LpR;

    invoke-virtual {p1}, LpR;->b()LqU;

    move-result-object v0

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, LqU;

    invoke-direct {v0, p1}, LqU;-><init>(LqB;)V

    goto :goto_0
.end method

.method private b(LqB;)LqB;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TMessageType;"
        }
    .end annotation

    .prologue
    .line 46
    if-eqz p1, :cond_0

    invoke-interface {p1}, LqB;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    invoke-direct {p0, p1}, LpS;->a(LqB;)LqU;

    move-result-object v0

    invoke-virtual {v0}, LqU;->a()Lqu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lqu;->a(LqB;)Lqu;

    move-result-object v0

    throw v0

    .line 51
    :cond_0
    return-object p1
.end method


# virtual methods
.method public a(LpW;Lqd;)LqB;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LpW;",
            "Lqd;",
            ")TMessageType;"
        }
    .end annotation

    .prologue
    .line 79
    :try_start_0
    invoke-virtual {p1}, LpW;->h()LpZ;

    move-result-object v1

    .line 80
    invoke-virtual {p0, v1, p2}, LpS;->b(LpZ;Lqd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LqB;
    :try_end_0
    .catch Lqu; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 82
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v1, v2}, LpZ;->a(I)V
    :try_end_1
    .catch Lqu; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 86
    return-object v0

    .line 83
    :catch_0
    move-exception v1

    .line 84
    :try_start_2
    invoke-virtual {v1, v0}, Lqu;->a(LqB;)Lqu;

    move-result-object v0

    throw v0
    :try_end_2
    .catch Lqu; {:try_start_2 .. :try_end_2} :catch_1
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

.method public b(LpW;Lqd;)LqB;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LpW;",
            "Lqd;",
            ")TMessageType;"
        }
    .end annotation

    .prologue
    .line 104
    invoke-virtual {p0, p1, p2}, LpS;->a(LpW;Lqd;)LqB;

    move-result-object v0

    invoke-direct {p0, v0}, LpS;->b(LqB;)LqB;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(LpW;Lqd;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1, p2}, LpS;->b(LpW;Lqd;)LqB;

    move-result-object v0

    return-object v0
.end method
