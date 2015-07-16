.class final LxH;
.super LxG;
.source "SourceFile"


# instance fields
.field final synthetic a:Lxx;

.field final synthetic b:[B


# direct methods
.method constructor <init>(Lxx;[B)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, LxH;->a:Lxx;

    iput-object p2, p0, LxH;->b:[B

    invoke-direct {p0}, LxG;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lxx;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, LxH;->a:Lxx;

    return-object v0
.end method

.method public a(LKA;)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, LxH;->b:[B

    invoke-interface {p1, v0}, LKA;->c([B)LKA;

    .line 73
    return-void
.end method

.method public b()J
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, LxH;->b:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method
