.class LBL;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LBK;


# direct methods
.method constructor <init>(LBK;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, LBL;->a:LBK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 197
    const-string v0, "Tutorial"

    .line 198
    iget-object v1, p0, LBL;->a:LBK;

    iget-object v1, v1, LBK;->c:Lcom/yik/yak/ui/activity/SelectBasecampActivity;

    invoke-virtual {v1}, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 199
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 200
    if-eqz v1, :cond_0

    const-string v2, "Source"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    const-string v0, "Source"

    const-string v2, "Tutorial"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    :cond_0
    invoke-static {}, LHa;->a()LHa;

    move-result-object v1

    iget-object v2, p0, LBL;->a:LBK;

    iget-object v2, v2, LBK;->b:LAw;

    invoke-virtual {v1, v2, v0}, LHa;->a(LAw;Ljava/lang/String;)V

    .line 205
    const/4 v0, 0x0

    invoke-static {v0}, LAa;->q(Z)V

    .line 206
    invoke-static {v3}, LAa;->p(Z)V

    .line 207
    invoke-static {v3}, LAa;->r(Z)V

    .line 208
    iget-object v0, p0, LBL;->a:LBK;

    iget-object v0, v0, LBK;->b:LAw;

    invoke-static {v0}, LAa;->a(LAw;)V

    .line 209
    iget-object v0, p0, LBL;->a:LBK;

    iget-object v0, v0, LBK;->c:Lcom/yik/yak/ui/activity/SelectBasecampActivity;

    invoke-virtual {v0, v3}, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->setResult(I)V

    .line 210
    iget-object v0, p0, LBL;->a:LBK;

    iget-object v0, v0, LBK;->c:Lcom/yik/yak/ui/activity/SelectBasecampActivity;

    invoke-virtual {v0}, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->finish()V

    .line 211
    return-void
.end method
