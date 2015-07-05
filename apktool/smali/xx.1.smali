.class final Lxx;
.super Lxw;
.source "SourceFile"


# instance fields
.field final synthetic a:Lxn;

.field final synthetic b:[B


# direct methods
.method constructor <init>(Lxn;[B)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lxx;->a:Lxn;

    iput-object p2, p0, Lxx;->b:[B

    invoke-direct {p0}, Lxw;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lxn;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lxx;->a:Lxn;

    return-object v0
.end method

.method public a(LJS;)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lxx;->b:[B

    invoke-interface {p1, v0}, LJS;->c([B)LJS;

    .line 73
    return-void
.end method

.method public b()J
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lxx;->b:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method
