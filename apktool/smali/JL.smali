.class LJL;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LKk;


# instance fields
.field final synthetic a:LKk;

.field final synthetic b:LJK;


# direct methods
.method constructor <init>(LJK;LKk;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, LJL;->b:LJK;

    iput-object p2, p0, LJL;->a:LKk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 165
    const/4 v1, 0x0

    .line 166
    iget-object v0, p0, LJL;->b:LJK;

    invoke-virtual {v0}, LJK;->c()V

    .line 168
    :try_start_0
    iget-object v0, p0, LJL;->a:LKk;

    invoke-interface {v0}, LKk;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    const/4 v0, 0x1

    .line 173
    iget-object v1, p0, LJL;->b:LJK;

    invoke-virtual {v1, v0}, LJK;->a(Z)V

    .line 175
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    :try_start_1
    iget-object v2, p0, LJL;->b:LJK;

    invoke-virtual {v2, v0}, LJK;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    :catchall_0
    move-exception v0

    iget-object v2, p0, LJL;->b:LJK;

    invoke-virtual {v2, v1}, LJK;->a(Z)V

    throw v0
.end method

.method public a_(LJP;J)V
    .locals 4

    .prologue
    .line 152
    const/4 v1, 0x0

    .line 153
    iget-object v0, p0, LJL;->b:LJK;

    invoke-virtual {v0}, LJK;->c()V

    .line 155
    :try_start_0
    iget-object v0, p0, LJL;->a:LKk;

    invoke-interface {v0, p1, p2, p3}, LKk;->a_(LJP;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    const/4 v0, 0x1

    .line 160
    iget-object v1, p0, LJL;->b:LJK;

    invoke-virtual {v1, v0}, LJK;->a(Z)V

    .line 162
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    :try_start_1
    iget-object v2, p0, LJL;->b:LJK;

    invoke-virtual {v2, v0}, LJK;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    :catchall_0
    move-exception v0

    iget-object v2, p0, LJL;->b:LJK;

    invoke-virtual {v2, v1}, LJK;->a(Z)V

    throw v0
.end method

.method public b()LKm;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, LJL;->b:LJK;

    return-object v0
.end method

.method public close()V
    .locals 3

    .prologue
    .line 178
    const/4 v1, 0x0

    .line 179
    iget-object v0, p0, LJL;->b:LJK;

    invoke-virtual {v0}, LJK;->c()V

    .line 181
    :try_start_0
    iget-object v0, p0, LJL;->a:LKk;

    invoke-interface {v0}, LKk;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    const/4 v0, 0x1

    .line 186
    iget-object v1, p0, LJL;->b:LJK;

    invoke-virtual {v1, v0}, LJK;->a(Z)V

    .line 188
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    :try_start_1
    iget-object v2, p0, LJL;->b:LJK;

    invoke-virtual {v2, v0}, LJK;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    :catchall_0
    move-exception v0

    iget-object v2, p0, LJL;->b:LJK;

    invoke-virtual {v2, v1}, LJK;->a(Z)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTimeout.sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LJL;->a:LKk;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
