.class LpK;
.super Ljava/lang/Number;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "LpK;",
        ">;"
    }
.end annotation


# instance fields
.field private a:D

.field private b:J

.field private c:Z


# direct methods
.method private constructor <init>(J)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 17
    iput-wide p1, p0, LpK;->b:J

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, LpK;->c:Z

    .line 19
    return-void
.end method

.method public static a(J)LpK;
    .locals 2

    .prologue
    .line 32
    new-instance v0, LpK;

    invoke-direct {v0, p0, p1}, LpK;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public a(LpK;)I
    .locals 4

    .prologue
    .line 77
    invoke-virtual {p0}, LpK;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, LpK;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Long;

    iget-wide v2, p0, LpK;->b:J

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    iget-wide v2, p1, LpK;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, LpK;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, LpK;->doubleValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, LpK;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, LpK;->c:Z

    return v0
.end method

.method public byteValue()B
    .locals 2

    .prologue
    .line 129
    invoke-virtual {p0}, LpK;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 106
    invoke-virtual {p0}, LpK;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, LpK;->b:J

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, LpK;->a:D

    double-to-long v0, v0

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 6
    check-cast p1, LpK;

    invoke-virtual {p0, p1}, LpK;->a(LpK;)I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 2

    .prologue
    .line 115
    invoke-virtual {p0}, LpK;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public doubleValue()D
    .locals 2

    .prologue
    .line 92
    invoke-virtual {p0}, LpK;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, LpK;->b:J

    long-to-double v0, v0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, LpK;->a:D

    goto :goto_0
.end method

.method public e()S
    .locals 2

    .prologue
    .line 124
    invoke-virtual {p0}, LpK;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 67
    instance-of v0, p1, LpK;

    if-eqz v0, :cond_0

    check-cast p1, LpK;

    invoke-virtual {p0, p1}, LpK;->a(LpK;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public floatValue()F
    .locals 2

    .prologue
    .line 97
    invoke-virtual {p0}, LpK;->doubleValue()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 72
    new-instance v0, Ljava/lang/Long;

    invoke-virtual {p0}, LpK;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    return v0
.end method

.method public intValue()I
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, LpK;->d()I

    move-result v0

    return v0
.end method

.method public longValue()J
    .locals 2

    .prologue
    .line 102
    invoke-virtual {p0}, LpK;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public shortValue()S
    .locals 1

    .prologue
    .line 120
    invoke-virtual {p0}, LpK;->e()S

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    invoke-virtual {p0}, LpK;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, LpK;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, LpK;->a:D

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
