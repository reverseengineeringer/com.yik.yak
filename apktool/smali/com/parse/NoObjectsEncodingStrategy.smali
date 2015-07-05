.class Lcom/parse/NoObjectsEncodingStrategy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/parse/ParseObjectEncodingStrategy;


# static fields
.field private static final instance:Lcom/parse/NoObjectsEncodingStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/parse/NoObjectsEncodingStrategy;

    invoke-direct {v0}, Lcom/parse/NoObjectsEncodingStrategy;-><init>()V

    sput-object v0, Lcom/parse/NoObjectsEncodingStrategy;->instance:Lcom/parse/NoObjectsEncodingStrategy;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/parse/NoObjectsEncodingStrategy;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/parse/NoObjectsEncodingStrategy;->instance:Lcom/parse/NoObjectsEncodingStrategy;

    return-object v0
.end method


# virtual methods
.method public encodeRelatedObject(Lcom/parse/ParseObject;)Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ParseObjects not allowed here"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
