.class public abstract Lcom/yik/yak/ui/activity/FragmentContainerActivity;
.super Lcom/yik/yak/ui/activity/BaseAppCompatActivity;
.source "SourceFile"


# instance fields
.field private c:Landroid/support/v7/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()Landroid/support/v4/app/Fragment;
.end method

.method protected abstract c()Ljava/lang/String;
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 23
    invoke-super {p0, p1}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v0, 0x7f03001b

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/FragmentContainerActivity;->setContentView(I)V

    .line 25
    const v0, 0x7f0d0064

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/FragmentContainerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/FragmentContainerActivity;->c:Landroid/support/v7/widget/Toolbar;

    .line 26
    iget-object v0, p0, Lcom/yik/yak/ui/activity/FragmentContainerActivity;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/FragmentContainerActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 27
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/FragmentContainerActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 28
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/FragmentContainerActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 29
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/FragmentContainerActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/FragmentContainerActivity;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 31
    if-nez p1, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/FragmentContainerActivity;->a()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 33
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/FragmentContainerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 34
    const v2, 0x7f0d0071

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 36
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 40
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 46
    invoke-super {p0, p1}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 42
    :pswitch_0
    invoke-super {p0}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onBackPressed()V

    .line 43
    const/4 v0, 0x1

    goto :goto_0

    .line 40
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
