.class public LEJ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/fragment/DraftsFragment;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/fragment/DraftsFragment;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, LEJ;->a:Lcom/yik/yak/ui/fragment/DraftsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, LEJ;->a:Lcom/yik/yak/ui/fragment/DraftsFragment;

    iget-object v1, p0, LEJ;->a:Lcom/yik/yak/ui/fragment/DraftsFragment;

    invoke-static {v1}, Lcom/yik/yak/ui/fragment/DraftsFragment;->f(Lcom/yik/yak/ui/fragment/DraftsFragment;)Lcom/yik/yak/data/models/Yak;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yik/yak/ui/fragment/DraftsFragment;->a(Lcom/yik/yak/ui/fragment/DraftsFragment;Lcom/yik/yak/data/models/Yak;)V

    .line 235
    iget-object v0, p0, LEJ;->a:Lcom/yik/yak/ui/fragment/DraftsFragment;

    invoke-static {v0}, Lcom/yik/yak/ui/fragment/DraftsFragment;->g(Lcom/yik/yak/ui/fragment/DraftsFragment;)V

    .line 236
    return-void
.end method
