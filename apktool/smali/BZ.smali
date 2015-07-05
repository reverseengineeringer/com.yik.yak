.class LBZ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:LBY;


# direct methods
.method constructor <init>(LBY;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, LBZ;->b:LBY;

    iput-object p2, p0, LBZ;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 317
    const-string v0, "SendYak.Ok"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, LBZ;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, LGF;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    iget-object v0, p0, LBZ;->b:LBY;

    iget-boolean v0, v0, LBY;->b:Z

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, LBZ;->b:LBY;

    iget-object v0, v0, LBY;->e:Lcom/yik/yak/ui/activity/SendAYak;

    iget-object v1, p0, LBZ;->b:LBY;

    iget-object v1, v1, LBY;->e:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v1}, Lcom/yik/yak/ui/activity/SendAYak;->c(Lcom/yik/yak/ui/activity/SendAYak;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080146

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, LBZ;->b:LBY;

    iget-object v2, v2, LBY;->e:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v2}, Lcom/yik/yak/ui/activity/SendAYak;->c(Lcom/yik/yak/ui/activity/SendAYak;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080143

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yik/yak/ui/activity/SendAYak;->a(Lcom/yik/yak/ui/activity/SendAYak;Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    :cond_0
    :goto_0
    invoke-static {}, LGs;->a()LGs;

    move-result-object v0

    iget-object v1, p0, LBZ;->b:LBY;

    iget-object v1, v1, LBY;->c:Ljava/lang/String;

    iget-object v2, p0, LBZ;->b:LBY;

    iget-object v2, v2, LBY;->d:Ljava/lang/String;

    iget-object v3, p0, LBZ;->b:LBY;

    iget-object v3, v3, LBY;->e:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v3}, Lcom/yik/yak/ui/activity/SendAYak;->e(Lcom/yik/yak/ui/activity/SendAYak;)Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, LGs;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 329
    iget-object v0, p0, LBZ;->b:LBY;

    iget-object v0, v0, LBY;->e:Lcom/yik/yak/ui/activity/SendAYak;

    const/16 v1, 0x7d1

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/activity/SendAYak;->setResult(I)V

    .line 330
    iget-object v0, p0, LBZ;->b:LBY;

    iget-object v0, v0, LBY;->e:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/SendAYak;->f(Lcom/yik/yak/ui/activity/SendAYak;)V

    .line 331
    iget-object v0, p0, LBZ;->b:LBY;

    iget-object v0, v0, LBY;->e:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-virtual {v0}, Lcom/yik/yak/ui/activity/SendAYak;->finish()V

    .line 332
    return-void

    .line 323
    :cond_1
    iget-object v0, p0, LBZ;->b:LBY;

    iget-object v0, v0, LBY;->e:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/SendAYak;->d(Lcom/yik/yak/ui/activity/SendAYak;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LGB;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    iget-object v0, p0, LBZ;->b:LBY;

    iget-object v0, v0, LBY;->e:Lcom/yik/yak/ui/activity/SendAYak;

    iget-object v1, p0, LBZ;->b:LBY;

    iget-object v1, v1, LBY;->e:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v1}, Lcom/yik/yak/ui/activity/SendAYak;->c(Lcom/yik/yak/ui/activity/SendAYak;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080147

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, LBZ;->b:LBY;

    iget-object v2, v2, LBY;->e:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v2}, Lcom/yik/yak/ui/activity/SendAYak;->c(Lcom/yik/yak/ui/activity/SendAYak;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080144

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yik/yak/ui/activity/SendAYak;->a(Lcom/yik/yak/ui/activity/SendAYak;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
