.class LGv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LwT;


# instance fields
.field final synthetic a:LGs;


# direct methods
.method constructor <init>(LGs;)V
    .locals 0

    .prologue
    .line 940
    iput-object p1, p0, LGv;->a:LGs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lxt;Ljava/io/IOException;)V
    .locals 4

    .prologue
    .line 954
    const-string v0, "trackViaYikYak"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, LGF;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 955
    return-void
.end method

.method public a(Lxz;)V
    .locals 4

    .prologue
    .line 945
    :try_start_0
    const-string v0, "trackViaYikYak"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lxz;->h()LxC;

    move-result-object v3

    invoke-virtual {v3}, LxC;->f()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, LGF;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 950
    :goto_0
    return-void

    .line 947
    :catch_0
    move-exception v0

    goto :goto_0
.end method
