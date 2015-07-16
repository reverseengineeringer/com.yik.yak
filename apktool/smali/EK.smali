.class public LEK;
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
    .line 240
    iput-object p1, p0, LEK;->a:Lcom/yik/yak/ui/fragment/DraftsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 243
    iget-object v0, p0, LEK;->a:Lcom/yik/yak/ui/fragment/DraftsFragment;

    iget-object v1, p0, LEK;->a:Lcom/yik/yak/ui/fragment/DraftsFragment;

    invoke-static {v1}, Lcom/yik/yak/ui/fragment/DraftsFragment;->h(Lcom/yik/yak/ui/fragment/DraftsFragment;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/yik/yak/ui/fragment/DraftsFragment;->a(Lcom/yik/yak/ui/fragment/DraftsFragment;IZ)V

    .line 244
    iget-object v0, p0, LEK;->a:Lcom/yik/yak/ui/fragment/DraftsFragment;

    invoke-static {v0}, Lcom/yik/yak/ui/fragment/DraftsFragment;->g(Lcom/yik/yak/ui/fragment/DraftsFragment;)V

    .line 245
    return-void
.end method
