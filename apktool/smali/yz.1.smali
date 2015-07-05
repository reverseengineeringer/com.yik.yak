.class public final Lyz;
.super LxC;
.source "SourceFile"


# instance fields
.field private final a:Lxi;

.field private final b:LJT;


# direct methods
.method public constructor <init>(Lxi;LJT;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, LxC;-><init>()V

    .line 28
    iput-object p1, p0, Lyz;->a:Lxi;

    .line 29
    iput-object p2, p0, Lyz;->b:LJT;

    .line 30
    return-void
.end method


# virtual methods
.method public a()Lxn;
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lyz;->a:Lxi;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lxi;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    if-eqz v0, :cond_0

    invoke-static {v0}, Lxn;->a(Ljava/lang/String;)Lxn;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lyz;->a:Lxi;

    invoke-static {v0}, Lyx;->a(Lxi;)J

    move-result-wide v0

    return-wide v0
.end method

.method public c()LJT;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lyz;->b:LJT;

    return-object v0
.end method
