.class LaJ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:LaD;


# direct methods
.method constructor <init>(LaD;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 1181
    iput-object p1, p0, LaJ;->b:LaD;

    iput-object p2, p0, LaJ;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1184
    iget-object v0, p0, LaJ;->b:LaD;

    invoke-static {v0}, LaD;->d(LaD;)Lal;

    move-result-object v0

    invoke-virtual {v0}, Lal;->C()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LHw;->n(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1185
    invoke-static {}, LGS;->g()LHe;

    .line 1187
    invoke-static {}, LJy;->a()LJy;

    move-result-object v0

    invoke-virtual {v0}, LJy;->b()LJE;

    move-result-object v0

    .line 1189
    iget-object v1, p0, LaJ;->b:LaD;

    invoke-static {v1}, LaD;->d(LaD;)Lal;

    move-result-object v1

    invoke-virtual {v1, v0}, Lal;->a(LJE;)LaV;

    move-result-object v0

    .line 1194
    if-eqz v0, :cond_0

    .line 1195
    new-instance v1, Lbp;

    invoke-direct {v1, v0}, Lbp;-><init>(LaV;)V

    new-instance v0, Lbt;

    iget-object v2, p0, LaJ;->a:Ljava/io/File;

    invoke-static {}, LaD;->i()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lbt;-><init>(Ljava/io/File;Ljava/util/Map;)V

    invoke-virtual {v1, v0}, Lbp;->a(Lbo;)Z

    .line 1199
    :cond_0
    return-void
.end method
