.class public LEo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LFE;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/fragment/CommentFragment;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/fragment/CommentFragment;)V
    .locals 0

    .prologue
    .line 822
    iput-object p1, p0, LEo;->a:Lcom/yik/yak/ui/fragment/CommentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 825
    iget-object v0, p0, LEo;->a:Lcom/yik/yak/ui/fragment/CommentFragment;

    invoke-virtual {v0}, Lcom/yik/yak/ui/fragment/CommentFragment;->a()V

    .line 826
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    iget-object v1, p0, LEo;->a:Lcom/yik/yak/ui/fragment/CommentFragment;

    iget-object v1, v1, Lcom/yik/yak/ui/fragment/CommentFragment;->m:Lcom/yik/yak/data/models/Yak;

    iget-boolean v1, v1, Lcom/yik/yak/data/models/Yak;->IsBasecamp:Z

    invoke-virtual {v0, v1}, LHa;->d(Z)V

    .line 827
    return-void
.end method
