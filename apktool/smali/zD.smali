.class public LzD;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/net/Socket;

.field private c:Lzj;

.field private d:LxC;

.field private e:Lzp;

.field private f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/net/Socket;)V
    .locals 1

    .prologue
    .line 529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 516
    sget-object v0, Lzj;->a:Lzj;

    iput-object v0, p0, LzD;->c:Lzj;

    .line 517
    sget-object v0, LxC;->c:LxC;

    iput-object v0, p0, LzD;->d:LxC;

    .line 518
    sget-object v0, Lzp;->a:Lzp;

    iput-object v0, p0, LzD;->e:Lzp;

    .line 530
    iput-object p1, p0, LzD;->a:Ljava/lang/String;

    .line 531
    iput-boolean p2, p0, LzD;->f:Z

    .line 532
    iput-object p3, p0, LzD;->b:Ljava/net/Socket;

    .line 533
    return-void
.end method

.method static synthetic a(LzD;)LxC;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, LzD;->d:LxC;

    return-object v0
.end method

.method static synthetic b(LzD;)Lzp;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, LzD;->e:Lzp;

    return-object v0
.end method

.method static synthetic c(LzD;)Z
    .locals 1

    .prologue
    .line 513
    iget-boolean v0, p0, LzD;->f:Z

    return v0
.end method

.method static synthetic d(LzD;)Lzj;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, LzD;->c:Lzj;

    return-object v0
.end method

.method static synthetic e(LzD;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, LzD;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(LzD;)Ljava/net/Socket;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, LzD;->b:Ljava/net/Socket;

    return-object v0
.end method


# virtual methods
.method public a(LxC;)LzD;
    .locals 0

    .prologue
    .line 541
    iput-object p1, p0, LzD;->d:LxC;

    .line 542
    return-object p0
.end method

.method public a()Lzv;
    .locals 2

    .prologue
    .line 551
    new-instance v0, Lzv;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lzv;-><init>(LzD;Lzw;)V

    return-object v0
.end method
