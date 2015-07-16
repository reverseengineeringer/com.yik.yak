.class LsT;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mixpanel/android/mpmetrics/InAppNotification;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:LsQ;


# direct methods
.method constructor <init>(LsQ;Lcom/mixpanel/android/mpmetrics/InAppNotification;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1828
    iput-object p1, p0, LsT;->c:LsQ;

    iput-object p2, p0, LsT;->a:Lcom/mixpanel/android/mpmetrics/InAppNotification;

    iput-object p3, p0, LsT;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 1832
    invoke-static {}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->a()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    .line 1833
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1835
    :try_start_0
    invoke-static {}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1836
    sget-boolean v0, LsG;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1837
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1917
    :goto_0
    return-void

    .line 1842
    :cond_0
    :try_start_1
    iget-object v0, p0, LsT;->a:Lcom/mixpanel/android/mpmetrics/InAppNotification;

    .line 1843
    if-nez v0, :cond_6

    .line 1844
    iget-object v0, p0, LsT;->c:LsQ;

    invoke-virtual {v0}, LsQ;->c()Lcom/mixpanel/android/mpmetrics/InAppNotification;

    move-result-object v0

    move-object v1, v0

    .line 1846
    :goto_1
    if-nez v1, :cond_1

    .line 1847
    sget-boolean v0, LsG;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1848
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 1853
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/InAppNotification;->d()LsC;

    move-result-object v0

    .line 1854
    sget-object v3, LsC;->c:LsC;

    if-ne v0, v3, :cond_2

    iget-object v3, p0, LsT;->b:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lsn;->b(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1855
    sget-boolean v0, LsG;->a:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1856
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 1861
    :cond_2
    :try_start_3
    iget-object v3, p0, LsT;->b:Landroid/app/Activity;

    invoke-static {v3}, LtQ;->a(Landroid/app/Activity;)I

    move-result v3

    .line 1862
    new-instance v4, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$InAppNotificationState;

    invoke-direct {v4, v1, v3}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$InAppNotificationState;-><init>(Lcom/mixpanel/android/mpmetrics/InAppNotification;I)V

    .line 1864
    iget-object v3, p0, LsT;->c:LsQ;

    invoke-virtual {v3}, LsQ;->e()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, LsT;->c:LsQ;

    iget-object v5, v5, LsQ;->a:LsK;

    invoke-static {v5}, LsK;->f(LsK;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->a(Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v3

    .line 1865
    if-gtz v3, :cond_3

    .line 1866
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 1870
    :cond_3
    :try_start_4
    sget-object v4, LsN;->a:[I

    invoke-virtual {v0}, LsC;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 1909
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized notification type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " can\'t be shown"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1911
    :goto_2
    iget-object v0, p0, LsT;->c:LsQ;

    iget-object v0, v0, LsQ;->a:LsK;

    invoke-static {v0}, LsK;->d(LsK;)LsG;

    move-result-object v0

    invoke-virtual {v0}, LsG;->h()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1912
    iget-object v0, p0, LsT;->c:LsQ;

    invoke-virtual {v0, v1}, LsQ;->a(Lcom/mixpanel/android/mpmetrics/InAppNotification;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1915
    :cond_4
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 1872
    :pswitch_0
    :try_start_5
    invoke-static {v3}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->b(I)Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;

    move-result-object v0

    .line 1873
    if-nez v0, :cond_5

    .line 1874
    sget-boolean v0, LsG;->a:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1875
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 1879
    :cond_5
    :try_start_6
    new-instance v4, Lcom/mixpanel/android/mpmetrics/InAppFragment;

    invoke-direct {v4}, Lcom/mixpanel/android/mpmetrics/InAppFragment;-><init>()V

    .line 1880
    iget-object v5, p0, LsT;->c:LsQ;

    iget-object v5, v5, LsQ;->a:LsK;

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->c()Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState;

    move-result-object v0

    check-cast v0, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$InAppNotificationState;

    invoke-virtual {v4, v5, v3, v0}, Lcom/mixpanel/android/mpmetrics/InAppFragment;->a(LsK;ILcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$InAppNotificationState;)V

    .line 1885
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lcom/mixpanel/android/mpmetrics/InAppFragment;->setRetainInstance(Z)V

    .line 1887
    sget-boolean v0, LsG;->a:Z

    .line 1888
    iget-object v0, p0, LsT;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1891
    const/4 v3, 0x0

    sget v5, Lri;->com_mixpanel_android_slide_down:I

    invoke-virtual {v0, v3, v5}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    .line 1892
    const v3, 0x1020002

    invoke-virtual {v0, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1893
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 1915
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 1897
    :pswitch_1
    :try_start_7
    sget-boolean v0, LsG;->a:Z

    .line 1898
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, LsT;->b:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/mixpanel/android/surveys/SurveyActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1902
    const/high16 v4, 0x10000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1903
    const/high16 v4, 0x20000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1904
    const-string v4, "com.mixpanel.android.surveys.SurveyActivity.INTENT_ID_KEY"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1905
    iget-object v3, p0, LsT;->b:Landroid/app/Activity;

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :cond_6
    move-object v1, v0

    goto/16 :goto_1

    .line 1870
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
