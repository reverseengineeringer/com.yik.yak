.class public Lcom/amplitude/api/Amplitude;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final END_SESSION_EVENT:Ljava/lang/String; = "session_end"

.field public static final REVENUE_EVENT:Ljava/lang/String; = "revenue_amount"

.field public static final START_SESSION_EVENT:Ljava/lang/String; = "session_start"

.field public static final TAG:Ljava/lang/String; = "com.amplitude.api.Amplitude"

.field private static instance:Lcom/amplitude/api/Amplitude$Lib;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/amplitude/api/Amplitude$Lib;

    invoke-direct {v0}, Lcom/amplitude/api/Amplitude$Lib;-><init>()V

    sput-object v0, Lcom/amplitude/api/Amplitude;->instance:Lcom/amplitude/api/Amplitude$Lib;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static disableLocationListening()V
    .locals 1

    .prologue
    .line 806
    sget-object v0, Lcom/amplitude/api/Amplitude;->instance:Lcom/amplitude/api/Amplitude$Lib;

    invoke-virtual {v0}, Lcom/amplitude/api/Amplitude$Lib;->disableLocationListening()V

    .line 807
    return-void
.end method

.method public static enableLocationListening()V
    .locals 1

    .prologue
    .line 802
    sget-object v0, Lcom/amplitude/api/Amplitude;->instance:Lcom/amplitude/api/Amplitude$Lib;

    invoke-virtual {v0}, Lcom/amplitude/api/Amplitude$Lib;->enableLocationListening()V

    .line 803
    return-void
.end method

.method public static enableNewDeviceIdPerInstall(Z)V
    .locals 1

    .prologue
    .line 794
    sget-object v0, Lcom/amplitude/api/Amplitude;->instance:Lcom/amplitude/api/Amplitude$Lib;

    invoke-virtual {v0, p0}, Lcom/amplitude/api/Amplitude$Lib;->enableNewDeviceIdPerInstall(Z)V

    .line 795
    return-void
.end method

.method public static endSession()V
    .locals 1

    .prologue
    .line 834
    sget-object v0, Lcom/amplitude/api/Amplitude;->instance:Lcom/amplitude/api/Amplitude$Lib;

    invoke-virtual {v0}, Lcom/amplitude/api/Amplitude$Lib;->endSession()V

    .line 835
    return-void
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 863
    sget-object v0, Lcom/amplitude/api/Amplitude;->instance:Lcom/amplitude/api/Amplitude$Lib;

    invoke-virtual {v0}, Lcom/amplitude/api/Amplitude$Lib;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getInstance()Lcom/amplitude/api/Amplitude$Lib;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/amplitude/api/Amplitude;->instance:Lcom/amplitude/api/Amplitude$Lib;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 786
    sget-object v0, Lcom/amplitude/api/Amplitude;->instance:Lcom/amplitude/api/Amplitude$Lib;

    invoke-virtual {v0, p0, p1}, Lcom/amplitude/api/Amplitude$Lib;->initialize(Landroid/content/Context;Ljava/lang/String;)V

    .line 787
    return-void
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 790
    sget-object v0, Lcom/amplitude/api/Amplitude;->instance:Lcom/amplitude/api/Amplitude$Lib;

    invoke-virtual {v0, p0, p1, p2}, Lcom/amplitude/api/Amplitude$Lib;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    return-void
.end method

.method public static logEvent(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 818
    sget-object v0, Lcom/amplitude/api/Amplitude;->instance:Lcom/amplitude/api/Amplitude$Lib;

    invoke-virtual {v0, p0}, Lcom/amplitude/api/Amplitude$Lib;->logEvent(Ljava/lang/String;)V

    .line 819
    return-void
.end method

.method public static logEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 822
    sget-object v0, Lcom/amplitude/api/Amplitude;->instance:Lcom/amplitude/api/Amplitude$Lib;

    invoke-virtual {v0, p0, p1}, Lcom/amplitude/api/Amplitude$Lib;->logEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 823
    return-void
.end method

.method public static logRevenue(D)V
    .locals 2

    .prologue
    .line 838
    sget-object v0, Lcom/amplitude/api/Amplitude;->instance:Lcom/amplitude/api/Amplitude$Lib;

    invoke-virtual {v0, p0, p1}, Lcom/amplitude/api/Amplitude$Lib;->logRevenue(D)V

    .line 839
    return-void
.end method

.method public static logRevenue(Ljava/lang/String;ID)V
    .locals 2

    .prologue
    .line 842
    sget-object v0, Lcom/amplitude/api/Amplitude;->instance:Lcom/amplitude/api/Amplitude$Lib;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/amplitude/api/Amplitude$Lib;->logRevenue(Ljava/lang/String;ID)V

    .line 843
    return-void
.end method

.method public static logRevenue(Ljava/lang/String;IDLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 847
    sget-object v1, Lcom/amplitude/api/Amplitude;->instance:Lcom/amplitude/api/Amplitude$Lib;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/amplitude/api/Amplitude$Lib;->logRevenue(Ljava/lang/String;IDLjava/lang/String;Ljava/lang/String;)V

    .line 848
    return-void
.end method

.method public static setOptOut(Z)V
    .locals 1

    .prologue
    .line 814
    sget-object v0, Lcom/amplitude/api/Amplitude;->instance:Lcom/amplitude/api/Amplitude$Lib;

    invoke-virtual {v0, p0}, Lcom/amplitude/api/Amplitude$Lib;->setOptOut(Z)V

    .line 815
    return-void
.end method

.method public static setSessionTimeoutMillis(J)V
    .locals 2

    .prologue
    .line 810
    sget-object v0, Lcom/amplitude/api/Amplitude;->instance:Lcom/amplitude/api/Amplitude$Lib;

    invoke-virtual {v0, p0, p1}, Lcom/amplitude/api/Amplitude$Lib;->setSessionTimeoutMillis(J)V

    .line 811
    return-void
.end method

.method public static setUserId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 859
    sget-object v0, Lcom/amplitude/api/Amplitude;->instance:Lcom/amplitude/api/Amplitude$Lib;

    invoke-virtual {v0, p0}, Lcom/amplitude/api/Amplitude$Lib;->setUserId(Ljava/lang/String;)V

    .line 860
    return-void
.end method

.method public static setUserProperties(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 851
    sget-object v0, Lcom/amplitude/api/Amplitude;->instance:Lcom/amplitude/api/Amplitude$Lib;

    invoke-virtual {v0, p0}, Lcom/amplitude/api/Amplitude$Lib;->setUserProperties(Lorg/json/JSONObject;)V

    .line 852
    return-void
.end method

.method public static setUserProperties(Lorg/json/JSONObject;Z)V
    .locals 1

    .prologue
    .line 855
    sget-object v0, Lcom/amplitude/api/Amplitude;->instance:Lcom/amplitude/api/Amplitude$Lib;

    invoke-virtual {v0, p0, p1}, Lcom/amplitude/api/Amplitude$Lib;->setUserProperties(Lorg/json/JSONObject;Z)V

    .line 856
    return-void
.end method

.method public static startSession()V
    .locals 1

    .prologue
    .line 830
    sget-object v0, Lcom/amplitude/api/Amplitude;->instance:Lcom/amplitude/api/Amplitude$Lib;

    invoke-virtual {v0}, Lcom/amplitude/api/Amplitude$Lib;->startSession()V

    .line 831
    return-void
.end method

.method public static uploadEvents()V
    .locals 1

    .prologue
    .line 826
    sget-object v0, Lcom/amplitude/api/Amplitude;->instance:Lcom/amplitude/api/Amplitude$Lib;

    invoke-virtual {v0}, Lcom/amplitude/api/Amplitude$Lib;->uploadEvents()V

    .line 827
    return-void
.end method

.method public static useAdvertisingIdForDeviceId()V
    .locals 1

    .prologue
    .line 798
    sget-object v0, Lcom/amplitude/api/Amplitude;->instance:Lcom/amplitude/api/Amplitude$Lib;

    invoke-virtual {v0}, Lcom/amplitude/api/Amplitude$Lib;->useAdvertisingIdForDeviceId()V

    .line 799
    return-void
.end method
