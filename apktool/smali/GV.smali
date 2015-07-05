.class public LGV;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:[LHc;

.field private c:LIq;

.field private d:Landroid/os/Handler;

.field private e:LHe;

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:LGX;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LGX",
            "<",
            "LGS;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    if-nez p1, :cond_0

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, LGV;->a:Landroid/content/Context;

    .line 79
    return-void
.end method


# virtual methods
.method public a()LGS;
    .locals 9

    .prologue
    .line 209
    iget-object v0, p0, LGV;->b:[LHc;

    if-nez v0, :cond_0

    .line 210
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Kits must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_0
    iget-object v0, p0, LGV;->c:LIq;

    if-nez v0, :cond_1

    .line 214
    invoke-static {}, LIq;->a()LIq;

    move-result-object v0

    iput-object v0, p0, LGV;->c:LIq;

    .line 217
    :cond_1
    iget-object v0, p0, LGV;->d:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 218
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, LGV;->d:Landroid/os/Handler;

    .line 221
    :cond_2
    iget-object v0, p0, LGV;->e:LHe;

    if-nez v0, :cond_3

    .line 222
    iget-boolean v0, p0, LGV;->f:Z

    if-eqz v0, :cond_6

    .line 223
    new-instance v0, LGR;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, LGR;-><init>(I)V

    iput-object v0, p0, LGV;->e:LHe;

    .line 230
    :cond_3
    :goto_0
    iget-object v0, p0, LGV;->h:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 231
    iget-object v0, p0, LGV;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LGV;->h:Ljava/lang/String;

    .line 234
    :cond_4
    iget-object v0, p0, LGV;->i:LGX;

    if-nez v0, :cond_5

    .line 235
    sget-object v0, LGX;->d:LGX;

    iput-object v0, p0, LGV;->i:LGX;

    .line 238
    :cond_5
    iget-object v0, p0, LGV;->b:[LHc;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, LGS;->a(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v2

    .line 240
    new-instance v8, LHI;

    iget-object v0, p0, LGV;->a:Landroid/content/Context;

    iget-object v1, p0, LGV;->h:Ljava/lang/String;

    iget-object v3, p0, LGV;->g:Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v8, v0, v1, v3, v4}, LHI;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    .line 243
    new-instance v0, LGS;

    iget-object v1, p0, LGV;->a:Landroid/content/Context;

    iget-object v3, p0, LGV;->c:LIq;

    iget-object v4, p0, LGV;->d:Landroid/os/Handler;

    iget-object v5, p0, LGV;->e:LHe;

    iget-boolean v6, p0, LGV;->f:Z

    iget-object v7, p0, LGV;->i:LGX;

    invoke-direct/range {v0 .. v8}, LGS;-><init>(Landroid/content/Context;Ljava/util/Map;LIq;Landroid/os/Handler;LHe;ZLGX;LHI;)V

    return-object v0

    .line 225
    :cond_6
    new-instance v0, LGR;

    invoke-direct {v0}, LGR;-><init>()V

    iput-object v0, p0, LGV;->e:LHe;

    goto :goto_0
.end method

.method public varargs a([LHc;)LGV;
    .locals 2

    .prologue
    .line 85
    if-nez p1, :cond_0

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Kits must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Kits must not be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_1
    iget-object v0, p0, LGV;->b:[LHc;

    if-eqz v0, :cond_2

    .line 92
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Kits already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_2
    iput-object p1, p0, LGV;->b:[LHc;

    .line 96
    return-object p0
.end method
