.class public LuN;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LuL;


# direct methods
.method protected constructor <init>(LuL;)V
    .locals 0

    iput-object p1, p0, LuN;->a:LuL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    iget-object v0, p0, LuN;->a:LuL;

    invoke-virtual {v0}, LuL;->a()I

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, LuN;->a:LuL;

    invoke-static {v0}, LuL;->a(LuL;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x1

    const/16 v1, 0x32

    if-le v3, v1, :cond_1

    add-int/lit8 v0, v3, -0x32

    add-int/lit8 v0, v0, 0x1

    :cond_1
    :goto_1
    if-le v0, v3, :cond_2

    iget-object v0, p0, LuN;->a:LuL;

    invoke-static {v0}, LuL;->a(LuL;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, LuN;->a:LuL;

    invoke-virtual {v1, v4}, LuL;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    if-eqz v5, :cond_c

    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "link"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "post_body"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "first_session"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v1

    if-eqz v1, :cond_3

    :try_start_3
    iget-object v1, p0, LuN;->a:LuL;

    invoke-static {v1}, LuL;->b(LuL;)LuP;

    move-result-object v1

    iget-object v1, v1, LuP;->k:Ljava/util/concurrent/ExecutorService;

    monitor-enter v1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v8, p0, LuN;->a:LuL;

    invoke-static {v8}, LuL;->b(LuL;)LuP;

    move-result-object v8

    iget-object v8, v8, LuP;->k:Ljava/util/concurrent/ExecutorService;

    const-wide/32 v10, 0xea60

    invoke-virtual {v8, v10, v11}, Ljava/lang/Object;->wait(J)V

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    :try_start_5
    iget-object v1, p0, LuN;->a:LuL;

    invoke-static {v1}, LuL;->b(LuL;)LuP;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, p0, LuN;->a:LuL;

    invoke-static {v1}, LuL;->b(LuL;)LuP;

    move-result-object v1

    invoke-virtual {v1, v6, v2, v7}, LuP;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, LuN;->a:LuL;

    invoke-virtual {v1, v4}, LuL;->a(Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, LuL;->a(J)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    iget-object v0, p0, LuN;->a:LuL;

    invoke-virtual {v0, v4}, LuL;->a(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    iget-object v0, p0, LuN;->a:LuL;

    invoke-static {v0}, LuL;->a(LuL;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v1

    throw v0
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catch_1
    move-exception v0

    :try_start_7
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    iget-object v0, p0, LuN;->a:LuL;

    invoke-static {v0}, LuL;->a(LuL;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v0, v0, -0x1

    :try_start_8
    const-string v1, "&sdk_retry_attempt="

    invoke-virtual {v6, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result v2

    if-lez v2, :cond_5

    const/4 v1, -0x1

    add-int/lit8 v7, v2, 0x13

    add-int/lit8 v2, v7, 0x1

    :goto_3
    :try_start_9
    invoke-virtual {v6, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result-object v8

    :try_start_a
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :catch_2
    move-exception v2

    :goto_4
    add-int/lit8 v1, v1, 0x1

    :try_start_b
    const-string v2, "&sdk_retry_attempt=\\d+"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "&sdk_retry_attempt="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v2, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-result-object v1

    :try_start_c
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "link"

    invoke-virtual {v2, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, LuN;->a:LuL;

    invoke-virtual {v1, v2, v4}, LuL;->a(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :cond_5
    :goto_5
    :try_start_d
    invoke-static {}, LuL;->b()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_6

    const-wide/16 v4, 0x1e

    invoke-static {v4, v5}, LuL;->a(J)V

    :goto_6
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide v6, 0x3fb999999999999aL    # 0.1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    invoke-static {}, LuL;->b()J
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move-result-wide v6

    long-to-double v6, v6

    mul-double/2addr v4, v6

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v6

    double-to-long v4, v4

    :try_start_e
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto/16 :goto_2

    :catch_3
    move-exception v1

    goto/16 :goto_2

    :catch_4
    move-exception v1

    :try_start_f
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    iget-object v1, p0, LuN;->a:LuL;

    invoke-static {v1}, LuL;->a(LuL;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    throw v0

    :cond_6
    :try_start_10
    invoke-static {}, LuL;->b()J

    move-result-wide v4

    const-wide/16 v6, 0x1e

    cmp-long v1, v4, v6

    if-gtz v1, :cond_7

    const-wide/16 v4, 0x5a

    invoke-static {v4, v5}, LuL;->a(J)V

    goto :goto_6

    :cond_7
    invoke-static {}, LuL;->b()J

    move-result-wide v4

    const-wide/16 v6, 0x5a

    cmp-long v1, v4, v6

    if-gtz v1, :cond_8

    const-wide/16 v4, 0x258

    invoke-static {v4, v5}, LuL;->a(J)V

    goto :goto_6

    :cond_8
    invoke-static {}, LuL;->b()J

    move-result-wide v4

    const-wide/16 v6, 0x258

    cmp-long v1, v4, v6

    if-gtz v1, :cond_9

    const-wide/16 v4, 0xe10

    invoke-static {v4, v5}, LuL;->a(J)V

    goto :goto_6

    :cond_9
    invoke-static {}, LuL;->b()J

    move-result-wide v4

    const-wide/16 v6, 0xe10

    cmp-long v1, v4, v6

    if-gtz v1, :cond_a

    const-wide/16 v4, 0x5460

    invoke-static {v4, v5}, LuL;->a(J)V

    goto :goto_6

    :cond_a
    const-wide/32 v4, 0x15180

    invoke-static {v4, v5}, LuL;->a(J)V

    goto :goto_6

    :cond_b
    iget-object v1, p0, LuN;->a:LuL;

    invoke-virtual {v1, v4}, LuL;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_c
    iget-object v1, p0, LuN;->a:LuL;

    invoke-virtual {v1, v4}, LuL;->a(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto/16 :goto_2

    :catch_5
    move-exception v2

    goto/16 :goto_4
.end method
