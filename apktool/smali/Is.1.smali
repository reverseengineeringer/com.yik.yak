.class public LIs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:LHR;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LHR",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:LHP;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LHP",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, LIt;

    invoke-direct {v0, p0}, LIt;-><init>(LIs;)V

    iput-object v0, p0, LIs;->a:LHR;

    .line 35
    new-instance v0, LHP;

    invoke-direct {v0}, LHP;-><init>()V

    iput-object v0, p0, LIs;->b:LHP;

    .line 36
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 40
    :try_start_0
    iget-object v0, p0, LIs;->b:LHP;

    iget-object v2, p0, LIs;->a:LHR;

    invoke-virtual {v0, p1, v2}, LHP;->a(Landroid/content/Context;LHR;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 42
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 45
    :cond_0
    :goto_0
    return-object v0

    .line 44
    :catch_0
    move-exception v0

    invoke-static {}, LHA;->g()LHM;

    move-object v0, v1

    .line 45
    goto :goto_0
.end method
