.class public Luz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Luz;->a:I

    .line 57
    iput-object p2, p0, Luz;->b:Ljava/lang/String;

    .line 58
    iput p3, p0, Luz;->c:I

    .line 59
    iput p4, p0, Luz;->d:I

    .line 60
    iput-object p5, p0, Luz;->e:Ljava/lang/String;

    .line 61
    iput-object p6, p0, Luz;->f:Ljava/lang/String;

    .line 62
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 67
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 68
    iget v1, p0, Luz;->a:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 69
    const-string v1, "prefix"

    const-string v2, "shortest"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    :cond_0
    iget-object v1, p0, Luz;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 72
    const-string v1, "view_class"

    iget-object v2, p0, Luz;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    :cond_1
    iget v1, p0, Luz;->c:I

    if-le v1, v3, :cond_2

    .line 75
    const-string v1, "index"

    iget v2, p0, Luz;->c:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 77
    :cond_2
    iget v1, p0, Luz;->d:I

    if-le v1, v3, :cond_3

    .line 78
    const-string v1, "id"

    iget v2, p0, Luz;->d:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 80
    :cond_3
    iget-object v1, p0, Luz;->e:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 81
    const-string v1, "contentDescription"

    iget-object v2, p0, Luz;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    :cond_4
    iget-object v1, p0, Luz;->f:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 84
    const-string v1, "tag"

    iget-object v2, p0, Luz;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    :cond_5
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Can\'t serialize PathElement to String"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
