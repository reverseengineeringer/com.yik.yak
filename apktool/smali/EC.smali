.class LEC;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:LEB;


# direct methods
.method constructor <init>(LEB;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, LEC;->a:LEB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 330
    invoke-static {}, LAB;->a()LAB;

    move-result-object v0

    invoke-virtual {v0}, LAB;->e()I

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    new-instance v0, LEc;

    invoke-direct {v0}, LEc;-><init>()V

    .line 332
    iget-object v1, p0, LEC;->a:LEB;

    iget-object v1, v1, LEB;->a:LEy;

    sget-object v2, LCH;->b:LCH;

    invoke-virtual {v1, v2, v0}, LEy;->a(LCH;Landroid/support/v4/app/Fragment;)V

    .line 336
    :goto_0
    return-void

    .line 334
    :cond_0
    iget-object v0, p0, LEC;->a:LEB;

    iget-object v0, v0, LEB;->a:LEy;

    invoke-virtual {v0}, LEy;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "You don\'t have any saved peeks to manage."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
