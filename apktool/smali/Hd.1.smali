.class LHd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxc;


# instance fields
.field final synthetic a:LHa;


# direct methods
.method constructor <init>(LHa;)V
    .locals 0

    .prologue
    .line 1097
    iput-object p1, p0, LHd;->a:LHa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LxD;Ljava/io/IOException;)V
    .locals 4

    .prologue
    .line 1111
    const-string v0, "linkMixpanelAmplitudeIds"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, LHm;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1112
    return-void
.end method

.method public a(LxJ;)V
    .locals 4

    .prologue
    .line 1102
    :try_start_0
    const-string v0, "mxID"

    const/4 v1, 0x1

    invoke-static {v0, v1}, LAa;->b(Ljava/lang/String;Z)V

    .line 1103
    const-string v0, "linkMixpanelAmplitudeIds"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, LxJ;->h()LxM;

    move-result-object v3

    invoke-virtual {v3}, LxM;->f()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, LHm;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1107
    :goto_0
    return-void

    .line 1104
    :catch_0
    move-exception v0

    .line 1105
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
