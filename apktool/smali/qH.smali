.class LqH;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LpU;


# instance fields
.field a:I

.field final synthetic b:LqD;

.field private final c:LqG;

.field private d:LpU;


# direct methods
.method private constructor <init>(LqD;)V
    .locals 2

    .prologue
    .line 761
    iput-object p1, p0, LqH;->b:LqD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 762
    new-instance v0, LqG;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, LqG;-><init>(LpT;LqE;)V

    iput-object v0, p0, LqH;->c:LqG;

    .line 763
    iget-object v0, p0, LqH;->c:LqG;

    invoke-virtual {v0}, LqG;->a()Lqv;

    move-result-object v0

    invoke-virtual {v0}, Lqv;->c()LpU;

    move-result-object v0

    iput-object v0, p0, LqH;->d:LpU;

    .line 764
    invoke-virtual {p1}, LqD;->a()I

    move-result v0

    iput v0, p0, LqH;->a:I

    .line 765
    return-void
.end method

.method synthetic constructor <init>(LqD;LqE;)V
    .locals 0

    .prologue
    .line 755
    invoke-direct {p0, p1}, LqH;-><init>(LqD;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Byte;
    .locals 1

    .prologue
    .line 772
    invoke-virtual {p0}, LqH;->b()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public b()B
    .locals 1

    .prologue
    .line 776
    iget-object v0, p0, LqH;->d:LpU;

    invoke-interface {v0}, LpU;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 777
    iget-object v0, p0, LqH;->c:LqG;

    invoke-virtual {v0}, LqG;->a()Lqv;

    move-result-object v0

    invoke-virtual {v0}, Lqv;->c()LpU;

    move-result-object v0

    iput-object v0, p0, LqH;->d:LpU;

    .line 779
    :cond_0
    iget v0, p0, LqH;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LqH;->a:I

    .line 780
    iget-object v0, p0, LqH;->d:LpU;

    invoke-interface {v0}, LpU;->b()B

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 768
    iget v0, p0, LqH;->a:I

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
    invoke-virtual {p0}, LqH;->a()Ljava/lang/Byte;

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
