.class Lum;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final d:Ljava/nio/ByteBuffer;


# instance fields
.field private final a:Luo;

.field private final b:Lup;

.field private final c:Ljava/net/URI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lum;->d:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Luo;Ljava/net/Socket;)V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p2, p0, Lum;->a:Luo;

    .line 50
    iput-object p1, p0, Lum;->c:Ljava/net/URI;

    .line 52
    :try_start_0
    new-instance v0, Lup;

    const/16 v1, 0x1388

    invoke-direct {v0, p0, p1, v1, p3}, Lup;-><init>(Lum;Ljava/net/URI;ILjava/net/Socket;)V

    iput-object v0, p0, Lum;->b:Lup;

    .line 53
    iget-object v0, p0, Lum;->b:Lup;

    invoke-virtual {v0}, Lup;->c()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    new-instance v1, Luq;

    invoke-direct {v1, p0, v0}, Luq;-><init>(Lum;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic a(Lum;)Luo;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lum;->a:Luo;

    return-object v0
.end method

.method static synthetic b(Lum;)Ljava/net/URI;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lum;->c:Ljava/net/URI;

    return-object v0
.end method

.method static synthetic c()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lum;->d:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method static synthetic c(Lum;)Lup;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lum;->b:Lup;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lum;->b:Lup;

    invoke-virtual {v0}, Lup;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lum;->b:Lup;

    invoke-virtual {v0}, Lup;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lum;->b:Lup;

    invoke-virtual {v0}, Lup;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/io/BufferedOutputStream;
    .locals 3

    .prologue
    .line 64
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Lur;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lur;-><init>(Lum;Lun;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method
