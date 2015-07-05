.class Lfl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lfk;


# direct methods
.method constructor <init>(Lfk;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lfl;->b:Lfk;

    iput-object p2, p0, Lfl;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 134
    iget-object v0, p0, Lfl;->a:Ljava/util/Map;

    const-string v1, "&cid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lfl;->a:Ljava/util/Map;

    const-string v1, "&cid"

    iget-object v2, p0, Lfl;->b:Lfk;

    invoke-static {v2}, Lfk;->a(Lfk;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_0
    iget-object v0, p0, Lfl;->b:Lfk;

    invoke-static {v0}, Lfk;->b(Lfk;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lfq;->a(Landroid/content/Context;)Lfq;

    move-result-object v0

    invoke-virtual {v0}, Lfq;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lfl;->b:Lfk;

    iget-object v1, p0, Lfl;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lfk;->a(Lfk;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 159
    :cond_1
    :goto_0
    return-void

    .line 146
    :cond_2
    iget-object v0, p0, Lfl;->b:Lfk;

    invoke-static {v0}, Lfk;->c(Lfk;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 147
    invoke-static {}, Lfo;->a()Lfo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lfo;->a(Z)V

    .line 148
    iget-object v0, p0, Lfl;->a:Ljava/util/Map;

    new-instance v1, Lfw;

    invoke-direct {v1}, Lfw;-><init>()V

    iget-object v2, p0, Lfl;->b:Lfk;

    invoke-static {v2}, Lfk;->c(Lfk;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfw;->a(Ljava/lang/String;)Lfw;

    move-result-object v1

    invoke-virtual {v1}, Lfw;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 149
    invoke-static {}, Lfo;->a()Lfo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lfo;->a(Z)V

    .line 150
    iget-object v0, p0, Lfl;->b:Lfk;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lfk;->a(Lfk;Ljava/lang/String;)Ljava/lang/String;

    .line 152
    :cond_3
    iget-object v0, p0, Lfl;->b:Lfk;

    iget-object v1, p0, Lfl;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lfk;->b(Lfk;Ljava/util/Map;)V

    .line 153
    iget-object v0, p0, Lfl;->a:Ljava/util/Map;

    invoke-static {v0}, Lfs;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 154
    iget-object v0, p0, Lfl;->b:Lfk;

    invoke-static {v0}, Lfk;->e(Lfk;)LfE;

    move-result-object v0

    iget-object v2, p0, Lfl;->a:Ljava/util/Map;

    const-string v3, "&ht"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lfl;->b:Lfk;

    iget-object v5, p0, Lfl;->a:Ljava/util/Map;

    invoke-static {v4, v5}, Lfk;->c(Lfk;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lfl;->b:Lfk;

    invoke-static {v5}, Lfk;->d(Lfk;)Ljava/util/List;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, LfE;->a(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method
