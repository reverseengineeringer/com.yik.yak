.class final Lxy;
.super Lxw;
.source "SourceFile"


# instance fields
.field final synthetic a:Lxn;

.field final synthetic b:Ljava/io/File;


# direct methods
.method constructor <init>(Lxn;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lxy;->a:Lxn;

    iput-object p2, p0, Lxy;->b:Ljava/io/File;

    invoke-direct {p0}, Lxw;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lxn;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lxy;->a:Lxn;

    return-object v0
.end method

.method public a(LJS;)V
    .locals 2

    .prologue
    .line 91
    const/4 v1, 0x0

    .line 93
    :try_start_0
    iget-object v0, p0, Lxy;->b:Ljava/io/File;

    invoke-static {v0}, LKa;->a(Ljava/io/File;)LKl;

    move-result-object v1

    .line 94
    invoke-interface {p1, v1}, LJS;->a(LKl;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    invoke-static {v1}, LxY;->a(Ljava/io/Closeable;)V

    .line 98
    return-void

    .line 96
    :catchall_0
    move-exception v0

    invoke-static {v1}, LxY;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lxy;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method
