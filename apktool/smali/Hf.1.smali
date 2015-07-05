.class LHf;
.super LHc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LHc",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "LHc;",
            ">;"
        }
    .end annotation
.end field

.field private final g:LJa;

.field private h:Landroid/content/pm/PackageManager;

.field private i:Ljava/lang/String;

.field private j:Landroid/content/pm/PackageInfo;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "LHc;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, LHc;-><init>()V

    .line 41
    iput-object p1, p0, LHf;->a:Ljava/util/Collection;

    .line 42
    new-instance v0, LIP;

    invoke-direct {v0}, LIP;-><init>()V

    iput-object v0, p0, LHf;->g:LJa;

    .line 43
    return-void
.end method

.method private a(LJv;Ljava/util/Collection;)LJl;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LJv;",
            "Ljava/util/Collection",
            "<",
            "LHc;",
            ">;)",
            "LJl;"
        }
    .end annotation

    .prologue
    .line 163
    invoke-virtual {p0}, LHf;->C()Landroid/content/Context;

    move-result-object v0

    .line 164
    new-instance v1, LHu;

    invoke-direct {v1}, LHu;-><init>()V

    invoke-virtual {v1, v0}, LHu;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-static {v0}, LHw;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 167
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, LHw;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 168
    iget-object v0, p0, LHf;->m:Ljava/lang/String;

    invoke-static {v0}, LHC;->a(Ljava/lang/String;)LHC;

    move-result-object v0

    invoke-virtual {v0}, LHC;->a()I

    move-result v7

    .line 169
    invoke-virtual {p0}, LHf;->B()LHI;

    move-result-object v0

    invoke-virtual {v0}, LHI;->c()Ljava/lang/String;

    move-result-object v2

    .line 171
    new-instance v0, LJl;

    iget-object v3, p0, LHf;->l:Ljava/lang/String;

    iget-object v4, p0, LHf;->k:Ljava/lang/String;

    iget-object v6, p0, LHf;->n:Ljava/lang/String;

    iget-object v8, p0, LHf;->o:Ljava/lang/String;

    const-string v9, "0"

    move-object v10, p1

    move-object v11, p2

    invoke-direct/range {v0 .. v11}, LJl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;LJv;Ljava/util/Collection;)V

    return-object v0
.end method

.method private a(LJm;LJv;Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LJm;",
            "LJv;",
            "Ljava/util/Collection",
            "<",
            "LHc;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 157
    invoke-direct {p0, p2, p3}, LHf;->a(LJv;Ljava/util/Collection;)LJl;

    move-result-object v0

    .line 158
    new-instance v1, LJJ;

    invoke-virtual {p0}, LHf;->e()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, LJm;->c:Ljava/lang/String;

    iget-object v4, p0, LHf;->g:LJa;

    invoke-direct {v1, p0, v2, v3, v4}, LJJ;-><init>(LHc;Ljava/lang/String;Ljava/lang/String;LJa;)V

    invoke-virtual {v1, v0}, LJJ;->a(LJl;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;LJm;Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "LJm;",
            "Ljava/util/Collection",
            "<",
            "LHc;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 107
    const/4 v0, 0x1

    .line 109
    const-string v1, "new"

    iget-object v2, p2, LJm;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 111
    invoke-direct {p0, p1, p2, p3}, LHf;->b(Ljava/lang/String;LJm;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    invoke-static {}, LJy;->a()LJy;

    move-result-object v0

    invoke-virtual {v0}, LJy;->d()Z

    move-result v0

    .line 132
    :cond_0
    :goto_0
    return v0

    .line 117
    :cond_1
    invoke-static {}, LGS;->g()LHe;

    .line 119
    const/4 v0, 0x0

    goto :goto_0

    .line 121
    :cond_2
    const-string v1, "configured"

    iget-object v2, p2, LJm;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 123
    invoke-static {}, LJy;->a()LJy;

    move-result-object v0

    invoke-virtual {v0}, LJy;->d()Z

    move-result v0

    goto :goto_0

    .line 124
    :cond_3
    iget-boolean v1, p2, LJm;->e:Z

    if-eqz v1, :cond_0

    .line 127
    invoke-static {}, LGS;->g()LHe;

    .line 129
    invoke-direct {p0, p1, p2, p3}, LHf;->c(Ljava/lang/String;LJm;Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private b(Ljava/lang/String;LJm;Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "LJm;",
            "Ljava/util/Collection",
            "<",
            "LHc;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 138
    invoke-virtual {p0}, LHf;->C()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, LJv;->a(Landroid/content/Context;Ljava/lang/String;)LJv;

    move-result-object v0

    invoke-direct {p0, v0, p3}, LHf;->a(LJv;Ljava/util/Collection;)LJl;

    move-result-object v0

    .line 140
    new-instance v1, LJp;

    invoke-virtual {p0}, LHf;->e()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, LJm;->c:Ljava/lang/String;

    iget-object v4, p0, LHf;->g:LJa;

    invoke-direct {v1, p0, v2, v3, v4}, LJp;-><init>(LHc;Ljava/lang/String;Ljava/lang/String;LJa;)V

    invoke-virtual {v1, v0}, LJp;->a(LJl;)Z

    move-result v0

    return v0
.end method

.method private c(Ljava/lang/String;LJm;Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "LJm;",
            "Ljava/util/Collection",
            "<",
            "LHc;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 149
    invoke-virtual {p0}, LHf;->C()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, LJv;->a(Landroid/content/Context;Ljava/lang/String;)LJv;

    move-result-object v0

    invoke-direct {p0, p2, v0, p3}, LHf;->a(LJm;LJv;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected a()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 53
    :try_start_0
    invoke-virtual {p0}, LHf;->B()LHI;

    move-result-object v1

    invoke-virtual {v1}, LHI;->h()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LHf;->m:Ljava/lang/String;

    .line 54
    invoke-virtual {p0}, LHf;->C()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, LHf;->h:Landroid/content/pm/PackageManager;

    .line 55
    invoke-virtual {p0}, LHf;->C()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LHf;->i:Ljava/lang/String;

    .line 56
    iget-object v1, p0, LHf;->h:Landroid/content/pm/PackageManager;

    iget-object v2, p0, LHf;->i:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iput-object v1, p0, LHf;->j:Landroid/content/pm/PackageInfo;

    .line 57
    iget-object v1, p0, LHf;->j:Landroid/content/pm/PackageInfo;

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LHf;->k:Ljava/lang/String;

    .line 58
    iget-object v1, p0, LHf;->j:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "0.0"

    :goto_0
    iput-object v1, p0, LHf;->l:Ljava/lang/String;

    .line 60
    iget-object v1, p0, LHf;->h:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, LHf;->C()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LHf;->n:Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, LHf;->C()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LHf;->o:Ljava/lang/String;

    .line 66
    const/4 v0, 0x1

    .line 70
    :goto_1
    return v0

    .line 58
    :cond_0
    iget-object v1, p0, LHf;->j:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 68
    :catch_0
    move-exception v1

    invoke-static {}, LGS;->g()LHe;

    goto :goto_1
.end method

.method protected b()Ljava/lang/Boolean;
    .locals 10

    .prologue
    .line 75
    invoke-virtual {p0}, LHf;->C()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LHw;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 76
    const/4 v7, 0x0

    .line 77
    const/4 v8, 0x0

    .line 80
    :try_start_0
    invoke-static {}, LJy;->a()LJy;

    move-result-object v0

    iget-object v2, p0, LHf;->f:LHI;

    iget-object v3, p0, LHf;->g:LJa;

    iget-object v4, p0, LHf;->k:Ljava/lang/String;

    iget-object v5, p0, LHf;->l:Ljava/lang/String;

    invoke-virtual {p0}, LHf;->e()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, LJy;->a(LHc;LHI;LJa;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LJy;

    move-result-object v0

    invoke-virtual {v0}, LJy;->c()Z

    .line 85
    invoke-static {}, LJy;->a()LJy;

    move-result-object v0

    invoke-virtual {v0}, LJy;->b()LJE;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 90
    :goto_0
    if-eqz v0, :cond_0

    .line 92
    :try_start_1
    iget-object v0, v0, LJE;->a:LJm;

    iget-object v1, p0, LHf;->a:Ljava/util/Collection;

    invoke-direct {p0, v9, v0, v1}, LHf;->a(Ljava/lang/String;LJm;Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 97
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 87
    :catch_0
    move-exception v0

    invoke-static {}, LGS;->g()LHe;

    move-object v0, v8

    goto :goto_0

    .line 94
    :catch_1
    move-exception v0

    invoke-static {}, LGS;->g()LHe;

    :cond_0
    move v0, v7

    goto :goto_1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    const-string v0, "io.fabric.sdk.android:fabric"

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string v0, "1.2.0.37"

    return-object v0
.end method

.method e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 176
    invoke-virtual {p0}, LHf;->C()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.crashlytics.ApiEndpoint"

    invoke-static {v0, v1}, LHw;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic z()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, LHf;->b()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
