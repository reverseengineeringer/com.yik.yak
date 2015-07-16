.class LaF;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Laz;


# direct methods
.method constructor <init>(Laz;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 1181
    iput-object p1, p0, LaF;->b:Laz;

    iput-object p2, p0, LaF;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1184
    iget-object v0, p0, LaF;->b:Laz;

    invoke-static {v0}, Laz;->d(Laz;)Lah;

    move-result-object v0

    invoke-virtual {v0}, Lah;->C()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LIe;->n(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1185
    invoke-static {}, LHA;->g()LHM;

    .line 1187
    invoke-static {}, LKg;->a()LKg;

    move-result-object v0

    invoke-virtual {v0}, LKg;->b()LKm;

    move-result-object v0

    .line 1189
    iget-object v1, p0, LaF;->b:Laz;

    invoke-static {v1}, Laz;->d(Laz;)Lah;

    move-result-object v1

    invoke-virtual {v1, v0}, Lah;->a(LKm;)LaR;

    move-result-object v0

    .line 1194
    if-eqz v0, :cond_0

    .line 1195
    new-instance v1, Lbl;

    invoke-direct {v1, v0}, Lbl;-><init>(LaR;)V

    new-instance v0, Lbp;

    iget-object v2, p0, LaF;->a:Ljava/io/File;

    invoke-static {}, Laz;->i()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lbp;-><init>(Ljava/io/File;Ljava/util/Map;)V

    invoke-virtual {v1, v0}, Lbl;->a(Lbk;)Z

    .line 1199
    :cond_0
    return-void
.end method
