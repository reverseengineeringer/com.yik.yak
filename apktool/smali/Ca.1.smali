.class LCa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lxt;

.field final synthetic b:Ljava/io/IOException;

.field final synthetic c:LBY;


# direct methods
.method constructor <init>(LBY;Lxt;Ljava/io/IOException;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, LCa;->c:LBY;

    iput-object p2, p0, LCa;->a:Lxt;

    iput-object p3, p0, LCa;->b:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 341
    const-string v0, "SendYak.Fail"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, LCa;->a:Lxt;

    invoke-virtual {v2}, Lxt;->f()Lxw;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, LGF;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 343
    iget-object v0, p0, LCa;->c:LBY;

    iget-object v0, v0, LBY;->e:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v0, v3}, Lcom/yik/yak/ui/activity/SendAYak;->a(Lcom/yik/yak/ui/activity/SendAYak;Z)Z

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LCa;->b:Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 345
    return-void
.end method
