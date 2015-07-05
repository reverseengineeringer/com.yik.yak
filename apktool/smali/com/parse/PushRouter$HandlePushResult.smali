.class final enum Lcom/parse/PushRouter$HandlePushResult;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parse/PushRouter$HandlePushResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parse/PushRouter$HandlePushResult;

.field public static final enum BROADCAST_INTENT:Lcom/parse/PushRouter$HandlePushResult;

.field public static final enum FAILED_HISTORY_TEST:Lcom/parse/PushRouter$HandlePushResult;

.field public static final enum INVALID_DATA:Lcom/parse/PushRouter$HandlePushResult;

.field public static final enum INVALID_ROUTE:Lcom/parse/PushRouter$HandlePushResult;

.field public static final enum INVOKED_PARSE_PUSH_BROADCAST_RECEIVER:Lcom/parse/PushRouter$HandlePushResult;

.field public static final enum NO_ROUTE_FOUND:Lcom/parse/PushRouter$HandlePushResult;

.field public static final enum SHOW_NOTIFICATION:Lcom/parse/PushRouter$HandlePushResult;

.field public static final enum SHOW_NOTIFICATION_AND_BROADCAST_INTENT:Lcom/parse/PushRouter$HandlePushResult;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 380
    new-instance v0, Lcom/parse/PushRouter$HandlePushResult;

    const-string v1, "INVALID_DATA"

    invoke-direct {v0, v1, v3}, Lcom/parse/PushRouter$HandlePushResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/PushRouter$HandlePushResult;->INVALID_DATA:Lcom/parse/PushRouter$HandlePushResult;

    .line 381
    new-instance v0, Lcom/parse/PushRouter$HandlePushResult;

    const-string v1, "FAILED_HISTORY_TEST"

    invoke-direct {v0, v1, v4}, Lcom/parse/PushRouter$HandlePushResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/PushRouter$HandlePushResult;->FAILED_HISTORY_TEST:Lcom/parse/PushRouter$HandlePushResult;

    .line 382
    new-instance v0, Lcom/parse/PushRouter$HandlePushResult;

    const-string v1, "NO_ROUTE_FOUND"

    invoke-direct {v0, v1, v5}, Lcom/parse/PushRouter$HandlePushResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/PushRouter$HandlePushResult;->NO_ROUTE_FOUND:Lcom/parse/PushRouter$HandlePushResult;

    .line 383
    new-instance v0, Lcom/parse/PushRouter$HandlePushResult;

    const-string v1, "INVALID_ROUTE"

    invoke-direct {v0, v1, v6}, Lcom/parse/PushRouter$HandlePushResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/PushRouter$HandlePushResult;->INVALID_ROUTE:Lcom/parse/PushRouter$HandlePushResult;

    .line 384
    new-instance v0, Lcom/parse/PushRouter$HandlePushResult;

    const-string v1, "BROADCAST_INTENT"

    invoke-direct {v0, v1, v7}, Lcom/parse/PushRouter$HandlePushResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/PushRouter$HandlePushResult;->BROADCAST_INTENT:Lcom/parse/PushRouter$HandlePushResult;

    .line 385
    new-instance v0, Lcom/parse/PushRouter$HandlePushResult;

    const-string v1, "SHOW_NOTIFICATION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/parse/PushRouter$HandlePushResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/PushRouter$HandlePushResult;->SHOW_NOTIFICATION:Lcom/parse/PushRouter$HandlePushResult;

    .line 386
    new-instance v0, Lcom/parse/PushRouter$HandlePushResult;

    const-string v1, "SHOW_NOTIFICATION_AND_BROADCAST_INTENT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/parse/PushRouter$HandlePushResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/PushRouter$HandlePushResult;->SHOW_NOTIFICATION_AND_BROADCAST_INTENT:Lcom/parse/PushRouter$HandlePushResult;

    .line 387
    new-instance v0, Lcom/parse/PushRouter$HandlePushResult;

    const-string v1, "INVOKED_PARSE_PUSH_BROADCAST_RECEIVER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/parse/PushRouter$HandlePushResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/PushRouter$HandlePushResult;->INVOKED_PARSE_PUSH_BROADCAST_RECEIVER:Lcom/parse/PushRouter$HandlePushResult;

    .line 379
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/parse/PushRouter$HandlePushResult;

    sget-object v1, Lcom/parse/PushRouter$HandlePushResult;->INVALID_DATA:Lcom/parse/PushRouter$HandlePushResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/parse/PushRouter$HandlePushResult;->FAILED_HISTORY_TEST:Lcom/parse/PushRouter$HandlePushResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/parse/PushRouter$HandlePushResult;->NO_ROUTE_FOUND:Lcom/parse/PushRouter$HandlePushResult;

    aput-object v1, v0, v5

    sget-object v1, Lcom/parse/PushRouter$HandlePushResult;->INVALID_ROUTE:Lcom/parse/PushRouter$HandlePushResult;

    aput-object v1, v0, v6

    sget-object v1, Lcom/parse/PushRouter$HandlePushResult;->BROADCAST_INTENT:Lcom/parse/PushRouter$HandlePushResult;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/parse/PushRouter$HandlePushResult;->SHOW_NOTIFICATION:Lcom/parse/PushRouter$HandlePushResult;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/parse/PushRouter$HandlePushResult;->SHOW_NOTIFICATION_AND_BROADCAST_INTENT:Lcom/parse/PushRouter$HandlePushResult;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/parse/PushRouter$HandlePushResult;->INVOKED_PARSE_PUSH_BROADCAST_RECEIVER:Lcom/parse/PushRouter$HandlePushResult;

    aput-object v2, v0, v1

    sput-object v0, Lcom/parse/PushRouter$HandlePushResult;->$VALUES:[Lcom/parse/PushRouter$HandlePushResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 379
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parse/PushRouter$HandlePushResult;
    .locals 1

    .prologue
    .line 379
    const-class v0, Lcom/parse/PushRouter$HandlePushResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parse/PushRouter$HandlePushResult;

    return-object v0
.end method

.method public static values()[Lcom/parse/PushRouter$HandlePushResult;
    .locals 1

    .prologue
    .line 379
    sget-object v0, Lcom/parse/PushRouter$HandlePushResult;->$VALUES:[Lcom/parse/PushRouter$HandlePushResult;

    invoke-virtual {v0}, [Lcom/parse/PushRouter$HandlePushResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parse/PushRouter$HandlePushResult;

    return-object v0
.end method
