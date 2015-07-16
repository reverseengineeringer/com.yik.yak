.class public abstract LHS;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Ljava/util/regex/Pattern;


# instance fields
.field protected final a:LHK;

.field private final c:Ljava/lang/String;

.field private final d:LJI;

.field private final e:LJz;

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    const-string v0, "http(s?)://[^\\/]+"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, LHS;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(LHK;Ljava/lang/String;Ljava/lang/String;LJI;LJz;)V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    if-nez p3, :cond_0

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    if-nez p4, :cond_1

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "requestFactory must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_1
    iput-object p1, p0, LHS;->a:LHK;

    .line 78
    iput-object p2, p0, LHS;->f:Ljava/lang/String;

    .line 79
    invoke-direct {p0, p3}, LHS;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LHS;->c:Ljava/lang/String;

    .line 80
    iput-object p4, p0, LHS;->d:LJI;

    .line 81
    iput-object p5, p0, LHS;->e:LJz;

    .line 82
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 140
    .line 142
    iget-object v0, p0, LHS;->f:Ljava/lang/String;

    invoke-static {v0}, LIe;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    sget-object v0, LHS;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iget-object v1, p0, LHS;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 147
    :cond_0
    return-object p1
.end method


# virtual methods
.method protected a(Ljava/util/Map;)LJA;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "LJA;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, LHS;->d:LJI;

    iget-object v1, p0, LHS;->e:LJz;

    invoke-virtual {p0}, LHS;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, LJI;->a(LJz;Ljava/lang/String;Ljava/util/Map;)LJA;

    move-result-object v0

    .line 124
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LJA;->a(Z)LJA;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, LJA;->a(I)LJA;

    move-result-object v0

    const-string v1, "User-Agent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Crashlytics Android SDK/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, LHS;->a:LHK;

    invoke-virtual {v3}, LHK;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LJA;->a(Ljava/lang/String;Ljava/lang/String;)LJA;

    move-result-object v0

    const-string v1, "X-CRASHLYTICS-DEVELOPER-TOKEN"

    const-string v2, "bca6990fc3c15a8105800c0673517a4b579634a1"

    invoke-virtual {v0, v1, v2}, LJA;->a(Ljava/lang/String;Ljava/lang/String;)LJA;

    move-result-object v0

    return-object v0
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, LHS;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected b()LJA;
    .locals 1

    .prologue
    .line 102
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, LHS;->a(Ljava/util/Map;)LJA;

    move-result-object v0

    return-object v0
.end method
