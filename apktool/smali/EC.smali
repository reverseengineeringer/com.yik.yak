.class LEC;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LxJ;

.field final synthetic b:LEB;


# direct methods
.method constructor <init>(LEB;LxJ;)V
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, LEC;->b:LEB;

    iput-object p2, p0, LEC;->a:LxJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 369
    const-string v0, "onResetBasecampClicked"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, LEC;->a:LxJ;

    invoke-virtual {v4}, LxJ;->h()LxM;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, LHm;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 370
    iget-object v0, p0, LEC;->b:LEB;

    iget-object v0, v0, LEB;->b:Lcom/yik/yak/ui/fragment/DeveloperFragment;

    const-string v1, "Basecamp Reset!"

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/fragment/DeveloperFragment;->a(Ljava/lang/String;)V

    .line 371
    return-void
.end method
