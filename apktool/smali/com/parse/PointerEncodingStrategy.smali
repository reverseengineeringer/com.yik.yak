.class Lcom/parse/PointerEncodingStrategy;
.super Lcom/parse/PointerOrLocalIdEncodingStrategy;
.source "SourceFile"


# static fields
.field private static final instance:Lcom/parse/PointerEncodingStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/parse/PointerEncodingStrategy;

    invoke-direct {v0}, Lcom/parse/PointerEncodingStrategy;-><init>()V

    sput-object v0, Lcom/parse/PointerEncodingStrategy;->instance:Lcom/parse/PointerEncodingStrategy;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/parse/PointerOrLocalIdEncodingStrategy;-><init>()V

    return-void
.end method

.method public static get()Lcom/parse/PointerEncodingStrategy;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/parse/PointerEncodingStrategy;->instance:Lcom/parse/PointerEncodingStrategy;

    return-object v0
.end method


# virtual methods
.method public encodeRelatedObject(Lcom/parse/ParseObject;)Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 20
    invoke-virtual {p1}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unable to encode an association with an unsaved ParseObject"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_0
    invoke-super {p0, p1}, Lcom/parse/PointerOrLocalIdEncodingStrategy;->encodeRelatedObject(Lcom/parse/ParseObject;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
