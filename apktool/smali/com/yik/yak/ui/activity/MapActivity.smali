.class public Lcom/yik/yak/ui/activity/MapActivity;
.super Lcom/yik/yak/ui/activity/BaseAppCompatActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a(DDZLjava/lang/String;)V
    .locals 3

    .prologue
    .line 51
    :try_start_0
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/MapActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0d0074

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/SupportMapFragment;

    .line 52
    invoke-virtual {v0}, Lcom/google/android/gms/maps/SupportMapFragment;->b()Lkl;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lkl;->d()LkE;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, LkE;->a(Z)V

    .line 54
    invoke-virtual {v0}, Lkl;->d()LkE;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, LkE;->b(Z)V

    .line 55
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {v1, v2}, Lkk;->a(Lcom/google/android/gms/maps/model/LatLng;F)Lkj;

    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Lkl;->a(Lkj;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    .line 21
    invoke-super {p0, p1}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const v0, 0x7f03001d

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/MapActivity;->setContentView(I)V

    .line 23
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/MapActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 25
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/MapActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/MapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00ec

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 27
    :cond_0
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/MapActivity;->a(Ljava/lang/String;)V

    .line 32
    const-string v7, ""

    .line 33
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/MapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    const-string v1, "lat"

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v2

    .line 38
    const-string v1, "lon"

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v4

    .line 39
    const-string v1, "hidePin"

    const/4 v6, 0x1

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    move-object v1, p0

    .line 45
    invoke-virtual/range {v1 .. v7}, Lcom/yik/yak/ui/activity/MapActivity;->a(DDZLjava/lang/String;)V

    .line 46
    :goto_0
    return-void

    .line 41
    :cond_1
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/MapActivity;->finish()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 65
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 70
    invoke-super {p0, p1}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 67
    :pswitch_0
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/MapActivity;->onBackPressed()V

    .line 68
    const/4 v0, 0x1

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
