.class public Lzt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/net/Socket;

.field private c:LyZ;

.field private d:Lxs;

.field private e:Lzf;

.field private f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/net/Socket;)V
    .locals 1

    .prologue
    .line 529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 516
    sget-object v0, LyZ;->a:LyZ;

    iput-object v0, p0, Lzt;->c:LyZ;

    .line 517
    sget-object v0, Lxs;->c:Lxs;

    iput-object v0, p0, Lzt;->d:Lxs;

    .line 518
    sget-object v0, Lzf;->a:Lzf;

    iput-object v0, p0, Lzt;->e:Lzf;

    .line 530
    iput-object p1, p0, Lzt;->a:Ljava/lang/String;

    .line 531
    iput-boolean p2, p0, Lzt;->f:Z

    .line 532
    iput-object p3, p0, Lzt;->b:Ljava/net/Socket;

    .line 533
    return-void
.end method

.method static synthetic a(Lzt;)Lxs;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lzt;->d:Lxs;

    return-object v0
.end method

.method static synthetic b(Lzt;)Lzf;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lzt;->e:Lzf;

    return-object v0
.end method

.method static synthetic c(Lzt;)Z
    .locals 1

    .prologue
    .line 513
    iget-boolean v0, p0, Lzt;->f:Z

    return v0
.end method

.method static synthetic d(Lzt;)LyZ;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lzt;->c:LyZ;

    return-object v0
.end method

.method static synthetic e(Lzt;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lzt;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lzt;)Ljava/net/Socket;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lzt;->b:Ljava/net/Socket;

    return-object v0
.end method


# virtual methods
.method public a()Lzl;
    .locals 2

    .prologue
    .line 551
    new-instance v0, Lzl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lzl;-><init>(Lzt;Lzm;)V

    return-object v0
.end method

.method public a(Lxs;)Lzt;
    .locals 0

    .prologue
    .line 541
    iput-object p1, p0, Lzt;->d:Lxs;

    .line 542
    return-object p0
.end method
