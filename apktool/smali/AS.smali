.class public LAS;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public static c:Landroid/graphics/drawable/Drawable;

.field private static d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Landroid/content/Context;

.field private static f:I

.field private static g:Z

.field private static h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static k:LAS;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LAS;->a:Ljava/util/HashMap;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LAS;->b:Ljava/util/HashMap;

    .line 46
    sput v1, LAS;->f:I

    .line 47
    sput-boolean v1, LAS;->g:Z

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LAS;->h:Ljava/util/HashMap;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LAS;->i:Ljava/util/HashMap;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LAS;->j:Ljava/util/HashMap;

    .line 51
    new-instance v0, LAS;

    invoke-direct {v0}, LAS;-><init>()V

    sput-object v0, LAS;->k:LAS;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    return-void
.end method

.method public static declared-synchronized a()LAS;
    .locals 2

    .prologue
    .line 54
    const-class v1, LAS;

    monitor-enter v1

    :try_start_0
    sget-object v0, LAS;->k:LAS;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, LAS;

    invoke-direct {v0}, LAS;-><init>()V

    sput-object v0, LAS;->k:LAS;

    .line 57
    :cond_0
    sget-object v0, LAS;->d:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LAS;->d:Ljava/util/HashMap;

    .line 60
    :cond_1
    sget-object v0, LAS;->k:LAS;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(I)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 149
    sget-object v0, LAS;->a:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    sget-object v0, LAS;->h:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 168
    sget-object v0, LAS;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 170
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 64
    invoke-static {}, LAS;->a()LAS;

    .line 65
    const/4 v0, 0x0

    sput-boolean v0, LAS;->g:Z

    .line 66
    sput-object p0, LAS;->e:Landroid/content/Context;

    .line 68
    sget-object v0, LAS;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    sget-object v1, LAS;->e:Landroid/content/Context;

    sget-object v0, LAS;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v1, v0}, LAS;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 102
    :goto_0
    return-void

    .line 71
    :cond_0
    new-instance v0, LxF;

    invoke-direct {v0}, LxF;-><init>()V

    invoke-virtual {v0, p1}, LxF;->a(Ljava/lang/String;)LxF;

    move-result-object v0

    invoke-virtual {v0}, LxF;->b()LxD;

    move-result-object v0

    .line 75
    const/4 v1, 0x1

    invoke-static {v1}, LAj;->a(Z)Lxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lxy;->a(LxD;)LwY;

    move-result-object v0

    .line 76
    new-instance v1, LAT;

    invoke-direct {v1, p1}, LAT;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, LwY;->a(Lxc;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v0, LAS;->f:I

    .line 107
    sput-object p0, LAS;->e:Landroid/content/Context;

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LAS;->h:Ljava/util/HashMap;

    .line 109
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 111
    :try_start_0
    const-string v0, "refresh_asset"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 112
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 113
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 115
    sget-object v3, LAS;->h:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 119
    :cond_0
    new-instance v0, LAV;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LAV;-><init>(LAT;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, LAV;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 120
    return-void
.end method

.method public static a(Z)V
    .locals 3

    .prologue
    .line 136
    sput-boolean p0, LAS;->g:Z

    .line 137
    sget-object v0, LAS;->e:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "REFRESH_ASSET_READY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 138
    return-void
.end method

.method public static b()I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 124
    :try_start_0
    const-string v2, "#%06X"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    const v5, 0xffffff

    sget-object v0, LAS;->h:Ljava/util/HashMap;

    const-string v6, "background_color"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 127
    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method static synthetic b(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 36
    invoke-static {p0}, LAS;->c(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static b(I)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 153
    sget-object v0, LAS;->b:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private static c(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 157
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 159
    :try_start_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 161
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 132
    sget-boolean v0, LAS;->g:Z

    return v0
.end method

.method static synthetic d()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 36
    sget-object v0, LAS;->d:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic e()Landroid/content/Context;
    .locals 1

    .prologue
    .line 36
    sget-object v0, LAS;->e:Landroid/content/Context;

    return-object v0
.end method
