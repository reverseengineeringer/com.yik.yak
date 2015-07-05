.class LeP;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfu;


# instance fields
.field private a:Lfv;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lfv;->b:Lfv;

    iput-object v0, p0, LeP;->a:Lfv;

    .line 21
    return-void
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
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
.method public a()Lfv;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, LeP;->a:Lfv;

    return-object v0
.end method

.method public a(Lfv;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, LeP;->a:Lfv;

    .line 61
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, LeP;->a:Lfv;

    invoke-virtual {v0}, Lfv;->ordinal()I

    move-result v0

    sget-object v1, Lfv;->a:Lfv;

    invoke-virtual {v1}, Lfv;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 26
    invoke-direct {p0, p1}, LeP;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, LeP;->a:Lfv;

    invoke-virtual {v0}, Lfv;->ordinal()I

    move-result v0

    sget-object v1, Lfv;->b:Lfv;

    invoke-virtual {v1}, Lfv;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 33
    invoke-direct {p0, p1}, LeP;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, LeP;->a:Lfv;

    invoke-virtual {v0}, Lfv;->ordinal()I

    move-result v0

    sget-object v1, Lfv;->c:Lfv;

    invoke-virtual {v1}, Lfv;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 40
    invoke-direct {p0, p1}, LeP;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, LeP;->a:Lfv;

    invoke-virtual {v0}, Lfv;->ordinal()I

    move-result v0

    sget-object v1, Lfv;->d:Lfv;

    invoke-virtual {v1}, Lfv;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 47
    invoke-direct {p0, p1}, LeP;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    :cond_0
    return-void
.end method
