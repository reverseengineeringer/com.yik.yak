.class LAb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LwT;


# instance fields
.field final synthetic a:Lcom/yik/yak/data/http/request/YikYakRequest;

.field final synthetic b:Landroid/os/Handler;

.field final synthetic c:LAe;

.field final synthetic d:LAa;


# direct methods
.method constructor <init>(LAa;Lcom/yik/yak/data/http/request/YikYakRequest;Landroid/os/Handler;LAe;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, LAb;->d:LAa;

    iput-object p2, p0, LAb;->a:Lcom/yik/yak/data/http/request/YikYakRequest;

    iput-object p3, p0, LAb;->b:Landroid/os/Handler;

    iput-object p4, p0, LAb;->c:LAe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, LAb;->b:Landroid/os/Handler;

    new-instance v1, LAd;

    invoke-direct {v1, p0, p1}, LAd;-><init>(LAb;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 90
    return-void
.end method


# virtual methods
.method public a(Lxt;Ljava/io/IOException;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0, p2}, LAb;->a(Ljava/lang/Exception;)V

    .line 81
    return-void
.end method

.method public a(Lxz;)V
    .locals 3

    .prologue
    .line 47
    invoke-virtual {p1}, Lxz;->h()LxC;

    move-result-object v0

    invoke-virtual {v0}, LxC;->f()Ljava/lang/String;

    move-result-object v2

    .line 48
    invoke-virtual {p1}, Lxz;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    iget-object v1, p0, LAb;->a:Lcom/yik/yak/data/http/request/YikYakRequest;

    invoke-interface {v1, v0}, Lcom/yik/yak/data/http/request/YikYakRequest;->buildResponse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 66
    iget-object v1, p0, LAb;->b:Landroid/os/Handler;

    new-instance v2, LAc;

    invoke-direct {v2, p0, p1, v0}, LAc;-><init>(LAb;Lxz;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 76
    :goto_1
    return-void

    .line 53
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 55
    :try_start_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 56
    :catch_1
    move-exception v0

    .line 57
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 58
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 59
    invoke-direct {p0, v1}, LAb;->a(Ljava/lang/Exception;)V

    goto :goto_1

    .line 73
    :cond_0
    invoke-virtual {p1}, Lxz;->c()I

    move-result v0

    .line 74
    new-instance v1, LAv;

    invoke-direct {v1, v0}, LAv;-><init>(I)V

    invoke-direct {p0, v1}, LAb;->a(Ljava/lang/Exception;)V

    goto :goto_1
.end method
