.class Lfh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lfg;


# direct methods
.method constructor <init>(Lfg;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lfh;->b:Lfg;

    iput-object p2, p0, Lfh;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 134
    iget-object v0, p0, Lfh;->a:Ljava/util/Map;

    const-string v1, "&cid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lfh;->a:Ljava/util/Map;

    const-string v1, "&cid"

    iget-object v2, p0, Lfh;->b:Lfg;

    invoke-static {v2}, Lfg;->a(Lfg;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_0
    iget-object v0, p0, Lfh;->b:Lfg;

    invoke-static {v0}, Lfg;->b(Lfg;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lfn;->a(Landroid/content/Context;)Lfn;

    move-result-object v0

    invoke-virtual {v0}, Lfn;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lfh;->b:Lfg;

    iget-object v1, p0, Lfh;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lfg;->a(Lfg;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 159
    :cond_1
    :goto_0
    return-void

    .line 146
    :cond_2
    iget-object v0, p0, Lfh;->b:Lfg;

    invoke-static {v0}, Lfg;->c(Lfg;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 147
    invoke-static {}, Lfl;->a()Lfl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lfl;->a(Z)V

    .line 148
    iget-object v0, p0, Lfh;->a:Ljava/util/Map;

    new-instance v1, Lft;

    invoke-direct {v1}, Lft;-><init>()V

    iget-object v2, p0, Lfh;->b:Lfg;

    invoke-static {v2}, Lfg;->c(Lfg;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lft;->a(Ljava/lang/String;)Lft;

    move-result-object v1

    invoke-virtual {v1}, Lft;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 149
    invoke-static {}, Lfl;->a()Lfl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lfl;->a(Z)V

    .line 150
    iget-object v0, p0, Lfh;->b:Lfg;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lfg;->a(Lfg;Ljava/lang/String;)Ljava/lang/String;

    .line 152
    :cond_3
    iget-object v0, p0, Lfh;->b:Lfg;

    iget-object v1, p0, Lfh;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lfg;->b(Lfg;Ljava/util/Map;)V

    .line 153
    iget-object v0, p0, Lfh;->a:Ljava/util/Map;

    invoke-static {v0}, Lfp;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 154
    iget-object v0, p0, Lfh;->b:Lfg;

    invoke-static {v0}, Lfg;->e(Lfg;)LfB;

    move-result-object v0

    iget-object v2, p0, Lfh;->a:Ljava/util/Map;

    const-string v3, "&ht"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lfh;->b:Lfg;

    iget-object v5, p0, Lfh;->a:Ljava/util/Map;

    invoke-static {v4, v5}, Lfg;->c(Lfg;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lfh;->b:Lfg;

    invoke-static {v5}, Lfg;->d(Lfg;)Ljava/util/List;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, LfB;->a(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method
