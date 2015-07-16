.class synthetic Lcom/yik/yak/data/http/request/DownloadNotifications$1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $SwitchMap$com$yik$yak$data$models$Notification$API:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 76
    invoke-static {}, LAA;->a()[LAA;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/yik/yak/data/http/request/DownloadNotifications$1;->$SwitchMap$com$yik$yak$data$models$Notification$API:[I

    :try_start_0
    sget-object v0, Lcom/yik/yak/data/http/request/DownloadNotifications$1;->$SwitchMap$com$yik$yak$data$models$Notification$API:[I

    sget-object v1, LAA;->c:LAA;

    invoke-virtual {v1}, LAA;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
