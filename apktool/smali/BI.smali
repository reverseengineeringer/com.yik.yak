.class LBI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LBH;


# direct methods
.method constructor <init>(LBH;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, LBI;->a:LBH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 194
    invoke-static {}, LGs;->a()LGs;

    move-result-object v0

    iget-object v1, p0, LBI;->a:LBH;

    iget-object v1, v1, LBH;->b:LAk;

    invoke-virtual {v0, v1}, LGs;->a(LAk;)V

    .line 195
    const/4 v0, 0x0

    invoke-static {v0}, LzQ;->j(Z)V

    .line 196
    invoke-static {v2}, LzQ;->i(Z)V

    .line 197
    invoke-static {v2}, LzQ;->k(Z)V

    .line 198
    iget-object v0, p0, LBI;->a:LBH;

    iget-object v0, v0, LBH;->b:LAk;

    invoke-static {v0}, LzQ;->a(LAk;)V

    .line 199
    iget-object v0, p0, LBI;->a:LBH;

    iget-object v0, v0, LBH;->c:Lcom/yik/yak/ui/activity/SelectBasecampActivity;

    invoke-virtual {v0, v2}, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->setResult(I)V

    .line 200
    iget-object v0, p0, LBI;->a:LBH;

    iget-object v0, v0, LBH;->c:Lcom/yik/yak/ui/activity/SelectBasecampActivity;

    invoke-virtual {v0}, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->finish()V

    .line 201
    return-void
.end method
