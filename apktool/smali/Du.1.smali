.class public LDu;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/fragment/CommentFragment;

.field final synthetic b:Lcom/yik/yak/ui/fragment/CommentFragment$$ViewInjector;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/fragment/CommentFragment$$ViewInjector;Lcom/yik/yak/ui/fragment/CommentFragment;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, LDu;->b:Lcom/yik/yak/ui/fragment/CommentFragment$$ViewInjector;

    iput-object p2, p0, LDu;->a:Lcom/yik/yak/ui/fragment/CommentFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, LDu;->a:Lcom/yik/yak/ui/fragment/CommentFragment;

    invoke-virtual {v0}, Lcom/yik/yak/ui/fragment/CommentFragment;->onSendCommentClicked()V

    .line 21
    return-void
.end method
