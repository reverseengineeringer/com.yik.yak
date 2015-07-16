.class public LEG;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/fragment/DraftsFragment;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/fragment/DraftsFragment;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, LEG;->a:Lcom/yik/yak/ui/fragment/DraftsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 146
    if-eqz p2, :cond_0

    .line 148
    iget-object v0, p0, LEG;->a:Lcom/yik/yak/ui/fragment/DraftsFragment;

    invoke-static {v0}, Lcom/yik/yak/ui/fragment/DraftsFragment;->b(Lcom/yik/yak/ui/fragment/DraftsFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0200fa

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 149
    :cond_0
    iget-object v0, p0, LEG;->a:Lcom/yik/yak/ui/fragment/DraftsFragment;

    iget-object v1, p0, LEG;->a:Lcom/yik/yak/ui/fragment/DraftsFragment;

    invoke-static {v1}, Lcom/yik/yak/ui/fragment/DraftsFragment;->c(Lcom/yik/yak/ui/fragment/DraftsFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/yik/yak/ui/fragment/DraftsFragment;->a(Lcom/yik/yak/ui/fragment/DraftsFragment;Landroid/widget/TextView;Z)V

    .line 150
    iget-object v0, p0, LEG;->a:Lcom/yik/yak/ui/fragment/DraftsFragment;

    invoke-static {v0, v2}, Lcom/yik/yak/ui/fragment/DraftsFragment;->a(Lcom/yik/yak/ui/fragment/DraftsFragment;Z)Z

    .line 152
    return-void
.end method
