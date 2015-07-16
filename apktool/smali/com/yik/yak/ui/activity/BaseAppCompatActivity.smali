.class public Lcom/yik/yak/ui/activity/BaseAppCompatActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SourceFile"


# instance fields
.field protected a:Landroid/support/v7/widget/Toolbar;

.field protected b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->b:Z

    return-void
.end method


# virtual methods
.method protected a(Landroid/widget/EditText;)V
    .locals 2

    .prologue
    .line 95
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, LAX;

    invoke-direct {v1, p0, p1}, LAX;-><init>(Lcom/yik/yak/ui/activity/BaseAppCompatActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 104
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 65
    const v0, 0x7f0d0064

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->a:Landroid/support/v7/widget/Toolbar;

    .line 67
    iget-object v0, p0, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->a:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0, p1}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->b(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 70
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 72
    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 90
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const v1, 0x1020002

    invoke-virtual {p0, v1}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 91
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 76
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-le v0, v1, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->setRequestedOrientation(I)V

    .line 45
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 80
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 86
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 82
    :pswitch_0
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onBackPressed()V

    goto :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 59
    iget-boolean v0, p0, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->b:Z

    if-eqz v0, :cond_0

    .line 60
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    invoke-virtual {v0}, LHa;->h()V

    .line 62
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 51
    iget-boolean v0, p0, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->b:Z

    if-eqz v0, :cond_0

    .line 52
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    invoke-virtual {v0}, LHa;->g()V

    .line 54
    :cond_0
    return-void
.end method
