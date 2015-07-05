.class LJr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJD;


# instance fields
.field private final a:LJH;

.field private final b:LJG;

.field private final c:LHB;

.field private final d:LJo;

.field private final e:LJI;

.field private final f:LHc;

.field private final g:LJg;


# direct methods
.method public constructor <init>(LHc;LJH;LHB;LJG;LJo;LJI;)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, LJr;->f:LHc;

    .line 38
    iput-object p2, p0, LJr;->a:LJH;

    .line 39
    iput-object p3, p0, LJr;->c:LHB;

    .line 40
    iput-object p4, p0, LJr;->b:LJG;

    .line 41
    iput-object p5, p0, LJr;->d:LJo;

    .line 42
    iput-object p6, p0, LJr;->e:LJI;

    .line 43
    new-instance v0, LJh;

    iget-object v1, p0, LJr;->f:LHc;

    invoke-direct {v0, v1}, LJh;-><init>(LHc;)V

    iput-object v0, p0, LJr;->g:LJg;

    .line 44
    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, LJr;->f:LHc;

    invoke-virtual {v0}, LHc;->C()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LHw;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, LJr;->b:LJG;

    invoke-interface {v0, p1}, LJG;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    .line 130
    :cond_0
    invoke-static {}, LGS;->g()LHe;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    return-void
.end method

.method private b(LJC;)LJE;
    .locals 5

    .prologue
    .line 88
    const/4 v0, 0x0

    .line 91
    :try_start_0
    sget-object v1, LJC;->b:LJC;

    invoke-virtual {v1, p1}, LJC;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 92
    iget-object v1, p0, LJr;->d:LJo;

    invoke-interface {v1}, LJo;->a()Lorg/json/JSONObject;

    move-result-object v2

    .line 94
    if-eqz v2, :cond_4

    .line 95
    iget-object v1, p0, LJr;->b:LJG;

    iget-object v3, p0, LJr;->c:LHB;

    invoke-interface {v1, v3, v2}, LJG;->a(LHB;Lorg/json/JSONObject;)LJE;

    move-result-object v1

    .line 98
    if-eqz v1, :cond_3

    .line 99
    const-string v3, "Loaded cached settings: "

    invoke-direct {p0, v2, v3}, LJr;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 101
    iget-object v2, p0, LJr;->c:LHB;

    invoke-interface {v2}, LHB;->a()J

    move-result-wide v2

    .line 103
    sget-object v4, LJC;->c:LJC;

    invoke-virtual {v4, p1}, LJC;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1, v2, v3}, LJE;->a(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_2

    .line 106
    :cond_0
    :try_start_1
    invoke-static {}, LGS;->g()LHe;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 122
    :cond_1
    :goto_0
    return-object v0

    .line 108
    :cond_2
    :try_start_2
    invoke-static {}, LGS;->g()LHe;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v1

    :goto_1
    invoke-static {}, LGS;->g()LHe;

    goto :goto_0

    .line 111
    :cond_3
    :try_start_3
    invoke-static {}, LGS;->g()LHe;

    goto :goto_0

    .line 115
    :cond_4
    invoke-static {}, LGS;->g()LHe;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 119
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public a()LJE;
    .locals 1

    .prologue
    .line 47
    sget-object v0, LJC;->a:LJC;

    invoke-virtual {p0, v0}, LJr;->a(LJC;)LJE;

    move-result-object v0

    return-object v0
.end method

.method public a(LJC;)LJE;
    .locals 6

    .prologue
    .line 51
    const/4 v0, 0x0

    .line 58
    :try_start_0
    invoke-static {}, LGS;->h()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, LJr;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    invoke-direct {p0, p1}, LJr;->b(LJC;)LJE;

    move-result-object v0

    .line 62
    :cond_0
    if-nez v0, :cond_1

    .line 63
    iget-object v1, p0, LJr;->e:LJI;

    iget-object v2, p0, LJr;->a:LJH;

    invoke-interface {v1, v2}, LJI;->a(LJH;)Lorg/json/JSONObject;

    move-result-object v1

    .line 65
    if-eqz v1, :cond_1

    .line 66
    iget-object v2, p0, LJr;->b:LJG;

    iget-object v3, p0, LJr;->c:LHB;

    invoke-interface {v2, v3, v1}, LJG;->a(LHB;Lorg/json/JSONObject;)LJE;

    move-result-object v0

    .line 68
    iget-object v2, p0, LJr;->d:LJo;

    iget-wide v4, v0, LJE;->g:J

    invoke-interface {v2, v4, v5, v1}, LJo;->a(JLorg/json/JSONObject;)V

    .line 69
    const-string v2, "Loaded settings: "

    invoke-direct {p0, v1, v2}, LJr;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, LJr;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, LJr;->a(Ljava/lang/String;)Z

    .line 77
    :cond_1
    if-nez v0, :cond_2

    .line 78
    sget-object v1, LJC;->c:LJC;

    invoke-direct {p0, v1}, LJr;->b(LJC;)LJE;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 84
    :cond_2
    :goto_0
    return-object v0

    .line 82
    :catch_0
    move-exception v1

    invoke-static {}, LGS;->g()LHe;

    goto :goto_0
.end method

.method a(Ljava/lang/String;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, LJr;->g:LJg;

    invoke-interface {v0}, LJg;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 145
    const-string v1, "existing_instance_identifier"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 146
    iget-object v1, p0, LJr;->g:LJg;

    invoke-interface {v1, v0}, LJg;->a(Landroid/content/SharedPreferences$Editor;)Z

    move-result v0

    return v0
.end method

.method b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 134
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, LJr;->f:LHc;

    invoke-virtual {v2}, LHc;->C()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, LHw;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, LHw;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 138
    iget-object v0, p0, LJr;->g:LJg;

    invoke-interface {v0}, LJg;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 139
    const-string v1, "existing_instance_identifier"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method d()Z
    .locals 2

    .prologue
    .line 150
    invoke-virtual {p0}, LJr;->c()Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-virtual {p0}, LJr;->b()Ljava/lang/String;

    move-result-object v1

    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
