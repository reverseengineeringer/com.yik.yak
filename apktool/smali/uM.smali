.class LuM;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:LuE;

.field private b:Lum;

.field private c:LuN;

.field private final d:Landroid/content/Context;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/util/concurrent/locks/Lock;

.field private final g:Lud;

.field private final h:Luu;

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "LuJ;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private final n:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LuE;Landroid/content/Context;Ljava/lang/String;Landroid/os/Looper;Lvf;)V
    .locals 3

    .prologue
    .line 272
    iput-object p1, p0, LuM;->a:LuE;

    .line 273
    invoke-direct {p0, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 274
    iput-object p2, p0, LuM;->d:Landroid/content/Context;

    .line 275
    iput-object p3, p0, LuM;->e:Ljava/lang/String;

    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, LuM;->c:LuN;

    .line 278
    invoke-static {p1}, LuE;->c(LuE;)LsG;

    move-result-object v0

    invoke-virtual {v0}, LsG;->q()Ljava/lang/String;

    move-result-object v0

    .line 279
    if-nez v0, :cond_0

    .line 280
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 283
    :cond_0
    new-instance v1, Lte;

    invoke-direct {v1, v0, p2}, Lte;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 285
    new-instance v0, Luu;

    invoke-direct {v0, p2}, Luu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LuM;->h:Luu;

    .line 286
    new-instance v0, Lud;

    iget-object v2, p0, LuM;->h:Luu;

    invoke-direct {v0, v1, v2, p5}, Lud;-><init>(Ltb;Luu;Lvf;)V

    iput-object v0, p0, LuM;->g:Lud;

    .line 287
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LuM;->i:Ljava/util/Map;

    .line 288
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LuM;->j:Ljava/util/List;

    .line 289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LuM;->k:Ljava/util/List;

    .line 290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LuM;->l:Ljava/util/List;

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LuM;->m:Ljava/util/List;

    .line 292
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, LuM;->n:Ljava/util/Set;

    .line 293
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, LuM;->f:Ljava/util/concurrent/locks/Lock;

    .line 294
    iget-object v0, p0, LuM;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 295
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 487
    iget-object v0, p0, LuM;->b:Lum;

    if-nez v0, :cond_0

    .line 513
    :goto_0
    return-void

    .line 491
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 493
    :try_start_0
    const-string v1, "error_message"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4

    .line 495
    :goto_1
    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, LuM;->b:Lum;

    invoke-virtual {v2}, Lum;->b()Ljava/io/BufferedOutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 500
    :try_start_1
    const-string v2, "{\"type\": \"error\", "

    invoke-virtual {v1, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 501
    const-string v2, "\"payload\": "

    invoke-virtual {v1, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 502
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 503
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 508
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 510
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 505
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 510
    :catch_2
    move-exception v0

    goto :goto_0

    .line 507
    :catchall_0
    move-exception v0

    .line 508
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 510
    :goto_2
    throw v0

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method private a(Lorg/json/JSONArray;)V
    .locals 3

    .prologue
    .line 766
    invoke-direct {p0}, LuM;->h()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 767
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 768
    const-string v1, "mixpanel.viewcrawler.changes"

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 769
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 771
    invoke-direct {p0}, LuM;->c()V

    .line 772
    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    .line 588
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 590
    :try_start_0
    const-string v2, "payload"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 591
    const-string v3, "config"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 592
    iget-object v3, p0, LuM;->g:Lud;

    invoke-virtual {v3, v2}, Lud;->b(Lorg/json/JSONObject;)LuN;

    move-result-object v2

    iput-object v2, p0, LuM;->c:LuN;

    .line 593
    sget-boolean v2, LsG;->a:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Luf; {:try_start_0 .. :try_end_0} :catch_1

    .line 607
    :cond_0
    iget-object v2, p0, LuM;->c:LuN;

    if-nez v2, :cond_1

    .line 608
    const-string v0, "No snapshot configuration (or a malformed snapshot configuration) was sent."

    invoke-direct {p0, v0}, LuM;->a(Ljava/lang/String;)V

    .line 642
    :goto_0
    return-void

    .line 598
    :catch_0
    move-exception v0

    const-string v0, "Payload with snapshot config required with snapshot request"

    invoke-direct {p0, v0}, LuM;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 601
    :catch_1
    move-exception v0

    .line 602
    invoke-virtual {v0}, Luf;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, LuM;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 614
    :cond_1
    iget-object v2, p0, LuM;->b:Lum;

    invoke-virtual {v2}, Lum;->b()Ljava/io/BufferedOutputStream;

    move-result-object v2

    .line 615
    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 618
    :try_start_1
    const-string v4, "{"

    invoke-virtual {v3, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 619
    const-string v4, "\"type\": \"snapshot_response\","

    invoke-virtual {v3, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 620
    const-string v4, "\"payload\": {"

    invoke-virtual {v3, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 622
    const-string v4, "\"activities\":"

    invoke-virtual {v3, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 623
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flush()V

    .line 624
    iget-object v4, p0, LuM;->c:LuN;

    iget-object v5, p0, LuM;->a:LuE;

    invoke-static {v5}, LuE;->b(LuE;)Luj;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, LuN;->a(LuC;Ljava/io/OutputStream;)V

    .line 627
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    .line 628
    const-string v2, ",\"snapshot_time_millis\": "

    invoke-virtual {v3, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 629
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 631
    const-string v0, "}"

    invoke-virtual {v3, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 632
    const-string v0, "}"

    invoke-virtual {v3, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 637
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 639
    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    .line 634
    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_0

    .line 639
    :catch_4
    move-exception v0

    goto :goto_0

    .line 636
    :catchall_0
    move-exception v0

    .line 637
    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 639
    :goto_1
    throw v0

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method private a(Lva;)V
    .locals 3

    .prologue
    .line 679
    iget-object v0, p0, LuM;->b:Lum;

    if-nez v0, :cond_0

    .line 702
    :goto_0
    return-void

    .line 683
    :cond_0
    iget-object v0, p0, LuM;->b:Lum;

    invoke-virtual {v0}, Lum;->b()Ljava/io/BufferedOutputStream;

    move-result-object v0

    .line 684
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 685
    new-instance v2, Landroid/util/JsonWriter;

    invoke-direct {v2, v1}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 688
    :try_start_0
    invoke-virtual {v2}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 689
    const-string v0, "type"

    invoke-virtual {v2, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    const-string v1, "layout_error"

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 690
    const-string v0, "exception_type"

    invoke-virtual {v2, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {p1}, Lva;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 691
    const-string v0, "cid"

    invoke-virtual {v2, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {p1}, Lva;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 692
    invoke-virtual {v2}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 697
    :try_start_1
    invoke-virtual {v2}, Landroid/util/JsonWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 699
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 694
    :try_start_2
    invoke-virtual {v2}, Landroid/util/JsonWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 699
    :catch_2
    move-exception v0

    goto :goto_0

    .line 696
    :catchall_0
    move-exception v0

    .line 697
    :try_start_3
    invoke-virtual {v2}, Landroid/util/JsonWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 699
    :goto_1
    throw v0

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method private b()V
    .locals 7

    .prologue
    .line 359
    invoke-direct {p0}, LuM;->h()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 360
    const-string v0, "mixpanel.viewcrawler.changes"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 362
    if-eqz v0, :cond_0

    .line 364
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 365
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 366
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 367
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 368
    const-string v5, "id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 369
    const-string v6, "experiment"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 370
    new-instance v6, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v6, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 371
    iget-object v4, p0, LuM;->n:Ljava/util/Set;

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 374
    :catch_0
    move-exception v0

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 376
    const-string v1, "mixpanel.viewcrawler.changes"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 377
    const-string v1, "mixpanel.viewcrawler.bindings"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 378
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 382
    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 648
    iget-object v0, p0, LuM;->b:Lum;

    if-nez v0, :cond_0

    .line 676
    :goto_0
    return-void

    .line 652
    :cond_0
    iget-object v0, p0, LuM;->b:Lum;

    invoke-virtual {v0}, Lum;->b()Ljava/io/BufferedOutputStream;

    move-result-object v0

    .line 653
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 654
    new-instance v2, Landroid/util/JsonWriter;

    invoke-direct {v2, v1}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 657
    :try_start_0
    invoke-virtual {v2}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 658
    const-string v0, "type"

    invoke-virtual {v2, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    const-string v1, "track_message"

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 659
    const-string v0, "payload"

    invoke-virtual {v2, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 661
    invoke-virtual {v2}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 662
    const-string v0, "event_name"

    invoke-virtual {v2, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 663
    invoke-virtual {v2}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 665
    invoke-virtual {v2}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 666
    invoke-virtual {v2}, Landroid/util/JsonWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 671
    :try_start_1
    invoke-virtual {v2}, Landroid/util/JsonWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 673
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 668
    :try_start_2
    invoke-virtual {v2}, Landroid/util/JsonWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 673
    :catch_2
    move-exception v0

    goto :goto_0

    .line 670
    :catchall_0
    move-exception v0

    .line 671
    :try_start_3
    invoke-virtual {v2}, Landroid/util/JsonWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 673
    :goto_1
    throw v0

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method private b(Lorg/json/JSONArray;)V
    .locals 3

    .prologue
    .line 778
    invoke-direct {p0}, LuM;->h()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 779
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 780
    const-string v1, "mixpanel.viewcrawler.bindings"

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 781
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 782
    invoke-direct {p0}, LuM;->c()V

    .line 783
    return-void
.end method

.method private b(Lorg/json/JSONObject;)V
    .locals 7

    .prologue
    .line 709
    :try_start_0
    const-string v0, "payload"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 710
    const-string v1, "actions"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 712
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 713
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 714
    const-string v3, "target_activity"

    invoke-static {v2, v3}, LtT;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 715
    const-string v4, "name"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 716
    iget-object v5, p0, LuM;->i:Ljava/util/Map;

    new-instance v6, Landroid/util/Pair;

    invoke-direct {v6, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 719
    :cond_0
    invoke-direct {p0}, LuM;->g()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 721
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private c()V
    .locals 13

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 388
    invoke-direct {p0}, LuM;->h()Landroid/content/SharedPreferences;

    move-result-object v4

    .line 389
    const-string v0, "mixpanel.viewcrawler.changes"

    invoke-interface {v4, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 390
    const-string v2, "mixpanel.viewcrawler.bindings"

    invoke-interface {v4, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 392
    if-eqz v0, :cond_2

    .line 393
    :try_start_0
    iget-object v2, p0, LuM;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 395
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 396
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    move v3, v1

    .line 397
    :goto_0
    if-ge v3, v7, :cond_2

    .line 398
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 399
    const-string v0, "id"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 400
    const-string v8, "experiment_id"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 401
    new-instance v9, Landroid/util/Pair;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v9, v8, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 403
    const-string v0, "actions"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    move v0, v1

    .line 404
    :goto_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v0, v10, :cond_0

    .line 405
    invoke-virtual {v8, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 406
    const-string v11, "target_activity"

    invoke-static {v10, v11}, LtT;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 407
    new-instance v12, LuJ;

    invoke-direct {v12, v11, v10, v9}, LuJ;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Landroid/util/Pair;)V

    .line 408
    iget-object v10, p0, LuM;->l:Ljava/util/List;

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 411
    :cond_0
    const-string v0, "tweaks"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 412
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    move v2, v1

    .line 413
    :goto_2
    if-ge v2, v9, :cond_1

    .line 414
    invoke-virtual {v8, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 415
    iget-object v10, p0, LuM;->g:Lud;

    invoke-virtual {v10, v0}, Lud;->c(Lorg/json/JSONObject;)Landroid/util/Pair;

    move-result-object v10

    .line 416
    iget-object v0, p0, LuM;->a:LuE;

    invoke-static {v0}, LuE;->d(LuE;)Ltq;

    move-result-object v11

    iget-object v0, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v10, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v11, v0, v10}, Ltq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 413
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 397
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 421
    :cond_2
    if-eqz v5, :cond_3

    .line 422
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 424
    iget-object v0, p0, LuM;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move v0, v1

    .line 425
    :goto_3
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 426
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 427
    const-string v3, "target_activity"

    invoke-static {v1, v3}, LtT;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 428
    iget-object v5, p0, LuM;->m:Ljava/util/List;

    new-instance v6, Landroid/util/Pair;

    invoke-direct {v6, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Luf; {:try_start_0 .. :try_end_0} :catch_1

    .line 425
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 432
    :catch_0
    move-exception v0

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 434
    const-string v1, "mixpanel.viewcrawler.changes"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 435
    const-string v1, "mixpanel.viewcrawler.bindings"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 436
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 445
    :cond_3
    :goto_4
    invoke-direct {p0}, LuM;->g()V

    .line 446
    return-void

    .line 438
    :catch_1
    move-exception v0

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 440
    const-string v1, "mixpanel.viewcrawler.changes"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 441
    const-string v1, "mixpanel.viewcrawler.bindings"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 442
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_4
.end method

.method private c(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 730
    :try_start_0
    const-string v0, "payload"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 731
    const-string v1, "actions"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 734
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 735
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 736
    iget-object v3, p0, LuM;->i:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 734
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 739
    :cond_0
    invoke-direct {p0}, LuM;->g()V

    .line 743
    return-void
.end method

.method private d()V
    .locals 7

    .prologue
    .line 452
    sget-boolean v0, LsG;->a:Z

    .line 453
    iget-object v0, p0, LuM;->b:Lum;

    if-eqz v0, :cond_0

    iget-object v0, p0, LuM;->b:Lum;

    invoke-virtual {v0}, Lum;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    sget-boolean v0, LsG;->a:Z

    .line 479
    :goto_0
    return-void

    .line 463
    :cond_0
    iget-object v0, p0, LuM;->a:LuE;

    invoke-static {v0}, LuE;->e(LuE;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-nez v0, :cond_1

    .line 464
    sget-boolean v0, LsG;->a:Z

    goto :goto_0

    .line 470
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LuM;->d:Landroid/content/Context;

    invoke-static {v1}, LsG;->a(Landroid/content/Context;)LsG;

    move-result-object v1

    invoke-virtual {v1}, LsG;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LuM;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 472
    :try_start_0
    iget-object v1, p0, LuM;->a:LuE;

    invoke-static {v1}, LuE;->e(LuE;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v1

    .line 473
    new-instance v2, Lum;

    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    new-instance v4, LuG;

    iget-object v5, p0, LuM;->a:LuE;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, LuG;-><init>(LuE;LuF;)V

    invoke-direct {v2, v3, v4, v1}, Lum;-><init>(Ljava/net/URI;Luo;Ljava/net/Socket;)V

    iput-object v2, p0, LuM;->b:Lum;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Luq; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 475
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error parsing URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for editor websocket"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 477
    :catch_1
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error connecting to URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method private d(Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    .line 747
    :try_start_0
    const-string v0, "payload"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 748
    const-string v1, "tweaks"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 749
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 750
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 751
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 752
    iget-object v4, p0, LuM;->g:Lud;

    invoke-virtual {v4, v0}, Lud;->c(Lorg/json/JSONObject;)Landroid/util/Pair;

    move-result-object v4

    .line 753
    iget-object v0, p0, LuM;->a:LuE;

    invoke-static {v0}, LuE;->d(LuE;)Ltq;

    move-result-object v5

    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v5, v0, v4}, Ltq;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Luf; {:try_start_0 .. :try_end_0} :catch_0

    .line 750
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 758
    :cond_0
    :goto_1
    return-void

    .line 756
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private e()V
    .locals 6

    .prologue
    .line 519
    iget-object v0, p0, LuM;->b:Lum;

    if-nez v0, :cond_0

    .line 582
    :goto_0
    return-void

    .line 523
    :cond_0
    iget-object v0, p0, LuM;->b:Lum;

    invoke-virtual {v0}, Lum;->b()Ljava/io/BufferedOutputStream;

    move-result-object v0

    .line 524
    new-instance v2, Landroid/util/JsonWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v1}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 527
    :try_start_0
    invoke-virtual {v2}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 528
    const-string v0, "type"

    invoke-virtual {v2, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    const-string v1, "device_info_response"

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 529
    const-string v0, "payload"

    invoke-virtual {v2, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 530
    const-string v0, "device_type"

    invoke-virtual {v2, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    const-string v1, "Android"

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 531
    const-string v0, "device_name"

    invoke-virtual {v2, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 532
    const-string v0, "scaled_density"

    invoke-virtual {v2, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p0, LuM;->a:LuE;

    invoke-static {v1}, LuE;->f(LuE;)F

    move-result v1

    float-to-double v4, v1

    invoke-virtual {v0, v4, v5}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    .line 533
    iget-object v0, p0, LuM;->a:LuE;

    invoke-static {v0}, LuE;->g(LuE;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 534
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 574
    :try_start_1
    invoke-virtual {v2}, Landroid/util/JsonWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 579
    :catch_1
    move-exception v0

    goto/16 :goto_0

    .line 537
    :cond_1
    :try_start_2
    iget-object v0, p0, LuM;->a:LuE;

    invoke-static {v0}, LuE;->d(LuE;)Ltq;

    move-result-object v0

    invoke-virtual {v0}, Ltq;->a()Ljava/util/Map;

    move-result-object v0

    .line 538
    const-string v1, "tweaks"

    invoke-virtual {v2, v1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 539
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 540
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lts;

    .line 541
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 542
    invoke-virtual {v2}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 543
    const-string v4, "name"

    invoke-virtual {v2, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 544
    const-string v0, "minimum"

    invoke-virtual {v2, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v4, v0}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    .line 545
    const-string v0, "maximum"

    invoke-virtual {v2, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v4

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v4, v0}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    .line 546
    iget v0, v1, Lts;->a:I

    packed-switch v0, :pswitch_data_0

    .line 566
    const-string v0, "MixpanelAPI.ViewCrawler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrecognized Tweak Type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v1, v1, Lts;->a:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " encountered."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :goto_3
    invoke-virtual {v2}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 576
    :catchall_0
    move-exception v0

    .line 577
    :try_start_3
    invoke-virtual {v2}, Landroid/util/JsonWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 579
    :goto_4
    throw v0

    .line 548
    :pswitch_0
    :try_start_4
    const-string v0, "type"

    invoke-virtual {v2, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    const-string v4, "boolean"

    invoke-virtual {v0, v4}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 549
    const-string v0, "value"

    invoke-virtual {v2, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {v1}, Lts;->c()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    goto :goto_3

    .line 552
    :pswitch_1
    const-string v0, "type"

    invoke-virtual {v2, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    const-string v4, "number"

    invoke-virtual {v0, v4}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 553
    const-string v0, "encoding"

    invoke-virtual {v2, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    const-string v4, "d"

    invoke-virtual {v0, v4}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 554
    const-string v0, "value"

    invoke-virtual {v2, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {v1}, Lts;->b()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    goto :goto_3

    .line 557
    :pswitch_2
    const-string v0, "type"

    invoke-virtual {v2, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    const-string v4, "number"

    invoke-virtual {v0, v4}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 558
    const-string v0, "encoding"

    invoke-virtual {v2, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    const-string v4, "l"

    invoke-virtual {v0, v4}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 559
    const-string v0, "value"

    invoke-virtual {v2, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {v1}, Lts;->b()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    goto :goto_3

    .line 562
    :pswitch_3
    const-string v0, "type"

    invoke-virtual {v2, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    const-string v4, "string"

    invoke-virtual {v0, v4}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 563
    const-string v0, "value"

    invoke-virtual {v2, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {v1}, Lts;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto/16 :goto_3

    .line 570
    :cond_2
    invoke-virtual {v2}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    .line 571
    invoke-virtual {v2}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 572
    invoke-virtual {v2}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 577
    :try_start_5
    invoke-virtual {v2}, Landroid/util/JsonWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 579
    :catch_2
    move-exception v0

    goto/16 :goto_0

    :catch_3
    move-exception v1

    goto/16 :goto_4

    .line 546
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private e(Lorg/json/JSONObject;)V
    .locals 7

    .prologue
    .line 791
    :try_start_0
    const-string v0, "payload"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 792
    const-string v1, "events"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 798
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 800
    iget-object v0, p0, LuM;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 801
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 803
    :try_start_1
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 804
    const-string v4, "target_activity"

    invoke-static {v3, v4}, LtT;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 805
    iget-object v5, p0, LuM;->k:Ljava/util/List;

    new-instance v6, Landroid/util/Pair;

    invoke-direct {v6, v4, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 801
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 807
    :catch_0
    move-exception v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad event binding received from editor in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1

    .line 811
    :cond_0
    invoke-direct {p0}, LuM;->g()V

    .line 812
    :goto_2
    return-void

    .line 794
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private f()V
    .locals 3

    .prologue
    .line 818
    iget-object v0, p0, LuM;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 819
    iget-object v0, p0, LuM;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 822
    const/4 v0, 0x0

    iput-object v0, p0, LuM;->c:LuN;

    .line 824
    sget-boolean v0, LsG;->a:Z

    .line 825
    invoke-direct {p0}, LuM;->g()V

    .line 829
    iget-object v0, p0, LuM;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 830
    iget-object v2, p0, LuM;->h:Luu;

    invoke-virtual {v2, v0}, Luu;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 832
    :cond_0
    return-void
.end method

.method private g()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 844
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 845
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 848
    iget-object v0, p0, LuM;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v1, v2

    .line 849
    :goto_0
    if-ge v1, v3, :cond_1

    .line 850
    iget-object v0, p0, LuM;->l:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LuJ;

    .line 852
    :try_start_0
    iget-object v6, p0, LuM;->g:Lud;

    iget-object v7, v0, LuJ;->b:Lorg/json/JSONObject;

    invoke-virtual {v6, v7}, Lud;->a(Lorg/json/JSONObject;)Luh;

    move-result-object v6

    .line 853
    new-instance v7, Landroid/util/Pair;

    iget-object v8, v0, LuJ;->a:Ljava/lang/String;

    iget-object v6, v6, Luh;->a:LuS;

    invoke-direct {v7, v8, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 854
    iget-object v6, p0, LuM;->n:Ljava/util/Set;

    iget-object v7, v0, LuJ;->c:Landroid/util/Pair;

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 855
    iget-object v0, v0, LuJ;->c:Landroid/util/Pair;

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lug; {:try_start_0 .. :try_end_0} :catch_9
    .catch Lui; {:try_start_0 .. :try_end_0} :catch_0
    .catch Luf; {:try_start_0 .. :try_end_0} :catch_8

    .line 862
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 859
    :catch_0
    move-exception v0

    .line 860
    invoke-virtual {v0}, Lui;->getMessage()Ljava/lang/String;

    goto :goto_1

    .line 868
    :cond_1
    iget-object v0, p0, LuM;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/util/Pair;

    .line 870
    :try_start_1
    iget-object v6, p0, LuM;->g:Lud;

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v6, v0}, Lud;->a(Lorg/json/JSONObject;)Luh;

    move-result-object v0

    .line 871
    new-instance v6, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v7, v0, Luh;->a:LuS;

    invoke-direct {v6, v1, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 872
    iget-object v1, p0, LuM;->j:Ljava/util/List;

    iget-object v0, v0, Luh;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Lug; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lui; {:try_start_1 .. :try_end_1} :catch_2
    .catch Luf; {:try_start_1 .. :try_end_1} :catch_7

    goto :goto_2

    .line 874
    :catch_1
    move-exception v0

    goto :goto_2

    .line 875
    :catch_2
    move-exception v0

    .line 876
    invoke-virtual {v0}, Lui;->getMessage()Ljava/lang/String;

    goto :goto_2

    .line 884
    :cond_2
    iget-object v0, p0, LuM;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    move v3, v2

    .line 885
    :goto_3
    if-ge v3, v6, :cond_3

    .line 886
    iget-object v0, p0, LuM;->m:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 888
    :try_start_2
    iget-object v7, p0, LuM;->g:Lud;

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONObject;

    iget-object v8, p0, LuM;->a:LuE;

    invoke-static {v8}, LuE;->h(LuE;)LtY;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Lud;->a(Lorg/json/JSONObject;Lve;)LuS;

    move-result-object v1

    .line 889
    new-instance v7, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-direct {v7, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lui; {:try_start_2 .. :try_end_2} :catch_3
    .catch Luf; {:try_start_2 .. :try_end_2} :catch_6

    .line 893
    :goto_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    .line 890
    :catch_3
    move-exception v0

    .line 891
    invoke-virtual {v0}, Lui;->getMessage()Ljava/lang/String;

    goto :goto_4

    .line 899
    :cond_3
    iget-object v0, p0, LuM;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    move v3, v2

    .line 900
    :goto_5
    if-ge v3, v6, :cond_4

    .line 901
    iget-object v0, p0, LuM;->k:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 903
    :try_start_3
    iget-object v7, p0, LuM;->g:Lud;

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONObject;

    iget-object v8, p0, LuM;->a:LuE;

    invoke-static {v8}, LuE;->h(LuE;)LtY;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Lud;->a(Lorg/json/JSONObject;Lve;)LuS;

    move-result-object v1

    .line 904
    new-instance v7, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-direct {v7, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lui; {:try_start_3 .. :try_end_3} :catch_4
    .catch Luf; {:try_start_3 .. :try_end_3} :catch_5

    .line 908
    :goto_6
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_5

    .line 905
    :catch_4
    move-exception v0

    .line 906
    invoke-virtual {v0}, Lui;->getMessage()Ljava/lang/String;

    goto :goto_6

    .line 913
    :cond_4
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 914
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    .line 915
    :goto_7
    if-ge v2, v6, :cond_6

    .line 916
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 918
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 919
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 924
    :goto_8
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 915
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7

    .line 921
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 922
    iget-object v7, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v3, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 927
    :cond_6
    iget-object v0, p0, LuM;->a:LuE;

    invoke-static {v0}, LuE;->b(LuE;)Luj;

    move-result-object v0

    invoke-virtual {v0, v3}, Luj;->a(Ljava/util/Map;)V

    .line 928
    iget-object v0, p0, LuM;->n:Ljava/util/Set;

    invoke-interface {v0, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 929
    iget-object v0, p0, LuM;->a:LuE;

    invoke-static {v0}, LuE;->i(LuE;)LuK;

    move-result-object v0

    invoke-virtual {v0, v5}, LuK;->a(Ljava/util/Set;)V

    .line 930
    return-void

    :catch_5
    move-exception v0

    goto :goto_6

    :catch_6
    move-exception v0

    goto/16 :goto_4

    :catch_7
    move-exception v0

    goto/16 :goto_2

    :catch_8
    move-exception v0

    goto/16 :goto_1

    .line 858
    :catch_9
    move-exception v0

    goto/16 :goto_1
.end method

.method private h()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 933
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mixpanel.viewcrawler.changes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LuM;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 934
    iget-object v1, p0, LuM;->d:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, LuM;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 299
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, LuM;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 306
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    packed-switch v0, :pswitch_data_0

    .line 350
    :goto_0
    iget-object v0, p0, LuM;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 352
    return-void

    .line 309
    :pswitch_0
    :try_start_1
    invoke-direct {p0}, LuM;->b()V

    .line 310
    invoke-direct {p0}, LuM;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 350
    :catchall_0
    move-exception v0

    iget-object v1, p0, LuM;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 313
    :pswitch_1
    :try_start_2
    invoke-direct {p0}, LuM;->d()V

    goto :goto_0

    .line 316
    :pswitch_2
    invoke-direct {p0}, LuM;->e()V

    goto :goto_0

    .line 319
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-direct {p0, v0}, LuM;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 322
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, LuM;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 325
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lva;

    invoke-direct {p0, v0}, LuM;->a(Lva;)V

    goto :goto_0

    .line 328
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONArray;

    invoke-direct {p0, v0}, LuM;->a(Lorg/json/JSONArray;)V

    goto :goto_0

    .line 331
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-direct {p0, v0}, LuM;->b(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 334
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONArray;

    invoke-direct {p0, v0}, LuM;->b(Lorg/json/JSONArray;)V

    goto :goto_0

    .line 337
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-direct {p0, v0}, LuM;->e(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 340
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-direct {p0, v0}, LuM;->c(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 343
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-direct {p0, v0}, LuM;->d(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 346
    :pswitch_c
    invoke-direct {p0}, LuM;->f()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 307
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_8
        :pswitch_9
        :pswitch_4
        :pswitch_c
        :pswitch_6
        :pswitch_a
        :pswitch_b
        :pswitch_5
    .end packed-switch
.end method
