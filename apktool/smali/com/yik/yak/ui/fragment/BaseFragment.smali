.class public Lcom/yik/yak/ui/fragment/BaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/BaseFragment;->a:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yik/yak/ui/fragment/BaseFragment;->b:Z

    return-void
.end method


# virtual methods
.method public a(LCU;Landroid/support/v4/app/Fragment;)V
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/BaseFragment;->h()Lcom/yik/yak/ui/activity/MainActivity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/yik/yak/ui/activity/MainActivity;->a(LCU;Landroid/support/v4/app/Fragment;)V

    .line 44
    return-void
.end method

.method protected a(Landroid/widget/EditText;)V
    .locals 4

    .prologue
    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, LDL;

    invoke-direct {v1, p0, p1}, LDL;-><init>(Lcom/yik/yak/ui/fragment/BaseFragment;Landroid/widget/EditText;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 80
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/yik/yak/ui/fragment/BaseFragment;->a:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public h()Lcom/yik/yak/ui/activity/MainActivity;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/yik/yak/ui/activity/MainActivity;

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/ui/activity/MainActivity;

    return-object v0

    .line 54
    :cond_0
    new-instance v0, LAH;

    invoke-direct {v0}, LAH;-><init>()V

    throw v0
.end method

.method protected i()V
    .locals 3

    .prologue
    .line 60
    :try_start_0
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 61
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 62
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected j()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 84
    iget-boolean v0, p0, Lcom/yik/yak/ui/fragment/BaseFragment;->b:Z

    if-nez v0, :cond_1

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yik/yak/ui/fragment/BaseFragment;->b:Z

    .line 87
    :try_start_0
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/BaseFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 89
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/BaseFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    move v0, v1

    .line 91
    :goto_0
    if-ge v0, v2, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/BaseFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->popBackStack()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 98
    :cond_0
    iput-boolean v1, p0, Lcom/yik/yak/ui/fragment/BaseFragment;->b:Z

    .line 100
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 32
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 33
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/BaseFragment;->a:Ljava/lang/String;

    invoke-static {v0}, LHi;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/BaseFragment;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, LHa;->a(Ljava/lang/String;)V

    .line 36
    :cond_0
    return-void
.end method
