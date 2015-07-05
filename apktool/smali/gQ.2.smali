.class LgQ;
.super Ljava/lang/Object;

# interfaces
.implements LfW;


# instance fields
.field private a:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, LgQ;->a:I

    return-void
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, LgQ;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, LgQ;->a:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, LgQ;->a:I

    if-gtz v0, :cond_0

    invoke-direct {p0, p1}, LgQ;->e(Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, LgQ;->a:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    invoke-direct {p0, p1}, LgQ;->e(Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, LgQ;->a:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    invoke-direct {p0, p1}, LgQ;->e(Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, LgQ;->a:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    invoke-direct {p0, p1}, LgQ;->e(Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method
