.class LDw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LDv;


# direct methods
.method constructor <init>(LDv;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, LDw;->a:LDv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 319
    invoke-static {}, LGs;->a()LGs;

    move-result-object v0

    iget-object v1, p0, LDw;->a:LDv;

    iget-object v1, v1, LDv;->c:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-object v1, v1, Lcom/yik/yak/ui/fragment/CommentFragment;->l:Lcom/yik/yak/data/models/Yak;

    invoke-virtual {v0, v1}, LGs;->b(Lcom/yik/yak/data/models/Yak;)V

    .line 320
    iget-object v0, p0, LDw;->a:LDv;

    iget-object v0, v0, LDv;->c:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/CommentFragment;->mReplyField:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, LDw;->a:LDv;

    iget-object v0, v0, LDv;->c:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/CommentFragment;->mReplyField:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 323
    :cond_0
    iget-object v0, p0, LDw;->a:LDv;

    iget-object v0, v0, LDv;->c:Lcom/yik/yak/ui/fragment/CommentFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/yik/yak/ui/fragment/CommentFragment;->g:Z

    .line 324
    iget-object v0, p0, LDw;->a:LDv;

    iget-object v0, v0, LDv;->c:Lcom/yik/yak/ui/fragment/CommentFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/fragment/CommentFragment;->a(Z)V

    .line 325
    return-void
.end method
