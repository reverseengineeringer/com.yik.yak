.class LEa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LDZ;


# direct methods
.method constructor <init>(LDZ;)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, LEa;->a:LDZ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 322
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    iget-object v1, p0, LEa;->a:LDZ;

    iget-object v1, v1, LDZ;->c:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-object v1, v1, Lcom/yik/yak/ui/fragment/CommentFragment;->m:Lcom/yik/yak/data/models/Yak;

    invoke-virtual {v0, v1}, LHa;->b(Lcom/yik/yak/data/models/Yak;)V

    .line 323
    iget-object v0, p0, LEa;->a:LDZ;

    iget-object v0, v0, LDZ;->c:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/CommentFragment;->mReplyField:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, LEa;->a:LDZ;

    iget-object v0, v0, LDZ;->c:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-object v0, v0, Lcom/yik/yak/ui/fragment/CommentFragment;->mReplyField:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 326
    :cond_0
    iget-object v0, p0, LEa;->a:LDZ;

    iget-object v0, v0, LDZ;->c:Lcom/yik/yak/ui/fragment/CommentFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/yik/yak/ui/fragment/CommentFragment;->h:Z

    .line 327
    iget-object v0, p0, LEa;->a:LDZ;

    iget-object v0, v0, LDZ;->c:Lcom/yik/yak/ui/fragment/CommentFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/fragment/CommentFragment;->a(Z)V

    .line 328
    return-void
.end method
