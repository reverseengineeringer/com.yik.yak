.class public final Ltn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;
    .locals 3

    .prologue
    .line 378
    new-instance v0, Landroid/os/Bundle;

    const-class v1, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Ljava/lang/ClassLoader;)V

    .line 379
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 380
    new-instance v1, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;-><init>(Landroid/os/Bundle;Ltn;)V

    return-object v1
.end method

.method public a(I)[Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;
    .locals 1

    .prologue
    .line 385
    new-array v0, p1, [Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 375
    invoke-virtual {p0, p1}, Ltn;->a(Landroid/os/Parcel;)Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 375
    invoke-virtual {p0, p1}, Ltn;->a(I)[Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;

    move-result-object v0

    return-object v0
.end method
