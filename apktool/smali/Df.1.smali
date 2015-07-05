.class public LDf;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field protected a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 24
    const-string v0, ""

    iput-object v0, p0, LDf;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(LCH;Landroid/support/v4/app/Fragment;)V
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, LDf;->f()Lcom/yik/yak/ui/activity/MainActivity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/yik/yak/ui/activity/MainActivity;->a(LCH;Landroid/support/v4/app/Fragment;)V

    .line 45
    return-void
.end method

.method public a(Landroid/widget/EditText;)V
    .locals 4

    .prologue
    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, LDg;

    invoke-direct {v1, p0, p1}, LDg;-><init>(LDf;Landroid/widget/EditText;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 81
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, LDf;->a:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public f()Lcom/yik/yak/ui/activity/MainActivity;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, LDf;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/yik/yak/ui/activity/MainActivity;

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0}, LDf;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/ui/activity/MainActivity;

    return-object v0

    .line 55
    :cond_0
    new-instance v0, LAu;

    invoke-direct {v0}, LAu;-><init>()V

    throw v0
.end method

.method public g()V
    .locals 3

    .prologue
    .line 61
    :try_start_0
    invoke-virtual {p0}, LDf;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 62
    invoke-virtual {p0}, LDf;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 63
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 33
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 34
    iget-object v0, p0, LDf;->a:Ljava/lang/String;

    invoke-static {v0}, LGB;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    invoke-static {}, LGs;->a()LGs;

    move-result-object v0

    iget-object v1, p0, LDf;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, LGs;->a(Ljava/lang/String;)V

    .line 37
    :cond_0
    return-void
.end method
