.class public LAU;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/activity/MainActivity;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/activity/MainActivity;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, LAU;->a:Lcom/yik/yak/ui/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 144
    :try_start_0
    iget-object v0, p0, LAU;->a:Lcom/yik/yak/ui/activity/MainActivity;

    invoke-virtual {v0}, Lcom/yik/yak/ui/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    .line 145
    iget-object v1, p0, LAU;->a:Lcom/yik/yak/ui/activity/MainActivity;

    invoke-static {v1}, Lcom/yik/yak/ui/activity/MainActivity;->b(Lcom/yik/yak/ui/activity/MainActivity;)LuP;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v0

    invoke-virtual {v1, v2, v0}, LuP;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    .line 160
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v0

    iget-object v0, p0, LAU;->a:Lcom/yik/yak/ui/activity/MainActivity;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/MainActivity;->b(Lcom/yik/yak/ui/activity/MainActivity;)LuP;

    move-result-object v0

    iget-object v1, p0, LAU;->a:Lcom/yik/yak/ui/activity/MainActivity;

    invoke-virtual {v1}, Lcom/yik/yak/ui/activity/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LuP;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :catch_1
    move-exception v0

    iget-object v0, p0, LAU;->a:Lcom/yik/yak/ui/activity/MainActivity;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/MainActivity;->b(Lcom/yik/yak/ui/activity/MainActivity;)LuP;

    move-result-object v0

    iget-object v1, p0, LAU;->a:Lcom/yik/yak/ui/activity/MainActivity;

    invoke-virtual {v1}, Lcom/yik/yak/ui/activity/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LuP;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :catch_2
    move-exception v0

    iget-object v0, p0, LAU;->a:Lcom/yik/yak/ui/activity/MainActivity;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/MainActivity;->b(Lcom/yik/yak/ui/activity/MainActivity;)LuP;

    move-result-object v0

    iget-object v1, p0, LAU;->a:Lcom/yik/yak/ui/activity/MainActivity;

    invoke-virtual {v1}, Lcom/yik/yak/ui/activity/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LuP;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 158
    :catch_3
    move-exception v0

    iget-object v0, p0, LAU;->a:Lcom/yik/yak/ui/activity/MainActivity;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/MainActivity;->b(Lcom/yik/yak/ui/activity/MainActivity;)LuP;

    move-result-object v0

    iget-object v1, p0, LAU;->a:Lcom/yik/yak/ui/activity/MainActivity;

    invoke-virtual {v1}, Lcom/yik/yak/ui/activity/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LuP;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
