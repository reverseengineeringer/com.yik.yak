.class public final enum Lcom/parse/entity/mime/HttpMultipartMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parse/entity/mime/HttpMultipartMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parse/entity/mime/HttpMultipartMode;

.field public static final enum BROWSER_COMPATIBLE:Lcom/parse/entity/mime/HttpMultipartMode;

.field public static final enum STRICT:Lcom/parse/entity/mime/HttpMultipartMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Lcom/parse/entity/mime/HttpMultipartMode;

    const-string v1, "STRICT"

    invoke-direct {v0, v1, v2}, Lcom/parse/entity/mime/HttpMultipartMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/entity/mime/HttpMultipartMode;->STRICT:Lcom/parse/entity/mime/HttpMultipartMode;

    .line 40
    new-instance v0, Lcom/parse/entity/mime/HttpMultipartMode;

    const-string v1, "BROWSER_COMPATIBLE"

    invoke-direct {v0, v1, v3}, Lcom/parse/entity/mime/HttpMultipartMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/entity/mime/HttpMultipartMode;->BROWSER_COMPATIBLE:Lcom/parse/entity/mime/HttpMultipartMode;

    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/parse/entity/mime/HttpMultipartMode;

    sget-object v1, Lcom/parse/entity/mime/HttpMultipartMode;->STRICT:Lcom/parse/entity/mime/HttpMultipartMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/parse/entity/mime/HttpMultipartMode;->BROWSER_COMPATIBLE:Lcom/parse/entity/mime/HttpMultipartMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/parse/entity/mime/HttpMultipartMode;->$VALUES:[Lcom/parse/entity/mime/HttpMultipartMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parse/entity/mime/HttpMultipartMode;
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/parse/entity/mime/HttpMultipartMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parse/entity/mime/HttpMultipartMode;

    return-object v0
.end method

.method public static values()[Lcom/parse/entity/mime/HttpMultipartMode;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/parse/entity/mime/HttpMultipartMode;->$VALUES:[Lcom/parse/entity/mime/HttpMultipartMode;

    invoke-virtual {v0}, [Lcom/parse/entity/mime/HttpMultipartMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parse/entity/mime/HttpMultipartMode;

    return-object v0
.end method
