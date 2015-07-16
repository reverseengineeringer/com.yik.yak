.class public final enum Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestError;

.field public static final enum INCORRECT_CODE:Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestError;

.field public static final enum INVALID_TOKEN:Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestError;

.field public static final enum MISSING_CODE:Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestError;

.field public static final enum OTHER:Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestError;

.field public static final enum TOO_MANY_TRIES:Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestError;

.field public static final enum UNKNOWN_USER:Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestError;


# instance fields
.field mErrorCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 88
    new-instance v0, Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestError;

    const-string v1, "INVALID_TOKEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestError;->INVALID_TOKEN:Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestError;

    .line 89
    new-instance v0, Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestError;

    const-string v1, "MISSING_CODE"

    invoke-direct {v0, v1, v3, v4}, Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestError;->MISSING_CODE:Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestError;

    .line 90
    new-instance v0, Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestError;

    const-string v1, "TOO_MANY_TRIES"

    invoke-direct {v0, v1, v4, v5}, Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestError;->TOO_MANY_TRIES:Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestError;

    .line 91
    new-instance v0, Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestError;

    const-string v1, "UNKNOWN_USER"

    invoke-direct {v0, v1, v5, v6}, Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestError;->UNKNOWN_USER:Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestError;

    .line 92
    new-instance v0, Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestError;

    const-string v1, "INCORRECT_CODE"

    invoke-direct {v0, v1, v6, v7}, Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestError;->INCORRECT_CODE:Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestError;

    .line 93
    new-instance v0, Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestError;

    const-string v1, "OTHER"

    const/16 v2, 0x3e7

    invoke-direct {v0, v1, v7, v2}, Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestError;->OTHER:Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestError;

    .line 87
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestError;

    const/4 v1, 0x0

    sget-object v2, Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestError;->INVALID_TOKEN:Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestError;

    aput-object v2, v0, v1

    sget-object v1, Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestError;->MISSING_CODE:Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestError;->TOO_MANY_TRIES:Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestError;->UNKNOWN_USER:Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestError;->INCORRECT_CODE:Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestError;->OTHER:Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestError;

    aput-object v1, v0, v7

    sput-object v0, Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestError;->$VALUES:[Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 98
    iput p3, p0, Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestError;->mErrorCode:I

    .line 99
    return-void
.end method

.method public static fromInt(I)Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestError;
    .locals 5

    .prologue
    .line 102
    invoke-static {}, Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestError;->values()[Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestError;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 103
    iget v4, v0, Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestError;->mErrorCode:I

    if-ne v4, p0, :cond_0

    .line 108
    :goto_1
    return-object v0

    .line 102
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 108
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestError;
    .locals 1

    .prologue
    .line 87
    const-class v0, Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestError;

    return-object v0
.end method

.method public static values()[Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestError;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestError;->$VALUES:[Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestError;

    invoke-virtual {v0}, [Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yik/yak/data/http/request/VerifyRequest$VerifyRequestError;

    return-object v0
.end method
