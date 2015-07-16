.class public Lcom/yik/yak/ui/activity/PeekSearchActivity;
.super Lcom/yik/yak/ui/activity/BaseAppCompatActivity;
.source "SourceFile"

# interfaces
.implements LDf;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Lki;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yik/yak/data/models/Yak;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/yik/yak/ui/adapter/YakRecyclerViewAdapter;

.field private g:Landroid/support/v7/widget/LinearLayoutManager;

.field private h:Landroid/support/v7/widget/RecyclerView;

.field private i:Lcom/yik/yak/data/models/YakkerLocation;

.field private j:Z

.field private k:Z

.field private l:Landroid/widget/AutoCompleteTextView;

.field private m:LBA;

.field private n:F

.field private o:Z

.field private p:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;-><init>()V

    .line 81
    iput-object v1, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->c:Landroid/content/Context;

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->j:Z

    .line 90
    iput-boolean v2, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->k:Z

    .line 91
    iput-object v1, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->l:Landroid/widget/AutoCompleteTextView;

    .line 92
    iput-object v1, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->m:LBA;

    .line 93
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->n:F

    .line 94
    iput-boolean v2, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->o:Z

    .line 508
    return-void
.end method

.method public static synthetic a(Lcom/yik/yak/ui/activity/PeekSearchActivity;F)F
    .locals 0

    .prologue
    .line 76
    iput p1, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->n:F

    return p1
.end method

.method public static synthetic a(Lcom/yik/yak/ui/activity/PeekSearchActivity;Lcom/yik/yak/data/models/YakkerLocation;)Lcom/yik/yak/data/models/YakkerLocation;
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->i:Lcom/yik/yak/data/models/YakkerLocation;

    return-object p1
.end method

.method public static synthetic a(Lcom/yik/yak/ui/activity/PeekSearchActivity;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/yik/yak/ui/activity/PeekSearchActivity;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(Lcom/yik/yak/ui/activity/PeekSearchActivity;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/PeekSearchActivity;->e()V

    return-void
.end method

.method public static synthetic b(Lcom/yik/yak/ui/activity/PeekSearchActivity;Lcom/yik/yak/data/models/YakkerLocation;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/yik/yak/ui/activity/PeekSearchActivity;->c(Lcom/yik/yak/data/models/YakkerLocation;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b(Lcom/yik/yak/ui/activity/PeekSearchActivity;)Lki;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->d:Lki;

    return-object v0
.end method

.method public static synthetic c(Lcom/yik/yak/ui/activity/PeekSearchActivity;)Lcom/yik/yak/data/models/YakkerLocation;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->i:Lcom/yik/yak/data/models/YakkerLocation;

    return-object v0
.end method

.method private c(Lcom/yik/yak/data/models/YakkerLocation;)Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 244
    const/4 v10, 0x0

    .line 245
    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    const-string v0, "Location name could not be found."

    .line 280
    :goto_0
    return-object v0

    .line 247
    :cond_0
    iput-boolean v9, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->j:Z

    .line 248
    const-string v7, ""

    .line 250
    :try_start_0
    new-instance v1, Landroid/location/Geocoder;

    iget-object v0, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->c:Landroid/content/Context;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 252
    :try_start_1
    invoke-virtual {p1}, Lcom/yik/yak/data/models/YakkerLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/yik/yak/data/models/YakkerLocation;->getLongitude()D

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    move-object v2, v0

    .line 260
    :goto_1
    if-eqz v2, :cond_3

    move v1, v8

    :goto_2
    :try_start_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    move v0, v8

    :goto_3
    and-int/2addr v0, v1

    if-eqz v0, :cond_5

    .line 261
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 262
    invoke-virtual {v0}, Landroid/location/Address;->getLocality()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    .line 263
    if-nez v1, :cond_6

    .line 264
    :try_start_3
    invoke-virtual {v0}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v1

    .line 265
    if-nez v1, :cond_6

    .line 266
    invoke-virtual {v0}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    .line 273
    :goto_4
    if-nez v0, :cond_1

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Lat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yik/yak/data/models/YakkerLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Long: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yik/yak/data/models/YakkerLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 276
    :cond_1
    iget-object v1, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->l:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v1, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->l:Landroid/widget/AutoCompleteTextView;

    iget-object v2, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->l:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setSelection(I)V

    .line 278
    iput-boolean v8, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->j:Z

    goto :goto_0

    .line 253
    :catch_0
    move-exception v0

    .line 254
    :try_start_4
    iget-boolean v1, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->o:Z

    if-nez v1, :cond_2

    .line 255
    iget-object v1, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->c:Landroid/content/Context;

    const-string v2, "The Geocoder service is not responding correctly. This is a common problem on some android devices and may be fixed by a simple reboot of the phone."

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 256
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->o:Z

    .line 258
    :cond_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object v2, v10

    goto :goto_1

    :cond_3
    move v1, v9

    .line 260
    goto :goto_2

    :cond_4
    move v0, v9

    goto :goto_3

    :catch_1
    move-exception v0

    :cond_5
    :goto_5
    move-object v0, v7

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v7, v1

    goto :goto_5

    :cond_6
    move-object v0, v1

    goto :goto_4
.end method

.method private c(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 452
    iget-boolean v0, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->j:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x3

    if-ge v0, v3, :cond_2

    .line 453
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 501
    :cond_1
    :goto_0
    return-object v0

    .line 458
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 461
    :try_start_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 462
    const-string v4, "input"

    invoke-virtual {v0, v4, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    const-string v4, "types"

    const-string v5, "(cities)"

    invoke-virtual {v0, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    const-string v4, "map"

    const/4 v5, 0x0

    invoke-static {v4, v0, v5}, LAj;->a(Ljava/lang/String;Ljava/util/TreeMap;Lcom/yik/yak/data/models/YakkerLocation;)Ljava/lang/String;

    move-result-object v0

    .line 466
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 468
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    :try_start_1
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 473
    const/16 v5, 0x400

    new-array v5, v5, [C

    .line 474
    :goto_1
    invoke-virtual {v4, v5}, Ljava/io/InputStreamReader;->read([C)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    .line 475
    const/4 v7, 0x0

    invoke-virtual {v3, v5, v7, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 479
    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_2
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 483
    if-eqz v1, :cond_1

    .line 484
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 483
    :cond_3
    if-eqz v0, :cond_4

    .line 484
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 490
    :cond_4
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 491
    const-string v3, "predictions"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 494
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    move v1, v2

    .line 495
    :goto_3
    :try_start_4
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 496
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "description"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    .line 495
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 481
    :catch_1
    move-exception v0

    :goto_4
    :try_start_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 483
    if-eqz v1, :cond_1

    .line 484
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 483
    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v1, :cond_5

    .line 484
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    throw v0

    :catch_2
    move-exception v0

    move-object v0, v1

    goto/16 :goto_0

    :catch_3
    move-exception v1

    goto/16 :goto_0

    .line 483
    :catchall_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_5

    .line 481
    :catch_4
    move-exception v1

    move-object v1, v0

    goto :goto_4

    .line 479
    :catch_5
    move-exception v0

    goto :goto_2
.end method

.method public static synthetic d(Lcom/yik/yak/ui/activity/PeekSearchActivity;)LBA;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->m:LBA;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 238
    new-instance v0, Lcom/yik/yak/ui/adapter/YakRecyclerViewAdapter;

    iget-object v1, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->e:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/yik/yak/ui/adapter/YakRecyclerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->f:Lcom/yik/yak/ui/adapter/YakRecyclerViewAdapter;

    .line 239
    iget-object v0, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->f:Lcom/yik/yak/ui/adapter/YakRecyclerViewAdapter;

    invoke-virtual {v0, p0}, Lcom/yik/yak/ui/adapter/YakRecyclerViewAdapter;->setOnItemClickListener(LDf;)V

    .line 240
    iget-object v0, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->f:Lcom/yik/yak/ui/adapter/YakRecyclerViewAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 241
    return-void
.end method

.method public static synthetic e(Lcom/yik/yak/ui/activity/PeekSearchActivity;)Landroid/widget/AutoCompleteTextView;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->l:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method private e()V
    .locals 4

    .prologue
    .line 405
    const-string v0, ""

    .line 406
    iget-object v1, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->l:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->l:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 407
    iget-object v0, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->l:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 409
    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->c:Landroid/content/Context;

    const-class v3, Lcom/yik/yak/ui/dialog/YikYakDialog;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 410
    const-string v2, "title"

    const-string v3, "Save Peek Location"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 411
    const-string v2, "message"

    const-string v3, "Save the current location to your peeks."

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 412
    const-string v2, "editText"

    const-string v3, "\\,"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 413
    const-string v0, "okText"

    const-string v2, "Yes"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 414
    const-string v0, "cancelText"

    const-string v2, "No"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 415
    const/16 v0, 0x3e9

    invoke-virtual {p0, v1, v0}, Lcom/yik/yak/ui/activity/PeekSearchActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 416
    return-void
.end method

.method public static synthetic f(Lcom/yik/yak/ui/activity/PeekSearchActivity;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->c:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic g(Lcom/yik/yak/ui/activity/PeekSearchActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic h(Lcom/yik/yak/ui/activity/PeekSearchActivity;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/PeekSearchActivity;->d()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .prologue
    const/16 v1, 0x8

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    .line 385
    const v0, 0x7f0d0084

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/PeekSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 386
    iget-object v0, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 387
    const v0, 0x7f0d0083

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/PeekSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 388
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 389
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 390
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 391
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 392
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 393
    invoke-virtual {v7, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 394
    return-void
.end method

.method public a(LDp;LDd;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LDp",
            "<*>;",
            "LDd;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->c:Landroid/content/Context;

    const-string v1, "This is just a preview. Save this location to view the entire feed."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 104
    return-void
.end method

.method public a(Lcom/yik/yak/data/models/YakkerLocation;)V
    .locals 8

    .prologue
    .line 289
    :try_start_0
    iget-object v0, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->d:Lki;

    invoke-virtual {v0}, Lki;->c()V

    .line 290
    iget-object v0, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->d:Lki;

    invoke-virtual {v0}, Lki;->d()LkH;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LkH;->a(Z)V

    .line 291
    iget-object v0, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->d:Lki;

    new-instance v1, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Lcom/yik/yak/data/models/YakkerLocation;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/yik/yak/data/models/YakkerLocation;->getLongitude()D

    move-result-wide v6

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lki;->a(Lcom/google/android/gms/maps/model/MarkerOptions;)LmK;

    .line 292
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Lcom/yik/yak/data/models/YakkerLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/yik/yak/data/models/YakkerLocation;->getLongitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iget v1, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->n:F

    invoke-static {v0, v1}, Lkh;->a(Lcom/google/android/gms/maps/model/LatLng;F)Lkg;

    move-result-object v0

    .line 293
    iget-object v1, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->d:Lki;

    invoke-virtual {v1, v0}, Lki;->a(Lkg;)V

    .line 294
    invoke-virtual {p0, p1}, Lcom/yik/yak/ui/activity/PeekSearchActivity;->b(Lcom/yik/yak/data/models/YakkerLocation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b(Lcom/yik/yak/data/models/YakkerLocation;)V
    .locals 4

    .prologue
    .line 300
    invoke-static {}, LAD;->a()LAD;

    move-result-object v0

    .line 302
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/PeekSearchActivity;->a()V

    .line 304
    invoke-virtual {v0}, LAD;->g()Lcom/yik/yak/data/models/YakkerLocation;

    move-result-object v0

    .line 306
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 307
    const-string v2, "userID"

    invoke-static {}, LAa;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    const-string v2, "lat"

    invoke-virtual {p1}, Lcom/yik/yak/data/models/YakkerLocation;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    const-string v2, "long"

    invoke-virtual {p1}, Lcom/yik/yak/data/models/YakkerLocation;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    const-string v2, "yaks"

    invoke-static {v2, v1, v0}, LAj;->a(Ljava/lang/String;Ljava/util/TreeMap;Lcom/yik/yak/data/models/YakkerLocation;)Ljava/lang/String;

    move-result-object v0

    .line 312
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->e:Ljava/util/ArrayList;

    .line 314
    new-instance v1, LxF;

    invoke-direct {v1}, LxF;-><init>()V

    invoke-virtual {v1, v0}, LxF;->a(Ljava/lang/String;)LxF;

    move-result-object v0

    invoke-virtual {v0}, LxF;->b()LxD;

    move-result-object v0

    .line 318
    const/4 v1, 0x1

    invoke-static {v1}, LAj;->a(Z)Lxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lxy;->a(LxD;)LwY;

    move-result-object v0

    .line 319
    new-instance v1, LBx;

    invoke-direct {v1, p0}, LBx;-><init>(Lcom/yik/yak/ui/activity/PeekSearchActivity;)V

    invoke-virtual {v0, v1}, LwY;->a(Lxc;)V

    .line 382
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 397
    const v0, 0x7f0d0083

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/PeekSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 398
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 399
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 400
    iget-object v3, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 401
    const v0, 0x7f0d0084

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/PeekSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 402
    return-void

    :cond_0
    move v0, v2

    .line 400
    goto :goto_0

    :cond_1
    move v2, v1

    .line 401
    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onActivityResult"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 421
    packed-switch p1, :pswitch_data_0

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 423
    :pswitch_0
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 425
    :pswitch_1
    if-nez p3, :cond_1

    .line 426
    iget-object v0, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->c:Landroid/content/Context;

    const-string v1, "Save failed"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 429
    :cond_1
    const-string v0, "result"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 430
    invoke-static {v0}, LHi;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 431
    iget-object v1, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->i:Lcom/yik/yak/data/models/YakkerLocation;

    invoke-virtual {v1, v0}, Lcom/yik/yak/data/models/YakkerLocation;->setProvider(Ljava/lang/String;)V

    .line 432
    invoke-static {}, LAO;->a()LAO;

    move-result-object v0

    iget-object v1, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->i:Lcom/yik/yak/data/models/YakkerLocation;

    invoke-virtual {v0, v1}, LAO;->a(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    .line 433
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 434
    const-string v2, "peekID"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 435
    invoke-static {}, LAO;->a()LAO;

    move-result-object v0

    invoke-virtual {v0}, LAO;->f()V

    .line 436
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/yik/yak/ui/activity/PeekSearchActivity;->setResult(ILandroid/content/Intent;)V

    .line 437
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/PeekSearchActivity;->finish()V

    goto :goto_0

    .line 421
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch

    .line 423
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 108
    invoke-super {p0, p1}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    const v0, 0x7f03001f

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/PeekSearchActivity;->setContentView(I)V

    .line 110
    const-string v0, "Peek Anywhere"

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/PeekSearchActivity;->a(Ljava/lang/String;)V

    .line 111
    const v0, 0x7f0d00a3

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/PeekSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->p:Landroid/widget/TextView;

    .line 112
    iget-object v0, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->p:Landroid/widget/TextView;

    const v1, 0x7f080169

    invoke-virtual {p0, v1}, Lcom/yik/yak/ui/activity/PeekSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->p:Landroid/widget/TextView;

    new-instance v1, LBs;

    invoke-direct {v1, p0}, LBs;-><init>(Lcom/yik/yak/ui/activity/PeekSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iput-object p0, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->c:Landroid/content/Context;

    .line 122
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/PeekSearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0d007e

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/SupportMapFragment;

    .line 123
    invoke-virtual {v0}, Lcom/google/android/gms/maps/SupportMapFragment;->b()Lki;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->d:Lki;

    .line 125
    invoke-static {}, LAD;->a()LAD;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, LAD;->g()Lcom/yik/yak/data/models/YakkerLocation;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->i:Lcom/yik/yak/data/models/YakkerLocation;

    .line 127
    iget-object v0, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->d:Lki;

    new-instance v1, LBt;

    invoke-direct {v1, p0}, LBt;-><init>(Lcom/yik/yak/ui/activity/PeekSearchActivity;)V

    invoke-virtual {v0, v1}, Lki;->a(Lkk;)V

    .line 139
    invoke-static {}, LAJ;->a()LAJ;

    move-result-object v0

    const-string v1, "peekSearch"

    const-string v2, "enableAutocomplete"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, LAJ;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->k:Z

    .line 141
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/PeekSearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 143
    new-instance v0, LBA;

    iget-object v2, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->c:Landroid/content/Context;

    const v3, 0x7f03006a

    iget-boolean v4, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->k:Z

    invoke-direct {v0, p0, v2, v3, v4}, LBA;-><init>(Lcom/yik/yak/ui/activity/PeekSearchActivity;Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->m:LBA;

    .line 144
    const v0, 0x7f0d0080

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/PeekSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->l:Landroid/widget/AutoCompleteTextView;

    .line 145
    iget-object v0, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->l:Landroid/widget/AutoCompleteTextView;

    iget-object v2, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->m:LBA;

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 146
    iget-object v0, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->l:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v5, v5, v1, v5}, Landroid/widget/AutoCompleteTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 148
    iget-object v0, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->l:Landroid/widget/AutoCompleteTextView;

    new-instance v2, LBu;

    invoke-direct {v2, p0}, LBu;-><init>(Lcom/yik/yak/ui/activity/PeekSearchActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 170
    iget-object v0, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->l:Landroid/widget/AutoCompleteTextView;

    new-instance v2, LBv;

    invoke-direct {v2, p0}, LBv;-><init>(Lcom/yik/yak/ui/activity/PeekSearchActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 202
    iget-object v0, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->l:Landroid/widget/AutoCompleteTextView;

    new-instance v2, LBw;

    invoke-direct {v2, p0, v1}, LBw;-><init>(Lcom/yik/yak/ui/activity/PeekSearchActivity;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->e:Ljava/util/ArrayList;

    .line 222
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->g:Landroid/support/v7/widget/LinearLayoutManager;

    .line 223
    const v0, 0x7f0d0085

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/PeekSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->h:Landroid/support/v7/widget/RecyclerView;

    .line 224
    iget-object v0, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->g:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 225
    iget-object v0, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->h:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/yik/yak/ui/view/DividerItemDecoration;

    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/PeekSearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200e1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/yik/yak/ui/view/DividerItemDecoration;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 227
    iget-object v0, p0, Lcom/yik/yak/ui/activity/PeekSearchActivity;->i:Lcom/yik/yak/data/models/YakkerLocation;

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/PeekSearchActivity;->a(Lcom/yik/yak/data/models/YakkerLocation;)V

    .line 229
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 233
    invoke-super {p0}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onStart()V

    .line 234
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    const-string v1, "PeekSearch"

    invoke-virtual {v0, v1}, LHa;->a(Ljava/lang/String;)V

    .line 235
    return-void
.end method
