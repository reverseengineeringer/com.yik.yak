.class LHc;
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
    .line 1035
    iput-object p1, p0, LHc;->a:LHa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LxD;Ljava/io/IOException;)V
    .locals 4

    .prologue
    .line 1043
    const-string v0, "trackViaYikYak"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, LHm;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1044
    return-void
.end method

.method public a(LxJ;)V
    .locals 0

    .prologue
    .line 1039
    return-void
.end method
