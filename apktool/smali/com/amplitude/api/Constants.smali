.class public Lcom/amplitude/api/Constants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final API_VERSION:I = 0x2

.field public static final DATABASE_NAME:Ljava/lang/String;

.field public static final DATABASE_VERSION:I = 0x1

.field public static final EVENT_LOG_URL:Ljava/lang/String; = "https://api.amplitude.com/"

.field public static final EVENT_MAX_COUNT:I = 0x3e8

.field public static final EVENT_REMOVE_BATCH_SIZE:I = 0x14

.field public static final EVENT_UPLOAD_MAX_BATCH_SIZE:I = 0x64

.field public static final EVENT_UPLOAD_PERIOD_MILLIS:J = 0x7530L

.field public static final EVENT_UPLOAD_THRESHOLD:I = 0x1e

.field public static final LIBRARY:Ljava/lang/String; = "amplitude-android"

.field public static final MIN_TIME_BETWEEN_SESSIONS_MILLIS:J = 0x3a98L

.field public static final PACKAGE_NAME:Ljava/lang/String;

.field public static final PLATFORM:Ljava/lang/String; = "Android"

.field public static final PREFKEY_DEVICE_ID:Ljava/lang/String;

.field public static final PREFKEY_OPT_OUT:Ljava/lang/String;

.field public static final PREFKEY_PREVIOUS_END_SESSION_ID:Ljava/lang/String;

.field public static final PREFKEY_PREVIOUS_END_SESSION_TIME:Ljava/lang/String;

.field public static final PREFKEY_PREVIOUS_SESSION_ID:Ljava/lang/String;

.field public static final PREFKEY_PREVIOUS_SESSION_TIME:Ljava/lang/String;

.field public static final PREFKEY_USER_ID:Ljava/lang/String;

.field public static final SESSION_TIMEOUT_MILLIS:J = 0x1b7740L

.field public static final SHARED_PREFERENCES_NAME_PREFIX:Ljava/lang/String;

.field public static final VERSION:Ljava/lang/String; = "1.4.6"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    const-class v0, Lcom/amplitude/api/Constants;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amplitude/api/Constants;->PACKAGE_NAME:Ljava/lang/String;

    .line 15
    sget-object v0, Lcom/amplitude/api/Constants;->PACKAGE_NAME:Ljava/lang/String;

    sput-object v0, Lcom/amplitude/api/Constants;->DATABASE_NAME:Ljava/lang/String;

    .line 26
    sget-object v0, Lcom/amplitude/api/Constants;->PACKAGE_NAME:Ljava/lang/String;

    sput-object v0, Lcom/amplitude/api/Constants;->SHARED_PREFERENCES_NAME_PREFIX:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amplitude/api/Constants;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".previousSessionTime"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amplitude/api/Constants;->PREFKEY_PREVIOUS_SESSION_TIME:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amplitude/api/Constants;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".previousEndSessionTime"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amplitude/api/Constants;->PREFKEY_PREVIOUS_END_SESSION_TIME:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amplitude/api/Constants;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".previousEndSessionId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amplitude/api/Constants;->PREFKEY_PREVIOUS_END_SESSION_ID:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amplitude/api/Constants;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".previousSessionId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amplitude/api/Constants;->PREFKEY_PREVIOUS_SESSION_ID:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amplitude/api/Constants;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".deviceId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amplitude/api/Constants;->PREFKEY_DEVICE_ID:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amplitude/api/Constants;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".userId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amplitude/api/Constants;->PREFKEY_USER_ID:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amplitude/api/Constants;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".optOut"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amplitude/api/Constants;->PREFKEY_OPT_OUT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
