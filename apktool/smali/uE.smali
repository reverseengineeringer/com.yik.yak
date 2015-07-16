.class public LuE;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LuB;
.implements LuD;
.implements Lvf;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field private final a:LsG;

.field private final b:LtY;

.field private final c:Ljavax/net/ssl/SSLSocketFactory;

.field private final d:Luj;

.field private final e:Ltq;

.field private final f:Ljava/util/Map;
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

.field private final g:LuM;

.field private final h:LuK;

.field private final i:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;LsK;Ltq;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-static {p1}, LsG;->a(Landroid/content/Context;)LsG;

    move-result-object v0

    iput-object v0, p0, LuE;->a:LsG;

    .line 67
    new-instance v0, Luj;

    invoke-direct {v0}, Luj;-><init>()V

    iput-object v0, p0, LuE;->d:Luj;

    .line 68
    iput-object p4, p0, LuE;->e:Ltq;

    .line 69
    invoke-virtual {p3}, LsK;->d()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, LuE;->f:Ljava/util/Map;

    .line 70
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v0, p0, LuE;->i:F

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 73
    new-instance v1, LuI;

    invoke-direct {v1, p0}, LuI;-><init>(LuE;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 75
    new-instance v1, Landroid/os/HandlerThread;

    const-class v0, LuE;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 76
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 77
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 78
    new-instance v0, LuM;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, LuM;-><init>(LuE;Landroid/content/Context;Ljava/lang/String;Landroid/os/Looper;Lvf;)V

    iput-object v0, p0, LuE;->g:LuM;

    .line 80
    new-instance v0, LtY;

    iget-object v1, p0, LuE;->g:LuM;

    invoke-direct {v0, p3, v1}, LtY;-><init>(LsK;Landroid/os/Handler;)V

    iput-object v0, p0, LuE;->b:LtY;

    .line 81
    new-instance v0, LuK;

    invoke-direct {v0, p3}, LuK;-><init>(LsK;)V

    iput-object v0, p0, LuE;->h:LuK;

    .line 88
    :try_start_0
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 89
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 90
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 95
    :goto_0
    iput-object v0, p0, LuE;->c:Ljavax/net/ssl/SSLSocketFactory;

    .line 97
    iget-object v0, p0, LuE;->e:Ltq;

    new-instance v1, LuF;

    invoke-direct {v1, p0}, LuF;-><init>(LuE;)V

    invoke-virtual {v0, v1}, Ltq;->a(Ltr;)V

    .line 104
    return-void

    .line 92
    :catch_0
    move-exception v0

    move-object v0, v6

    goto :goto_0
.end method

.method static synthetic a(LuE;)LuM;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, LuE;->g:LuM;

    return-object v0
.end method

.method static synthetic b(LuE;)Luj;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, LuE;->d:Luj;

    return-object v0
.end method

.method static synthetic c(LuE;)LsG;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, LuE;->a:LsG;

    return-object v0
.end method

.method static synthetic d(LuE;)Ltq;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, LuE;->e:Ltq;

    return-object v0
.end method

.method static synthetic e(LuE;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, LuE;->c:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method static synthetic f(LuE;)F
    .locals 1

    .prologue
    .line 62
    iget v0, p0, LuE;->i:F

    return v0
.end method

.method static synthetic g(LuE;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, LuE;->f:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic h(LuE;)LtY;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, LuE;->b:LtY;

    return-object v0
.end method

.method static synthetic i(LuE;)LuK;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, LuE;->h:LuK;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, LuE;->g:LuM;

    invoke-virtual {v0}, LuM;->a()V

    .line 109
    iget-object v0, p0, LuE;->g:LuM;

    iget-object v1, p0, LuE;->g:LuM;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, LuM;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, LuM;->sendMessage(Landroid/os/Message;)Z

    .line 110
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, LuE;->g:LuM;

    invoke-virtual {v0}, LuM;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 134
    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    .line 135
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 137
    iget-object v1, p0, LuE;->g:LuM;

    invoke-virtual {v1, v0}, LuM;->sendMessage(Landroid/os/Message;)Z

    .line 138
    return-void
.end method

.method public a(Lorg/json/JSONArray;)V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, LuE;->g:LuM;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, LuM;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 120
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 121
    iget-object v1, p0, LuE;->g:LuM;

    invoke-virtual {v1, v0}, LuM;->sendMessage(Landroid/os/Message;)Z

    .line 122
    return-void
.end method

.method public a(Lva;)V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, LuE;->g:LuM;

    invoke-virtual {v0}, LuM;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 143
    const/16 v1, 0xc

    iput v1, v0, Landroid/os/Message;->what:I

    .line 144
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 145
    iget-object v1, p0, LuE;->g:LuM;

    invoke-virtual {v1, v0}, LuM;->sendMessage(Landroid/os/Message;)Z

    .line 146
    return-void
.end method

.method public b(Lorg/json/JSONArray;)V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, LuE;->g:LuM;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, LuM;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 127
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 128
    iget-object v1, p0, LuE;->g:LuM;

    invoke-virtual {v1, v0}, LuM;->sendMessage(Landroid/os/Message;)Z

    .line 129
    return-void
.end method
