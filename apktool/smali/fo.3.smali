.class Lfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private final b:J

.field private final c:J

.field private d:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;JJ)V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "https:"

    iput-object v0, p0, Lfo;->d:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lfo;->a:Ljava/lang/String;

    .line 37
    iput-wide p2, p0, Lfo;->b:J

    .line 38
    iput-wide p4, p0, Lfo;->c:J

    .line 39
    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lfo;->a:Ljava/lang/String;

    .line 25
    return-void
.end method

.method b()J
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lfo;->b:J

    return-wide v0
.end method

.method b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 58
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    const-string v0, "http:"

    iput-object v0, p0, Lfo;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method c()J
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lfo;->c:J

    return-wide v0
.end method

.method d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lfo;->d:Ljava/lang/String;

    return-object v0
.end method
