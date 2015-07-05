.class public Luq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lun;
.implements Lup;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field private final a:Ljava/util/List;
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

.field private final b:Ljava/util/List;
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

.field private final c:Ljava/util/List;
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

.field private final d:Ljava/util/List;
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

.field private final e:LsD;

.field private final f:LtP;

.field private final g:Ljavax/net/ssl/SSLSocketFactory;

.field private final h:LtU;

.field private final i:LtX;

.field private final j:Ltm;

.field private final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Luv;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/mixpanel/android/mpmetrics/MixpanelAPI;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {p1}, LsD;->a(Landroid/content/Context;)LsD;

    move-result-object v0

    iput-object v0, p0, Luq;->e:LsD;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Luq;->a:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Luq;->b:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Luq;->c:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Luq;->d:Ljava/util/List;

    .line 61
    iget-object v0, p0, Luq;->e:LsD;

    invoke-virtual {v0}, LsD;->q()Ljava/lang/String;

    move-result-object v0

    .line 62
    if-nez v0, :cond_0

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 66
    :cond_0
    new-instance v2, Lta;

    invoke-direct {v2, v0, p1}, Lta;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 67
    new-instance v0, LtU;

    invoke-direct {v0, v2}, LtU;-><init>(LsX;)V

    iput-object v0, p0, Luq;->h:LtU;

    .line 68
    new-instance v0, LtX;

    invoke-direct {v0}, LtX;-><init>()V

    iput-object v0, p0, Luq;->i:LtX;

    .line 69
    new-instance v0, Ltm;

    invoke-direct {v0}, Ltm;-><init>()V

    iput-object v0, p0, Luq;->j:Ltm;

    .line 70
    invoke-virtual {p3}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->getDeviceInfo()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Luq;->k:Ljava/util/Map;

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 73
    new-instance v2, Luu;

    invoke-direct {v2, p0}, Luu;-><init>(Luq;)V

    invoke-virtual {v0, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 75
    new-instance v0, Landroid/os/HandlerThread;

    const-class v2, Luq;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 76
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 77
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 78
    new-instance v2, Luv;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, p0, p1, p2, v0}, Luv;-><init>(Luq;Landroid/content/Context;Ljava/lang/String;Landroid/os/Looper;)V

    iput-object v2, p0, Luq;->l:Luv;

    .line 79
    iget-object v0, p0, Luq;->l:Luv;

    iget-object v2, p0, Luq;->l:Luv;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Luv;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Luv;->sendMessage(Landroid/os/Message;)Z

    .line 81
    new-instance v0, LtP;

    iget-object v2, p0, Luq;->l:Luv;

    invoke-direct {v0, p3, v2}, LtP;-><init>(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;Landroid/os/Handler;)V

    iput-object v0, p0, Luq;->f:LtP;

    .line 88
    :try_start_0
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 89
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 90
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 95
    :goto_0
    iput-object v0, p0, Luq;->g:Ljavax/net/ssl/SSLSocketFactory;

    .line 96
    return-void

    .line 92
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Luq;)Luv;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Luq;->l:Luv;

    return-object v0
.end method

.method static synthetic b(Luq;)LtX;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Luq;->i:LtX;

    return-object v0
.end method

.method static synthetic c(Luq;)LsD;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Luq;->e:LsD;

    return-object v0
.end method

.method static synthetic d(Luq;)Ljava/util/List;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Luq;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Luq;)Ljava/util/List;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Luq;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Luq;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Luq;->g:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method static synthetic g(Luq;)Ltm;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Luq;->j:Ltm;

    return-object v0
.end method

.method static synthetic h(Luq;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Luq;->k:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic i(Luq;)LtU;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Luq;->h:LtU;

    return-object v0
.end method

.method static synthetic j(Luq;)Ljava/util/List;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Luq;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic k(Luq;)Ljava/util/List;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Luq;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic l(Luq;)LtP;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Luq;->f:LtP;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Luq;->l:Luv;

    invoke-virtual {v0}, Luv;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 113
    const/16 v1, 0x9

    iput v1, v0, Landroid/os/Message;->what:I

    .line 114
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 116
    iget-object v1, p0, Luq;->l:Luv;

    invoke-virtual {v1, v0}, Luv;->sendMessage(Landroid/os/Message;)Z

    .line 117
    return-void
.end method

.method public a(Lorg/json/JSONArray;)V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Luq;->l:Luv;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Luv;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 106
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 107
    iget-object v1, p0, Luq;->l:Luv;

    invoke-virtual {v1, v0}, Luv;->sendMessage(Landroid/os/Message;)Z

    .line 108
    return-void
.end method
