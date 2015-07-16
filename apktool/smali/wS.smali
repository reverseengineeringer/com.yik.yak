.class LwS;
.super LxM;
.source "SourceFile"


# instance fields
.field private final a:LxV;

.field private final b:LKB;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(LxV;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 648
    invoke-direct {p0}, LxM;-><init>()V

    .line 649
    iput-object p1, p0, LwS;->a:LxV;

    .line 650
    iput-object p2, p0, LwS;->c:Ljava/lang/String;

    .line 651
    iput-object p3, p0, LwS;->d:Ljava/lang/String;

    .line 653
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, LxV;->a(I)LKT;

    move-result-object v0

    .line 654
    new-instance v1, LwT;

    invoke-direct {v1, p0, v0, p1}, LwT;-><init>(LwS;LKT;LxV;)V

    invoke-static {v1}, LKI;->a(LKT;)LKB;

    move-result-object v0

    iput-object v0, p0, LwS;->b:LKB;

    .line 660
    return-void
.end method

.method static synthetic a(LwS;)LxV;
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, LwS;->a:LxV;

    return-object v0
.end method


# virtual methods
.method public a()Lxx;
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, LwS;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, LwS;->c:Ljava/lang/String;

    invoke-static {v0}, Lxx;->a(Ljava/lang/String;)Lxx;

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
    iget-object v2, p0, LwS;->d:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, LwS;->d:Ljava/lang/String;

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

.method public c()LKB;
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, LwS;->b:LKB;

    return-object v0
.end method
