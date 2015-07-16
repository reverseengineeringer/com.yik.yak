.class public Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/concurrent/locks/ReentrantLock;

.field private static e:J

.field private static f:Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;

.field private static g:I

.field private static h:I


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 375
    new-instance v0, Ltt;

    invoke-direct {v0}, Ltt;-><init>()V

    sput-object v0, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 433
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->d:Ljava/util/concurrent/locks/ReentrantLock;

    .line 434
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->e:J

    .line 435
    const/4 v0, 0x0

    sput-object v0, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->f:Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;

    .line 436
    const/4 v0, 0x0

    sput v0, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->g:I

    .line 437
    const/4 v0, -0x1

    sput v0, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->h:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 424
    const-string v0, "com.mixpanel.android.mpmetrics.UpdateDisplayState.DISTINCT_ID_BUNDLE_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->a:Ljava/lang/String;

    .line 425
    const-string v0, "com.mixpanel.android.mpmetrics.UpdateDisplayState.TOKEN_BUNDLE_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->b:Ljava/lang/String;

    .line 426
    const-string v0, "com.mixpanel.android.mpmetrics.UpdateDisplayState.DISPLAYSTATE_BUNDLE_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState;

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->c:Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState;

    .line 427
    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Bundle;Ltt;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method constructor <init>(Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    iput-object p2, p0, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->a:Ljava/lang/String;

    .line 418
    iput-object p3, p0, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->b:Ljava/lang/String;

    .line 419
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->c:Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState;

    .line 420
    return-void
.end method

.method public static a(Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 320
    const/4 v0, -0x1

    .line 322
    sget-object v1, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 323
    :cond_0
    invoke-static {}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 324
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->e:J

    .line 325
    new-instance v0, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;

    invoke-direct {v0, p0, p1, p2}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;-><init>(Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->f:Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;

    .line 326
    sget v0, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->g:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->g:I

    .line 327
    sget v0, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->g:I

    .line 330
    :goto_0
    return v0

    .line 329
    :cond_1
    sget-boolean v1, LsG;->a:Z

    goto :goto_0
.end method

.method public static a()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    .prologue
    .line 300
    sget-object v0, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->d:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method public static a(I)V
    .locals 2

    .prologue
    .line 341
    sget-object v0, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 343
    :try_start_0
    sget v0, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->h:I

    if-ne p0, v0, :cond_0

    .line 344
    const/4 v0, -0x1

    sput v0, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->h:I

    .line 345
    const/4 v0, 0x0

    sput-object v0, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->f:Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    :cond_0
    sget-object v0, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 350
    return-void

    .line 348
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public static b(I)Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 356
    sget-object v1, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 358
    :try_start_0
    sget v1, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->h:I

    if-lez v1, :cond_0

    sget v1, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, p0, :cond_0

    .line 371
    sget-object v1, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 361
    :cond_0
    :try_start_1
    sget-object v1, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->f:Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    .line 371
    sget-object v1, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 366
    :cond_1
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->e:J

    .line 367
    sput p0, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->h:I

    .line 368
    sget-object v0, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->f:Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 371
    sget-object v1, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public static b()Z
    .locals 4

    .prologue
    .line 305
    sget-object v0, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 307
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 308
    sget-wide v2, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->e:J

    sub-long/2addr v0, v2

    .line 310
    sget v2, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->g:I

    if-lez v2, :cond_1

    const-wide/32 v2, 0x2932e00

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 311
    const/4 v0, 0x0

    sput-object v0, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->f:Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;

    .line 315
    :cond_1
    sget-object v0, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->f:Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public c()Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->c:Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->a:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 391
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->b:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    .line 396
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 397
    const-string v1, "com.mixpanel.android.mpmetrics.UpdateDisplayState.DISTINCT_ID_BUNDLE_KEY"

    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const-string v1, "com.mixpanel.android.mpmetrics.UpdateDisplayState.TOKEN_BUNDLE_KEY"

    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const-string v1, "com.mixpanel.android.mpmetrics.UpdateDisplayState.DISPLAYSTATE_BUNDLE_KEY"

    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->c:Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 400
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 401
    return-void
.end method
