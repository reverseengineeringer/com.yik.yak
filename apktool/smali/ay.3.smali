.class Lay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJK;


# instance fields
.field private final a:Lbj;


# direct methods
.method public constructor <init>(Lbj;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lay;->a:Lbj;

    .line 18
    return-void
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lay;->a:Lbj;

    invoke-interface {v0}, Lbj;->a()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lay;->a:Lbj;

    invoke-interface {v0}, Lbj;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lay;->a:Lbj;

    invoke-interface {v0}, Lbj;->c()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()J
    .locals 2

    .prologue
    .line 37
    const-wide/16 v0, -0x1

    return-wide v0
.end method
