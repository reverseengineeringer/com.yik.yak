.class public Lcom/yik/yak/ui/fragment/CommentFragment$$ViewInjector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/ButterKnife$Injector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/yik/yak/ui/fragment/CommentFragment;",
        ">",
        "Ljava/lang/Object;",
        "Lbutterknife/ButterKnife$Injector",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public inject(Lbutterknife/ButterKnife$Finder;Lcom/yik/yak/ui/fragment/CommentFragment;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbutterknife/ButterKnife$Finder;",
            "TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    const v4, 0x7f0d0170

    const v3, 0x7f0d016f

    const v2, 0x7f0d016e

    .line 11
    const-string v0, "field \'mReplyField\'"

    invoke-virtual {p1, p3, v4, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    const-string v1, "field \'mReplyField\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p2, Lcom/yik/yak/ui/fragment/CommentFragment;->mReplyField:Landroid/widget/EditText;

    .line 13
    const-string v0, "field \'mSendButton\' and method \'onSendCommentClicked\'"

    invoke-virtual {p1, p3, v3, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 14
    const-string v1, "field \'mSendButton\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/yik/yak/ui/fragment/CommentFragment;->mSendButton:Landroid/widget/TextView;

    .line 15
    new-instance v1, LDY;

    invoke-direct {v1, p0, p2}, LDY;-><init>(Lcom/yik/yak/ui/fragment/CommentFragment$$ViewInjector;Lcom/yik/yak/ui/fragment/CommentFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    const-string v0, "field \'mCommentFooter\'"

    invoke-virtual {p1, p3, v2, v0}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 24
    const-string v1, "field \'mCommentFooter\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p2, Lcom/yik/yak/ui/fragment/CommentFragment;->mCommentFooter:Landroid/widget/RelativeLayout;

    .line 25
    return-void
.end method

.method public bridge synthetic inject(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 8
    check-cast p2, Lcom/yik/yak/ui/fragment/CommentFragment;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yik/yak/ui/fragment/CommentFragment$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/yik/yak/ui/fragment/CommentFragment;Ljava/lang/Object;)V

    return-void
.end method

.method public reset(Lcom/yik/yak/ui/fragment/CommentFragment;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 28
    iput-object v0, p1, Lcom/yik/yak/ui/fragment/CommentFragment;->mReplyField:Landroid/widget/EditText;

    .line 29
    iput-object v0, p1, Lcom/yik/yak/ui/fragment/CommentFragment;->mSendButton:Landroid/widget/TextView;

    .line 30
    iput-object v0, p1, Lcom/yik/yak/ui/fragment/CommentFragment;->mCommentFooter:Landroid/widget/RelativeLayout;

    .line 31
    return-void
.end method

.method public bridge synthetic reset(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 8
    check-cast p1, Lcom/yik/yak/ui/fragment/CommentFragment;

    invoke-virtual {p0, p1}, Lcom/yik/yak/ui/fragment/CommentFragment$$ViewInjector;->reset(Lcom/yik/yak/ui/fragment/CommentFragment;)V

    return-void
.end method
