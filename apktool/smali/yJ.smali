.class public final LyJ;
.super LxM;
.source "SourceFile"


# instance fields
.field private final a:Lxs;

.field private final b:LKB;


# direct methods
.method public constructor <init>(Lxs;LKB;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, LxM;-><init>()V

    .line 28
    iput-object p1, p0, LyJ;->a:Lxs;

    .line 29
    iput-object p2, p0, LyJ;->b:LKB;

    .line 30
    return-void
.end method


# virtual methods
.method public a()Lxx;
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, LyJ;->a:Lxs;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lxs;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    if-eqz v0, :cond_0

    invoke-static {v0}, Lxx;->a(Ljava/lang/String;)Lxx;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, LyJ;->a:Lxs;

    invoke-static {v0}, LyH;->a(Lxs;)J

    move-result-wide v0

    return-wide v0
.end method

.method public c()LKB;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, LyJ;->b:LKB;

    return-object v0
.end method
