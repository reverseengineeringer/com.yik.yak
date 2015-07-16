.class LCe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:LCd;


# direct methods
.method constructor <init>(LCd;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, LCe;->b:LCd;

    iput-object p2, p0, LCe;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 337
    const-string v0, "SendYak.Ok"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, LCe;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, LHm;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 339
    iget-object v0, p0, LCe;->b:LCd;

    iget-boolean v0, v0, LCd;->b:Z

    if-eqz v0, :cond_1

    .line 340
    iget-object v0, p0, LCe;->b:LCd;

    iget-object v0, v0, LCd;->e:Lcom/yik/yak/ui/activity/SendAYak;

    iget-object v1, p0, LCe;->b:LCd;

    iget-object v1, v1, LCd;->e:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v1}, Lcom/yik/yak/ui/activity/SendAYak;->i(Lcom/yik/yak/ui/activity/SendAYak;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080171

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, LCe;->b:LCd;

    iget-object v2, v2, LCd;->e:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v2}, Lcom/yik/yak/ui/activity/SendAYak;->i(Lcom/yik/yak/ui/activity/SendAYak;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08016e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yik/yak/ui/activity/SendAYak;->a(Lcom/yik/yak/ui/activity/SendAYak;Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :cond_0
    :goto_0
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    iget-object v1, p0, LCe;->b:LCd;

    iget-object v1, v1, LCd;->c:Ljava/lang/String;

    iget-object v2, p0, LCe;->b:LCd;

    iget-object v2, v2, LCd;->d:Ljava/lang/String;

    iget-object v3, p0, LCe;->b:LCd;

    iget-object v3, v3, LCd;->e:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v3}, Lcom/yik/yak/ui/activity/SendAYak;->k(Lcom/yik/yak/ui/activity/SendAYak;)Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, LHa;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 349
    iget-object v0, p0, LCe;->b:LCd;

    iget-object v0, v0, LCd;->e:Lcom/yik/yak/ui/activity/SendAYak;

    const/16 v1, 0x7d1

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/activity/SendAYak;->setResult(I)V

    .line 350
    iget-object v0, p0, LCe;->b:LCd;

    iget-object v0, v0, LCd;->e:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/SendAYak;->l(Lcom/yik/yak/ui/activity/SendAYak;)V

    .line 351
    iget-object v0, p0, LCe;->b:LCd;

    iget-object v0, v0, LCd;->e:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-virtual {v0}, Lcom/yik/yak/ui/activity/SendAYak;->finish()V

    .line 352
    return-void

    .line 343
    :cond_1
    iget-object v0, p0, LCe;->b:LCd;

    iget-object v0, v0, LCd;->e:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/SendAYak;->j(Lcom/yik/yak/ui/activity/SendAYak;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LHi;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 344
    iget-object v0, p0, LCe;->b:LCd;

    iget-object v0, v0, LCd;->e:Lcom/yik/yak/ui/activity/SendAYak;

    iget-object v1, p0, LCe;->b:LCd;

    iget-object v1, v1, LCd;->e:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v1}, Lcom/yik/yak/ui/activity/SendAYak;->i(Lcom/yik/yak/ui/activity/SendAYak;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080172

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, LCe;->b:LCd;

    iget-object v2, v2, LCd;->e:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v2}, Lcom/yik/yak/ui/activity/SendAYak;->i(Lcom/yik/yak/ui/activity/SendAYak;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08016f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yik/yak/ui/activity/SendAYak;->a(Lcom/yik/yak/ui/activity/SendAYak;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
