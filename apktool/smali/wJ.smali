.class LwJ;
.super LxC;
.source "SourceFile"


# instance fields
.field private final a:LxL;

.field private final b:LJT;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(LxL;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 648
    invoke-direct {p0}, LxC;-><init>()V

    .line 649
    iput-object p1, p0, LwJ;->a:LxL;

    .line 650
    iput-object p2, p0, LwJ;->c:Ljava/lang/String;

    .line 651
    iput-object p3, p0, LwJ;->d:Ljava/lang/String;

    .line 653
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, LxL;->a(I)LKl;

    move-result-object v0

    .line 654
    new-instance v1, LwK;

    invoke-direct {v1, p0, v0, p1}, LwK;-><init>(LwJ;LKl;LxL;)V

    invoke-static {v1}, LKa;->a(LKl;)LJT;

    move-result-object v0

    iput-object v0, p0, LwJ;->b:LJT;

    .line 660
    return-void
.end method

.method static synthetic a(LwJ;)LxL;
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, LwJ;->a:LxL;

    return-object v0
.end method


# virtual methods
.method public a()Lxn;
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, LwJ;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, LwJ;->c:Ljava/lang/String;

    invoke-static {v0}, Lxn;->a(Ljava/lang/String;)Lxn;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()J
    .locals 3

    .prologue
    const-wide/16 v0, -0x1

    .line 668
    :try_start_0
    iget-object v2, p0, LwJ;->d:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, LwJ;->d:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 670
    :cond_0
    :goto_0
    return-wide v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public c()LJT;
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, LwJ;->b:LJT;

    return-object v0
.end method
