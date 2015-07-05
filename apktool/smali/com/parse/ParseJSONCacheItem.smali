.class Lcom/parse/ParseJSONCacheItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private hashValue:Ljava/lang/String;

.field private json:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseJSONCacheItem;->json:Lorg/json/JSONObject;

    .line 15
    iget-object v0, p0, Lcom/parse/ParseJSONCacheItem;->json:Lorg/json/JSONObject;

    const-string v1, "object"

    invoke-static {}, Lcom/parse/PointerOrLocalIdEncodingStrategy;->get()Lcom/parse/PointerOrLocalIdEncodingStrategy;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/parse/Parse;->encode(Ljava/lang/Object;Lcom/parse/ParseObjectEncodingStrategy;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    iget-object v0, p0, Lcom/parse/ParseJSONCacheItem;->json:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/codec/digest/DigestUtils;->md5Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseJSONCacheItem;->hashValue:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public equals(Lcom/parse/ParseJSONCacheItem;)Z
    .locals 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/parse/ParseJSONCacheItem;->hashValue:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/parse/ParseJSONCacheItem;->getHashValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getHashValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/parse/ParseJSONCacheItem;->hashValue:Ljava/lang/String;

    return-object v0
.end method

.method public getJSONObject()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseJSONCacheItem;->json:Lorg/json/JSONObject;

    const-string v1, "object"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 31
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
