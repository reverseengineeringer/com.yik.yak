.class public final LyN;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LJU;

.field public static final b:LJU;

.field public static final c:LJU;

.field public static final d:LJU;

.field public static final e:LJU;

.field public static final f:LJU;

.field public static final g:LJU;


# instance fields
.field public final h:LJU;

.field public final i:LJU;

.field final j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-string v0, ":status"

    invoke-static {v0}, LJU;->a(Ljava/lang/String;)LJU;

    move-result-object v0

    sput-object v0, LyN;->a:LJU;

    .line 9
    const-string v0, ":method"

    invoke-static {v0}, LJU;->a(Ljava/lang/String;)LJU;

    move-result-object v0

    sput-object v0, LyN;->b:LJU;

    .line 10
    const-string v0, ":path"

    invoke-static {v0}, LJU;->a(Ljava/lang/String;)LJU;

    move-result-object v0

    sput-object v0, LyN;->c:LJU;

    .line 11
    const-string v0, ":scheme"

    invoke-static {v0}, LJU;->a(Ljava/lang/String;)LJU;

    move-result-object v0

    sput-object v0, LyN;->d:LJU;

    .line 12
    const-string v0, ":authority"

    invoke-static {v0}, LJU;->a(Ljava/lang/String;)LJU;

    move-result-object v0

    sput-object v0, LyN;->e:LJU;

    .line 13
    const-string v0, ":host"

    invoke-static {v0}, LJU;->a(Ljava/lang/String;)LJU;

    move-result-object v0

    sput-object v0, LyN;->f:LJU;

    .line 14
    const-string v0, ":version"

    invoke-static {v0}, LJU;->a(Ljava/lang/String;)LJU;

    move-result-object v0

    sput-object v0, LyN;->g:LJU;

    return-void
.end method

.method public constructor <init>(LJU;LJU;)V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, LyN;->h:LJU;

    .line 33
    iput-object p2, p0, LyN;->i:LJU;

    .line 34
    invoke-virtual {p1}, LJU;->e()I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    invoke-virtual {p2}, LJU;->e()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, LyN;->j:I

    .line 35
    return-void
.end method

.method public constructor <init>(LJU;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 28
    invoke-static {p2}, LJU;->a(Ljava/lang/String;)LJU;

    move-result-object v0

    invoke-direct {p0, p1, v0}, LyN;-><init>(LJU;LJU;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 24
    invoke-static {p1}, LJU;->a(Ljava/lang/String;)LJU;

    move-result-object v0

    invoke-static {p2}, LJU;->a(Ljava/lang/String;)LJU;

    move-result-object v1

    invoke-direct {p0, v0, v1}, LyN;-><init>(LJU;LJU;)V

    .line 25
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 38
    instance-of v1, p1, LyN;

    if-eqz v1, :cond_0

    .line 39
    check-cast p1, LyN;

    .line 40
    iget-object v1, p0, LyN;->h:LJU;

    iget-object v2, p1, LyN;->h:LJU;

    invoke-virtual {v1, v2}, LJU;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LyN;->i:LJU;

    iget-object v2, p1, LyN;->i:LJU;

    .line 41
    invoke-virtual {v1, v2}, LJU;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 43
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 47
    .line 48
    iget-object v0, p0, LyN;->h:LJU;

    invoke-virtual {v0}, LJU;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 49
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, LyN;->i:LJU;

    invoke-virtual {v1}, LJU;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 50
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 54
    const-string v0, "%s: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, LyN;->h:LJU;

    invoke-virtual {v3}, LJU;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, LyN;->i:LJU;

    invoke-virtual {v3}, LJU;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
