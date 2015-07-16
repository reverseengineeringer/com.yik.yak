.class public Lcom/mixpanel/android/mpmetrics/InAppFragment;
.super Landroid/app/Fragment;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ClickableViewAccessibility"
    }
.end annotation

.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field private a:LsK;

.field private b:Landroid/app/Activity;

.field private c:Landroid/view/GestureDetector;

.field private d:Landroid/os/Handler;

.field private e:I

.field private f:Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$InAppNotificationState;

.field private g:Ljava/lang/Runnable;

.field private h:Ljava/lang/Runnable;

.field private i:Landroid/view/View;

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 243
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->j:Z

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 216
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 217
    iget v0, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->e:I

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->a(I)V

    .line 219
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 221
    invoke-virtual {v0, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 224
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->j:Z

    .line 225
    return-void
.end method

.method public static synthetic a(Lcom/mixpanel/android/mpmetrics/InAppFragment;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/InAppFragment;->b()V

    return-void
.end method

.method public static synthetic b(Lcom/mixpanel/android/mpmetrics/InAppFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->i:Landroid/view/View;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 228
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->b:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->j:Z

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 230
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 232
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 236
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 237
    const/4 v1, 0x0

    sget v2, Lri;->com_mixpanel_android_slide_down:I

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 238
    iget v0, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->e:I

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->a(I)V

    .line 239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->j:Z

    .line 241
    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/mixpanel/android/mpmetrics/InAppFragment;)Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$InAppNotificationState;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->f:Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$InAppNotificationState;

    return-object v0
.end method

.method public static synthetic d(Lcom/mixpanel/android/mpmetrics/InAppFragment;)Landroid/view/GestureDetector;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->c:Landroid/view/GestureDetector;

    return-object v0
.end method

.method public static synthetic e(Lcom/mixpanel/android/mpmetrics/InAppFragment;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->b:Landroid/app/Activity;

    return-object v0
.end method

.method public static synthetic f(Lcom/mixpanel/android/mpmetrics/InAppFragment;)LsK;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->a:LsK;

    return-object v0
.end method


# virtual methods
.method public a(LsK;ILcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$InAppNotificationState;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->a:LsK;

    .line 47
    iput p2, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->e:I

    .line 48
    iput-object p3, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->f:Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$InAppNotificationState;

    .line 49
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 55
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->b:Landroid/app/Activity;

    .line 56
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->f:Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$InAppNotificationState;

    if-nez v0, :cond_0

    .line 57
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/InAppFragment;->a()V

    .line 152
    :goto_0
    return-void

    .line 64
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->d:Landroid/os/Handler;

    .line 65
    new-instance v0, Lsw;

    invoke-direct {v0, p0}, Lsw;-><init>(Lcom/mixpanel/android/mpmetrics/InAppFragment;)V

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->g:Ljava/lang/Runnable;

    .line 70
    new-instance v0, Lsx;

    invoke-direct {v0, p0}, Lsx;-><init>(Lcom/mixpanel/android/mpmetrics/InAppFragment;)V

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->h:Ljava/lang/Runnable;

    .line 98
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lsz;

    invoke-direct {v1, p0}, Lsz;-><init>(Lcom/mixpanel/android/mpmetrics/InAppFragment;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->c:Landroid/view/GestureDetector;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 156
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->j:Z

    .line 158
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 162
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 164
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->f:Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$InAppNotificationState;

    if-nez v0, :cond_0

    .line 165
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/InAppFragment;->a()V

    .line 179
    :goto_0
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->i:Landroid/view/View;

    return-object v0

    .line 167
    :cond_0
    sget v0, Lrl;->com_mixpanel_android_activity_notification_mini:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->i:Landroid/view/View;

    .line 168
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->i:Landroid/view/View;

    sget v1, Lrk;->com_mixpanel_android_notification_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 169
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->i:Landroid/view/View;

    sget v2, Lrk;->com_mixpanel_android_notification_image:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 171
    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->f:Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$InAppNotificationState;

    invoke-virtual {v2}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$InAppNotificationState;->c()Lcom/mixpanel/android/mpmetrics/InAppNotification;

    move-result-object v2

    .line 173
    invoke-virtual {v2}, Lcom/mixpanel/android/mpmetrics/InAppNotification;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    invoke-virtual {v2}, Lcom/mixpanel/android/mpmetrics/InAppNotification;->l()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 176
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->g:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 209
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 210
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/InAppFragment;->a()V

    .line 211
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 193
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 198
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->h:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 199
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/InAppFragment;->a()V

    .line 204
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 205
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 184
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 186
    iget-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->j:Z

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/InAppFragment;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 189
    :cond_0
    return-void
.end method
