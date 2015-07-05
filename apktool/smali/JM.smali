.class LJM;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LKl;


# instance fields
.field final synthetic a:LKl;

.field final synthetic b:LJK;


# direct methods
.method constructor <init>(LJK;LKl;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, LJM;->b:LJK;

    iput-object p2, p0, LJM;->a:LKl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LJP;J)J
    .locals 4

    .prologue
    .line 208
    const/4 v1, 0x0

    .line 209
    iget-object v0, p0, LJM;->b:LJK;

    invoke-virtual {v0}, LJK;->c()V

    .line 211
    :try_start_0
    iget-object v0, p0, LJM;->a:LKl;

    invoke-interface {v0, p1, p2, p3}, LKl;->a(LJP;J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 212
    const/4 v2, 0x1

    .line 217
    iget-object v3, p0, LJM;->b:LJK;

    invoke-virtual {v3, v2}, LJK;->a(Z)V

    return-wide v0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    :try_start_1
    iget-object v2, p0, LJM;->b:LJK;

    invoke-virtual {v2, v0}, LJK;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    :catchall_0
    move-exception v0

    iget-object v2, p0, LJM;->b:LJK;

    invoke-virtual {v2, v1}, LJK;->a(Z)V

    throw v0
.end method

.method public b()LKm;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, LJM;->b:LJK;

    return-object v0
.end method

.method public close()V
    .locals 3

    .prologue
    .line 222
    const/4 v1, 0x0

    .line 224
    :try_start_0
    iget-object v0, p0, LJM;->a:LKl;

    invoke-interface {v0}, LKl;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    const/4 v0, 0x1

    .line 229
    iget-object v1, p0, LJM;->b:LJK;

    invoke-virtual {v1, v0}, LJK;->a(Z)V

    .line 231
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    :try_start_1
    iget-object v2, p0, LJM;->b:LJK;

    invoke-virtual {v2, v0}, LJK;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    :catchall_0
    move-exception v0

    iget-object v2, p0, LJM;->b:LJK;

    invoke-virtual {v2, v1}, LJK;->a(Z)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTimeout.source("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LJM;->a:LKl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
