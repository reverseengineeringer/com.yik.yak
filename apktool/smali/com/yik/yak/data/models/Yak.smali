.class public Lcom/yik/yak/data/models/Yak;
.super Lcom/yik/yak/data/models/YikYakObject;
.source "SourceFile"


# instance fields
.field public BackgroundId:Ljava/lang/String;

.field public CanReply:Z

.field public CanReport:Z

.field public CanVote:Z

.field public Comment:Ljava/lang/String;

.field public CommentID:Ljava/lang/String;

.field public Comments:I

.field public Content:Ljava/lang/String;

.field public DeliveryID:I

.field public HasError:Z

.field public HidePin:I

.field public ID:Ljava/lang/String;

.field public ImageHeight:D

.field public ImageWidth:D

.field public IsBasecamp:Z

.field public IsComment:Z

.field public IsDeleted:Z

.field public IsOriginalPoster:Z

.field public Latitude:D

.field public Liked:I

.field public LinkProvider:Ljava/lang/String;

.field public LinkSummary:Ljava/lang/String;

.field public LinkThumbNailUrl:Ljava/lang/String;

.field public LinkTitle:Ljava/lang/String;

.field public LinkUrl:Ljava/lang/String;

.field public Longitude:D

.field public NavigationUrl:Ljava/lang/String;

.field public NumberOfLikes:I

.field public OverlayId:Ljava/lang/String;

.field public PosterID:Ljava/lang/String;

.field public ReadOnly:Z

.field public ShowHandle:Z

.field public TextStyle:Ljava/lang/String;

.field public TimePosted:Ljava/lang/String;

.field public Type:I

.field public ViewResourceID:I

.field public YakkerHandle:Ljava/lang/String;

.field public YakkerID:Ljava/lang/String;

.field public mContext:Landroid/content/Context;

.field public mLoadingYak:Z

.field public parentYak:Lcom/yik/yak/data/models/Yak;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 92
    invoke-direct {p0}, Lcom/yik/yak/data/models/YikYakObject;-><init>()V

    .line 40
    iput-boolean v2, p0, Lcom/yik/yak/data/models/Yak;->mLoadingYak:Z

    .line 42
    const-string v0, "0"

    iput-object v0, p0, Lcom/yik/yak/data/models/Yak;->ID:Ljava/lang/String;

    .line 43
    const-string v0, "0"

    iput-object v0, p0, Lcom/yik/yak/data/models/Yak;->CommentID:Ljava/lang/String;

    .line 44
    iput v2, p0, Lcom/yik/yak/data/models/Yak;->NumberOfLikes:I

    .line 45
    iput v2, p0, Lcom/yik/yak/data/models/Yak;->HidePin:I

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/yik/yak/data/models/Yak;->Comments:I

    .line 47
    iput v2, p0, Lcom/yik/yak/data/models/Yak;->Liked:I

    .line 48
    iput v2, p0, Lcom/yik/yak/data/models/Yak;->Type:I

    .line 49
    iput v2, p0, Lcom/yik/yak/data/models/Yak;->DeliveryID:I

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/yik/yak/data/models/Yak;->YakkerID:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/yik/yak/data/models/Yak;->YakkerHandle:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/yik/yak/data/models/Yak;->Content:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/data/models/Yak;->TimePosted:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/yik/yak/data/models/Yak;->PosterID:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/yik/yak/data/models/Yak;->Comment:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/yik/yak/data/models/Yak;->OverlayId:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/yik/yak/data/models/Yak;->BackgroundId:Ljava/lang/String;

    .line 62
    iput-wide v4, p0, Lcom/yik/yak/data/models/Yak;->ImageHeight:D

    .line 63
    iput-wide v4, p0, Lcom/yik/yak/data/models/Yak;->ImageWidth:D

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/yik/yak/data/models/Yak;->TextStyle:Ljava/lang/String;

    .line 65
    iput-wide v4, p0, Lcom/yik/yak/data/models/Yak;->Latitude:D

    .line 66
    iput-wide v4, p0, Lcom/yik/yak/data/models/Yak;->Longitude:D

    .line 67
    iput-boolean v2, p0, Lcom/yik/yak/data/models/Yak;->IsOriginalPoster:Z

    .line 68
    iput-boolean v2, p0, Lcom/yik/yak/data/models/Yak;->IsComment:Z

    .line 69
    iput-boolean v2, p0, Lcom/yik/yak/data/models/Yak;->ShowHandle:Z

    .line 70
    iput-boolean v2, p0, Lcom/yik/yak/data/models/Yak;->IsDeleted:Z

    .line 71
    iput-boolean v2, p0, Lcom/yik/yak/data/models/Yak;->ReadOnly:Z

    .line 72
    iput-boolean v2, p0, Lcom/yik/yak/data/models/Yak;->IsBasecamp:Z

    .line 73
    iput v2, p0, Lcom/yik/yak/data/models/Yak;->ViewResourceID:I

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/yik/yak/data/models/Yak;->LinkUrl:Ljava/lang/String;

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/yik/yak/data/models/Yak;->LinkTitle:Ljava/lang/String;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/yik/yak/data/models/Yak;->LinkSummary:Ljava/lang/String;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/yik/yak/data/models/Yak;->LinkProvider:Ljava/lang/String;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/yik/yak/data/models/Yak;->LinkThumbNailUrl:Ljava/lang/String;

    .line 81
    iput-boolean v2, p0, Lcom/yik/yak/data/models/Yak;->HasError:Z

    .line 83
    iput-boolean v3, p0, Lcom/yik/yak/data/models/Yak;->CanReply:Z

    .line 84
    iput-boolean v3, p0, Lcom/yik/yak/data/models/Yak;->CanVote:Z

    .line 85
    iput-boolean v3, p0, Lcom/yik/yak/data/models/Yak;->CanReport:Z

    .line 88
    iput-object v6, p0, Lcom/yik/yak/data/models/Yak;->parentYak:Lcom/yik/yak/data/models/Yak;

    .line 90
    iput-object v6, p0, Lcom/yik/yak/data/models/Yak;->mContext:Landroid/content/Context;

    .line 93
    return-void
.end method

.method public static getYakTypeName(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    packed-switch p0, :pswitch_data_0

    .line 180
    :pswitch_0
    const-string v0, "Normal"

    :goto_0
    return-object v0

    .line 165
    :pswitch_1
    const-string v0, "Custom"

    goto :goto_0

    .line 167
    :pswitch_2
    const-string v0, "System"

    goto :goto_0

    .line 169
    :pswitch_3
    const-string v0, "Banned"

    goto :goto_0

    .line 171
    :pswitch_4
    const-string v0, "Warning"

    goto :goto_0

    .line 173
    :pswitch_5
    const-string v0, "Sponsored"

    goto :goto_0

    .line 175
    :pswitch_6
    const-string v0, "Link"

    goto :goto_0

    .line 177
    :pswitch_7
    const-string v0, "Photo"

    goto :goto_0

    .line 163
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static initializeYak(Landroid/content/Context;Lcom/yik/yak/data/models/Yak;)Lcom/yik/yak/data/models/Yak;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 146
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/yik/yak/data/models/Yak;->initializeYak(Landroid/content/Context;Lcom/yik/yak/data/models/Yak;ZZZZ)Lcom/yik/yak/data/models/Yak;

    move-result-object v0

    return-object v0
.end method

.method public static initializeYak(Landroid/content/Context;Lcom/yik/yak/data/models/Yak;ZZZ)Lcom/yik/yak/data/models/Yak;
    .locals 6

    .prologue
    .line 150
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/yik/yak/data/models/Yak;->initializeYak(Landroid/content/Context;Lcom/yik/yak/data/models/Yak;ZZZZ)Lcom/yik/yak/data/models/Yak;

    move-result-object v0

    return-object v0
.end method

.method public static initializeYak(Landroid/content/Context;Lcom/yik/yak/data/models/Yak;ZZZZ)Lcom/yik/yak/data/models/Yak;
    .locals 0

    .prologue
    .line 154
    iput-object p0, p1, Lcom/yik/yak/data/models/Yak;->mContext:Landroid/content/Context;

    .line 155
    iput-boolean p2, p1, Lcom/yik/yak/data/models/Yak;->CanVote:Z

    .line 156
    iput-boolean p3, p1, Lcom/yik/yak/data/models/Yak;->CanReply:Z

    .line 157
    iput-boolean p4, p1, Lcom/yik/yak/data/models/Yak;->CanReport:Z

    .line 158
    iput-boolean p5, p1, Lcom/yik/yak/data/models/Yak;->IsBasecamp:Z

    .line 159
    return-object p1
.end method

.method public static initializeYak(Landroid/content/Context;Ljava/lang/String;)Lcom/yik/yak/data/models/Yak;
    .locals 7

    .prologue
    .line 96
    invoke-static {}, LAD;->a()LAD;

    move-result-object v0

    invoke-virtual {v0}, LAD;->g()Lcom/yik/yak/data/models/YakkerLocation;

    move-result-object v0

    .line 97
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 98
    const-string v1, "userID"

    invoke-static {}, LAa;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v1, "messageID"

    invoke-virtual {v2, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 102
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 104
    const/4 v1, 0x0

    .line 105
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    :try_start_0
    new-instance v4, Ljava/net/URL;

    const-string v5, "getMessage"

    invoke-static {v5, v2, v0}, LAj;->a(Ljava/lang/String;Ljava/util/TreeMap;Lcom/yik/yak/data/models/YakkerLocation;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 112
    :try_start_1
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 115
    const/16 v2, 0x400

    new-array v2, v2, [C

    .line 117
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/InputStreamReader;->read([C)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 118
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 132
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 133
    :goto_1
    :try_start_2
    new-instance v0, Lcom/yik/yak/data/models/Yak;

    invoke-direct {v0}, Lcom/yik/yak/data/models/Yak;-><init>()V

    .line 134
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/yik/yak/data/models/Yak;->HasError:Z

    .line 135
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 137
    if-eqz v2, :cond_0

    .line 138
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 142
    :cond_0
    :goto_2
    return-object v0

    .line 121
    :cond_1
    :try_start_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 122
    const-string v2, "messages"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 124
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 125
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 126
    new-instance v2, LAv;

    invoke-direct {v2}, LAv;-><init>()V

    invoke-virtual {v2, v1}, LAv;->a(Lorg/json/JSONObject;)Lcom/yik/yak/data/models/Yak;

    move-result-object v1

    .line 127
    iput-object p0, v1, Lcom/yik/yak/data/models/Yak;->mContext:Landroid/content/Context;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 137
    :goto_3
    if-eqz v0, :cond_4

    .line 138
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v1

    goto :goto_2

    .line 129
    :cond_2
    :try_start_4
    new-instance v1, Lcom/yik/yak/data/models/Yak;

    invoke-direct {v1}, Lcom/yik/yak/data/models/Yak;-><init>()V

    .line 130
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/yik/yak/data/models/Yak;->HasError:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 137
    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_4
    if-eqz v1, :cond_3

    .line 138
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    throw v0

    .line 137
    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_4

    .line 132
    :catch_1
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method private sendRequest(Ljava/lang/String;Ljava/util/TreeMap;Lcom/yik/yak/data/models/YakkerLocation;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yik/yak/data/models/YakkerLocation;",
            ")V"
        }
    .end annotation

    .prologue
    .line 327
    if-eqz p2, :cond_0

    .line 328
    const-string v1, "bc"

    iget-boolean v0, p0, Lcom/yik/yak/data/models/Yak;->IsBasecamp:Z

    if-eqz v0, :cond_1

    const-string v0, "1"

    :goto_0
    invoke-virtual {p2, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    :cond_0
    invoke-static {}, LAJ;->a()LAJ;

    move-result-object v0

    invoke-virtual {v0}, LAJ;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, LAj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/TreeMap;Lcom/yik/yak/data/models/YakkerLocation;)Ljava/lang/String;

    move-result-object v0

    .line 338
    new-instance v1, LxF;

    invoke-direct {v1}, LxF;-><init>()V

    invoke-virtual {v1, v0}, LxF;->a(Ljava/lang/String;)LxF;

    move-result-object v0

    invoke-virtual {v0}, LxF;->b()LxD;

    move-result-object v0

    .line 342
    const/4 v1, 0x1

    invoke-static {v1}, LAj;->a(Z)Lxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lxy;->a(LxD;)LwY;

    move-result-object v0

    .line 343
    new-instance v1, LAC;

    invoke-direct {v1, p0}, LAC;-><init>(Lcom/yik/yak/data/models/Yak;)V

    invoke-virtual {v0, v1}, LwY;->a(Lxc;)V

    .line 352
    return-void

    .line 328
    :cond_1
    const-string v0, "0"

    goto :goto_0
.end method

.method private showDownvoteEscalationDialogIfNeeded()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 239
    invoke-static {v4}, LzT;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/yik/yak/data/models/Yak;->mContext:Landroid/content/Context;

    const v1, 0x7f080108

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 243
    iget-boolean v0, p0, Lcom/yik/yak/data/models/Yak;->IsComment:Z

    if-eqz v0, :cond_1

    .line 244
    const v0, 0x7f080103

    .line 253
    :goto_0
    iget-object v2, p0, Lcom/yik/yak/data/models/Yak;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 254
    iget-object v2, p0, Lcom/yik/yak/data/models/Yak;->mContext:Landroid/content/Context;

    const v3, 0x7f08013c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 255
    iget-object v3, p0, Lcom/yik/yak/data/models/Yak;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, v0, v2}, Lcom/yik/yak/ui/dialog/YikYakDialog;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 256
    iget-object v1, p0, Lcom/yik/yak/data/models/Yak;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 257
    invoke-static {v4}, LzT;->b(I)V

    .line 259
    :cond_0
    return-void

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/yik/yak/data/models/Yak;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/yik/yak/ui/activity/YakDetailActivity;

    if-eqz v0, :cond_2

    .line 247
    const v0, 0x7f080104

    goto :goto_0

    .line 249
    :cond_2
    const v0, 0x7f080105

    goto :goto_0
.end method


# virtual methods
.method public deleteYak()Z
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x0

    .line 323
    return v0
.end method

.method public downvote()Z
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 262
    invoke-direct {p0}, Lcom/yik/yak/data/models/Yak;->showDownvoteEscalationDialogIfNeeded()V

    .line 264
    iget-boolean v0, p0, Lcom/yik/yak/data/models/Yak;->CanVote:Z

    if-nez v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/yik/yak/data/models/Yak;->mContext:Landroid/content/Context;

    const v1, 0x7f080157

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 308
    :goto_0
    return v2

    .line 270
    :cond_0
    invoke-static {}, LAJ;->a()LAJ;

    move-result-object v0

    const-string v3, "voting"

    const-string v4, "enableVoteChanging"

    invoke-virtual {v0, v3, v4, v1}, LAJ;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    .line 271
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    .line 275
    invoke-static {}, LAD;->a()LAD;

    move-result-object v0

    .line 276
    invoke-virtual {v0}, LAD;->g()Lcom/yik/yak/data/models/YakkerLocation;

    move-result-object v5

    .line 277
    const-string v0, "messageID"

    iget-object v6, p0, Lcom/yik/yak/data/models/Yak;->ID:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v0, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const-string v0, "userID"

    invoke-static {}, LAa;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v0, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    iget-boolean v0, p0, Lcom/yik/yak/data/models/Yak;->IsComment:Z

    if-eqz v0, :cond_1

    .line 281
    const-string v0, "downvoteComment"

    .line 282
    const-string v6, "commentID"

    iget-object v7, p0, Lcom/yik/yak/data/models/Yak;->CommentID:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    :goto_1
    iget v6, p0, Lcom/yik/yak/data/models/Yak;->Liked:I

    if-ne v6, v8, :cond_2

    if-eqz v3, :cond_2

    .line 290
    iput v2, p0, Lcom/yik/yak/data/models/Yak;->Liked:I

    .line 291
    iget v2, p0, Lcom/yik/yak/data/models/Yak;->NumberOfLikes:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/yik/yak/data/models/Yak;->NumberOfLikes:I

    .line 292
    invoke-direct {p0, v0, v4, v5}, Lcom/yik/yak/data/models/Yak;->sendRequest(Ljava/lang/String;Ljava/util/TreeMap;Lcom/yik/yak/data/models/YakkerLocation;)V

    move v0, v1

    :goto_2
    move v2, v0

    .line 308
    goto :goto_0

    .line 284
    :cond_1
    const-string v0, "downvoteMessage"

    .line 285
    const-string v6, "messageID"

    iget-object v7, p0, Lcom/yik/yak/data/models/Yak;->ID:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 293
    :cond_2
    iget v6, p0, Lcom/yik/yak/data/models/Yak;->Liked:I

    if-nez v6, :cond_3

    .line 294
    iput v8, p0, Lcom/yik/yak/data/models/Yak;->Liked:I

    .line 295
    iget v2, p0, Lcom/yik/yak/data/models/Yak;->NumberOfLikes:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/yik/yak/data/models/Yak;->NumberOfLikes:I

    .line 296
    invoke-direct {p0, v0, v4, v5}, Lcom/yik/yak/data/models/Yak;->sendRequest(Ljava/lang/String;Ljava/util/TreeMap;Lcom/yik/yak/data/models/YakkerLocation;)V

    .line 298
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    sget-object v2, LHe;->b:LHe;

    const-string v3, "Tap"

    invoke-virtual {v0, v2, p0, v3}, LHa;->a(LHe;Lcom/yik/yak/data/models/Yak;Ljava/lang/String;)V

    move v0, v1

    goto :goto_2

    .line 299
    :cond_3
    iget v6, p0, Lcom/yik/yak/data/models/Yak;->Liked:I

    if-ne v6, v1, :cond_4

    if-eqz v3, :cond_4

    .line 300
    iput v8, p0, Lcom/yik/yak/data/models/Yak;->Liked:I

    .line 301
    iget v2, p0, Lcom/yik/yak/data/models/Yak;->NumberOfLikes:I

    add-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/yik/yak/data/models/Yak;->NumberOfLikes:I

    .line 302
    invoke-direct {p0, v0, v4, v5}, Lcom/yik/yak/data/models/Yak;->sendRequest(Ljava/lang/String;Ljava/util/TreeMap;Lcom/yik/yak/data/models/YakkerLocation;)V

    move v0, v1

    .line 303
    goto :goto_2

    .line 305
    :cond_4
    iget-object v0, p0, Lcom/yik/yak/data/models/Yak;->mContext:Landroid/content/Context;

    const v1, 0x7f0801a5

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v2

    goto :goto_2
.end method

.method public reportYak()Z
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x0

    .line 318
    return v0
.end method

.method public save()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 355
    const-string v2, "drafts.json"

    .line 357
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 360
    :try_start_0
    iget-object v0, p0, Lcom/yik/yak/data/models/Yak;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 362
    if-eqz v0, :cond_0

    .line 363
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 364
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 367
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 368
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 377
    :catch_0
    move-exception v0

    .line 380
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    :try_start_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 381
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    const-string v3, "{\"messages\": []}"

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 391
    :goto_2
    :try_start_2
    const-string v3, "messages"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 392
    new-instance v4, LAv;

    invoke-direct {v4}, LAv;-><init>()V

    invoke-virtual {v4, p0}, LAv;->b(Lcom/yik/yak/data/models/Yak;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    .line 400
    :try_start_3
    iget-object v3, p0, Lcom/yik/yak/data/models/Yak;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 401
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 402
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 407
    const/4 v0, 0x1

    :goto_3
    return v0

    .line 371
    :cond_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 376
    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_3

    .line 383
    :cond_3
    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 385
    :catch_2
    move-exception v0

    .line 386
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move v0, v1

    .line 387
    goto :goto_3

    .line 393
    :catch_3
    move-exception v0

    .line 394
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move v0, v1

    .line 395
    goto :goto_3

    .line 404
    :catch_4
    move-exception v0

    move v0, v1

    goto :goto_3
.end method

.method public sendYak()Z
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x0

    .line 313
    return v0
.end method

.method public upvote(Z)Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 185
    iget-boolean v0, p0, Lcom/yik/yak/data/models/Yak;->CanVote:Z

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/yik/yak/data/models/Yak;->mContext:Landroid/content/Context;

    const v1, 0x7f080157

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 233
    :goto_0
    return v2

    .line 191
    :cond_0
    invoke-static {}, LAJ;->a()LAJ;

    move-result-object v0

    const-string v3, "voting"

    const-string v4, "enableVoteChanging"

    invoke-virtual {v0, v3, v4, v1}, LAJ;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    .line 192
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    .line 196
    invoke-static {}, LAD;->a()LAD;

    move-result-object v0

    .line 197
    invoke-virtual {v0}, LAD;->g()Lcom/yik/yak/data/models/YakkerLocation;

    move-result-object v5

    .line 198
    const-string v0, "userID"

    invoke-static {}, LAa;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v0, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-boolean v0, p0, Lcom/yik/yak/data/models/Yak;->IsComment:Z

    if-eqz v0, :cond_1

    .line 201
    const-string v0, "likeComment"

    .line 202
    const-string v6, "commentID"

    iget-object v7, p0, Lcom/yik/yak/data/models/Yak;->CommentID:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :goto_1
    iget v6, p0, Lcom/yik/yak/data/models/Yak;->Liked:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    if-eqz v3, :cond_2

    .line 209
    iput v1, p0, Lcom/yik/yak/data/models/Yak;->Liked:I

    .line 210
    iget v2, p0, Lcom/yik/yak/data/models/Yak;->NumberOfLikes:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/yik/yak/data/models/Yak;->NumberOfLikes:I

    .line 211
    invoke-direct {p0, v0, v4, v5}, Lcom/yik/yak/data/models/Yak;->sendRequest(Ljava/lang/String;Ljava/util/TreeMap;Lcom/yik/yak/data/models/YakkerLocation;)V

    move v0, v1

    :goto_2
    move v2, v0

    .line 233
    goto :goto_0

    .line 204
    :cond_1
    const-string v0, "likeMessage"

    .line 205
    const-string v6, "messageID"

    iget-object v7, p0, Lcom/yik/yak/data/models/Yak;->ID:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 213
    :cond_2
    iget v6, p0, Lcom/yik/yak/data/models/Yak;->Liked:I

    if-nez v6, :cond_4

    .line 214
    iput v1, p0, Lcom/yik/yak/data/models/Yak;->Liked:I

    .line 215
    iget v2, p0, Lcom/yik/yak/data/models/Yak;->NumberOfLikes:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/yik/yak/data/models/Yak;->NumberOfLikes:I

    .line 216
    invoke-direct {p0, v0, v4, v5}, Lcom/yik/yak/data/models/Yak;->sendRequest(Ljava/lang/String;Ljava/util/TreeMap;Lcom/yik/yak/data/models/YakkerLocation;)V

    .line 219
    if-eqz p1, :cond_3

    .line 220
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    sget-object v2, LHe;->a:LHe;

    const-string v3, "DoubleTap"

    invoke-virtual {v0, v2, p0, v3}, LHa;->a(LHe;Lcom/yik/yak/data/models/Yak;Ljava/lang/String;)V

    move v0, v1

    goto :goto_2

    .line 222
    :cond_3
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    sget-object v2, LHe;->a:LHe;

    const-string v3, "Tap"

    invoke-virtual {v0, v2, p0, v3}, LHa;->a(LHe;Lcom/yik/yak/data/models/Yak;Ljava/lang/String;)V

    move v0, v1

    goto :goto_2

    .line 224
    :cond_4
    iget v6, p0, Lcom/yik/yak/data/models/Yak;->Liked:I

    if-ne v6, v1, :cond_5

    if-eqz v3, :cond_5

    .line 225
    iput v2, p0, Lcom/yik/yak/data/models/Yak;->Liked:I

    .line 226
    iget v2, p0, Lcom/yik/yak/data/models/Yak;->NumberOfLikes:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/yik/yak/data/models/Yak;->NumberOfLikes:I

    .line 227
    invoke-direct {p0, v0, v4, v5}, Lcom/yik/yak/data/models/Yak;->sendRequest(Ljava/lang/String;Ljava/util/TreeMap;Lcom/yik/yak/data/models/YakkerLocation;)V

    move v0, v1

    .line 228
    goto :goto_2

    .line 230
    :cond_5
    iget-object v0, p0, Lcom/yik/yak/data/models/Yak;->mContext:Landroid/content/Context;

    const v1, 0x7f0801a5

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v2

    goto :goto_2
.end method
