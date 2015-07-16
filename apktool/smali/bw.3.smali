.class Lbw;
.super LHS;
.source "SourceFile"

# interfaces
.implements LJs;


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(LHK;Ljava/lang/String;Ljava/lang/String;LJI;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 27
    sget-object v6, LJz;->b:LJz;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lbw;-><init>(LHK;Ljava/lang/String;Ljava/lang/String;LJI;Ljava/lang/String;LJz;)V

    .line 28
    return-void
.end method

.method constructor <init>(LHK;Ljava/lang/String;Ljava/lang/String;LJI;Ljava/lang/String;LJz;)V
    .locals 6

    .prologue
    .line 41
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, LHS;-><init>(LHK;Ljava/lang/String;Ljava/lang/String;LJI;LJz;)V

    .line 42
    iput-object p5, p0, Lbw;->b:Ljava/lang/String;

    .line 43
    return-void
.end method

.method private a(LJA;Ljava/lang/String;)LJA;
    .locals 3

    .prologue
    .line 61
    const-string v0, "X-CRASHLYTICS-API-CLIENT-TYPE"

    const-string v1, "android"

    invoke-virtual {p1, v0, v1}, LJA;->a(Ljava/lang/String;Ljava/lang/String;)LJA;

    move-result-object v0

    const-string v1, "X-CRASHLYTICS-API-CLIENT-VERSION"

    invoke-static {}, Lbs;->b()Lbs;

    move-result-object v2

    invoke-virtual {v2}, Lbs;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LJA;->a(Ljava/lang/String;Ljava/lang/String;)LJA;

    move-result-object v0

    const-string v1, "X-CRASHLYTICS-API-KEY"

    invoke-virtual {v0, v1, p2}, LJA;->a(Ljava/lang/String;Ljava/lang/String;)LJA;

    move-result-object v0

    return-object v0
.end method

.method private a(LJA;Ljava/util/List;)LJA;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LJA;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)",
            "LJA;"
        }
    .end annotation

    .prologue
    .line 68
    const/4 v0, 0x0

    .line 69
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 70
    invoke-static {}, Lbs;->b()Lbs;

    move-result-object v3

    invoke-virtual {v3}, Lbs;->C()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding analytics session file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to multipart POST"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, LIe;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "session_analytics_file_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "application/vnd.crashlytics.android.events"

    invoke-virtual {p1, v3, v4, v5, v0}, LJA;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)LJA;

    .line 73
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 74
    goto :goto_0

    .line 76
    :cond_0
    return-object p1
.end method


# virtual methods
.method public a(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p0}, Lbw;->b()LJA;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lbw;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lbw;->a(LJA;Ljava/lang/String;)LJA;

    move-result-object v0

    .line 49
    invoke-direct {p0, v0, p1}, Lbw;->a(LJA;Ljava/util/List;)LJA;

    move-result-object v0

    .line 51
    invoke-static {}, Lbs;->b()Lbs;

    move-result-object v1

    invoke-virtual {v1}, Lbs;->C()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " analytics files to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lbw;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LIe;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0}, LJA;->b()I

    move-result v0

    .line 54
    invoke-static {}, Lbs;->b()Lbs;

    move-result-object v1

    invoke-virtual {v1}, Lbs;->C()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Response code for analytics file send is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LIe;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    invoke-static {v0}, LIz;->a(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
