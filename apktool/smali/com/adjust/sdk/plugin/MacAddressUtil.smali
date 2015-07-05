.class public Lcom/adjust/sdk/plugin/MacAddressUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 14
    invoke-static {p0}, Lcom/adjust/sdk/plugin/MacAddressUtil;->getRawMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    .line 19
    :goto_0
    return-object v0

    .line 18
    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-static {v0}, Lcom/adjust/sdk/plugin/MacAddressUtil;->removeSpaceString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getRawMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const-string v0, "wlan0"

    invoke-static {v0}, Lcom/adjust/sdk/plugin/MacAddressUtil;->loadAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    if-eqz v0, :cond_1

    .line 46
    :cond_0
    :goto_0
    return-object v0

    .line 30
    :cond_1
    const-string v0, "eth0"

    invoke-static {v0}, Lcom/adjust/sdk/plugin/MacAddressUtil;->loadAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    if-nez v0, :cond_0

    .line 37
    :try_start_0
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 38
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 39
    if-nez v0, :cond_0

    .line 46
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private static loadAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 51
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/sys/class/net/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/address"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x3e8

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 53
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x400

    invoke-direct {v2, v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 54
    const/16 v0, 0x400

    new-array v0, v0, [C

    .line 58
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/BufferedReader;->read([C)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 59
    const/4 v4, 0x0

    invoke-static {v0, v4, v3}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v3

    .line 60
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 63
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method private static removeSpaceString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 71
    if-nez p0, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-object v0

    .line 75
    :cond_1
    const-string v1, "\\s"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 80
    goto :goto_0
.end method
