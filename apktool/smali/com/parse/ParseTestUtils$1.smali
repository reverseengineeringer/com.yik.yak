.class final Lcom/parse/ParseTestUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/parse/PushRouter$PushListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPushHandled(Lorg/json/JSONObject;Lcom/parse/PushRouter$HandlePushResult;)V
    .locals 2

    .prologue
    .line 484
    sget-object v0, Lcom/parse/PushRouter$HandlePushResult;->INVOKED_PARSE_PUSH_BROADCAST_RECEIVER:Lcom/parse/PushRouter$HandlePushResult;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/parse/PushRouter$HandlePushResult;->SHOW_NOTIFICATION:Lcom/parse/PushRouter$HandlePushResult;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/parse/PushRouter$HandlePushResult;->SHOW_NOTIFICATION_AND_BROADCAST_INTENT:Lcom/parse/PushRouter$HandlePushResult;

    if-ne p2, v0, :cond_1

    .line 487
    :cond_0
    # operator++ for: Lcom/parse/ParseTestUtils;->totalBroadcastReceiverInvocations:I
    invoke-static {}, Lcom/parse/ParseTestUtils;->access$208()I

    .line 489
    const-class v1, Lcom/parse/ParseTestUtils;

    monitor-enter v1

    .line 491
    :try_start_0
    # getter for: Lcom/parse/ParseTestUtils;->globalListener:Lcom/parse/ParseTestUtils$PushRoutedListener;
    invoke-static {}, Lcom/parse/ParseTestUtils;->access$300()Lcom/parse/ParseTestUtils$PushRoutedListener;

    move-result-object v0

    .line 492
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    if-eqz v0, :cond_1

    .line 495
    invoke-interface {v0, p1}, Lcom/parse/ParseTestUtils$PushRoutedListener;->onPushRouted(Lorg/json/JSONObject;)V

    .line 498
    :cond_1
    return-void

    .line 492
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
