.class LqK;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LpX;


# instance fields
.field a:I

.field final synthetic b:LqG;

.field private final c:LqJ;

.field private d:LpX;


# direct methods
.method private constructor <init>(LqG;)V
    .locals 2

    .prologue
    .line 761
    iput-object p1, p0, LqK;->b:LqG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 762
    new-instance v0, LqJ;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, LqJ;-><init>(LpW;LqH;)V

    iput-object v0, p0, LqK;->c:LqJ;

    .line 763
    iget-object v0, p0, LqK;->c:LqJ;

    invoke-virtual {v0}, LqJ;->a()Lqy;

    move-result-object v0

    invoke-virtual {v0}, Lqy;->c()LpX;

    move-result-object v0

    iput-object v0, p0, LqK;->d:LpX;

    .line 764
    invoke-virtual {p1}, LqG;->a()I

    move-result v0

    iput v0, p0, LqK;->a:I

    .line 765
    return-void
.end method

.method synthetic constructor <init>(LqG;LqH;)V
    .locals 0

    .prologue
    .line 755
    invoke-direct {p0, p1}, LqK;-><init>(LqG;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Byte;
    .locals 1

    .prologue
    .line 772
    invoke-virtual {p0}, LqK;->b()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public b()B
    .locals 1

    .prologue
    .line 776
    iget-object v0, p0, LqK;->d:LpX;

    invoke-interface {v0}, LpX;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 777
    iget-object v0, p0, LqK;->c:LqJ;

    invoke-virtual {v0}, LqJ;->a()Lqy;

    move-result-object v0

    invoke-virtual {v0}, Lqy;->c()LpX;

    move-result-object v0

    iput-object v0, p0, LqK;->d:LpX;

    .line 779
    :cond_0
    iget v0, p0, LqK;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LqK;->a:I

    .line 780
    iget-object v0, p0, LqK;->d:LpX;

    invoke-interface {v0}, LpX;->b()B

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 768
    iget v0, p0, LqK;->a:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 755
    invoke-virtual {p0}, LqK;->a()Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 784
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
