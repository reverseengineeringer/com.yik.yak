.class public Lcom/google/android/gms/maps/MapFragment;
.super Landroid/app/Fragment;


# instance fields
.field private final a:Lkn;

.field private b:Lki;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Lkn;

    invoke-direct {v0, p0}, Lkn;-><init>(Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->a:Lkn;

    return-void
.end method


# virtual methods
.method protected a()LkU;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->a:Lkn;

    invoke-virtual {v0}, Lkn;->g()V

    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->a:Lkn;

    invoke-virtual {v0}, Lkn;->a()Lhn;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->a:Lkn;

    invoke-virtual {v0}, Lkn;->a()Lhn;

    move-result-object v0

    check-cast v0, Lkl;

    invoke-virtual {v0}, Lkl;->f()LkU;

    move-result-object v0

    goto :goto_0
.end method

.method public final b()Lki;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/maps/MapFragment;->a()LkU;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-interface {v1}, LkU;->a()LkO;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->b:Lki;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->b:Lki;

    invoke-virtual {v0}, Lki;->a()LkO;

    move-result-object v0

    invoke-interface {v0}, LkO;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v1}, LkO;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-eq v0, v2, :cond_3

    :cond_2
    new-instance v0, Lki;

    invoke-direct {v0, v1}, Lki;-><init>(LkO;)V

    iput-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->b:Lki;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->b:Lki;

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, LmL;

    invoke-direct {v1, v0}, LmL;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-class v0, Lcom/google/android/gms/maps/MapFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->a:Lkn;

    invoke-static {v0, p1}, Lkn;->a(Lkn;Landroid/app/Activity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->a:Lkn;

    invoke-virtual {v0, p1}, Lkn;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->a:Lkn;

    invoke-virtual {v0, p1, p2, p3}, Lkn;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->a:Lkn;

    invoke-virtual {v0}, Lkn;->e()V

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->a:Lkn;

    invoke-virtual {v0}, Lkn;->d()V

    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->a:Lkn;

    invoke-static {v0, p1}, Lkn;->a(Lkn;Landroid/app/Activity;)V

    invoke-static {p1, p2}, Lcom/google/android/gms/maps/GoogleMapOptions;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/gms/maps/GoogleMapOptions;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "MapOptions"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->a:Lkn;

    invoke-virtual {v0, p1, v1, p3}, Lkn;->a(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->a:Lkn;

    invoke-virtual {v0}, Lkn;->f()V

    invoke-super {p0}, Landroid/app/Fragment;->onLowMemory()V

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->a:Lkn;

    invoke-virtual {v0}, Lkn;->c()V

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->a:Lkn;

    invoke-virtual {v0}, Lkn;->b()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-class v0, Lcom/google/android/gms/maps/MapFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->a:Lkn;

    invoke-virtual {v0, p1}, Lkn;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method
