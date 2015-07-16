.class public final enum Lcom/yik/yak/data/http/request/StartVerificationRequest$StartVerificationError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yik/yak/data/http/request/StartVerificationRequest$StartVerificationError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yik/yak/data/http/request/StartVerificationRequest$StartVerificationError;

.field public static final enum INVALID:Lcom/yik/yak/data/http/request/StartVerificationRequest$StartVerificationError;

.field public static final enum OTHER:Lcom/yik/yak/data/http/request/StartVerificationRequest$StartVerificationError;

.field public static final enum TOO_FAST:Lcom/yik/yak/data/http/request/StartVerificationRequest$StartVerificationError;

.field public static final enum TOO_MANY_TRIES:Lcom/yik/yak/data/http/request/StartVerificationRequest$StartVerificationError;


# instance fields
.field mErrorCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 95
    new-instance v0, Lcom/yik/yak/data/http/request/StartVerificationRequest$StartVerificationError;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v6, v3}, Lcom/yik/yak/data/http/request/StartVerificationRequest$StartVerificationError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yik/yak/data/http/request/StartVerificationRequest$StartVerificationError;->INVALID:Lcom/yik/yak/data/http/request/StartVerificationRequest$StartVerificationError;

    .line 96
    new-instance v0, Lcom/yik/yak/data/http/request/StartVerificationRequest$StartVerificationError;

    const-string v1, "TOO_MANY_TRIES"

    invoke-direct {v0, v1, v3, v4}, Lcom/yik/yak/data/http/request/StartVerificationRequest$StartVerificationError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yik/yak/data/http/request/StartVerificationRequest$StartVerificationError;->TOO_MANY_TRIES:Lcom/yik/yak/data/http/request/StartVerificationRequest$StartVerificationError;

    .line 97
    new-instance v0, Lcom/yik/yak/data/http/request/StartVerificationRequest$StartVerificationError;

    const-string v1, "TOO_FAST"

    invoke-direct {v0, v1, v4, v5}, Lcom/yik/yak/data/http/request/StartVerificationRequest$StartVerificationError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yik/yak/data/http/request/StartVerificationRequest$StartVerificationError;->TOO_FAST:Lcom/yik/yak/data/http/request/StartVerificationRequest$StartVerificationError;

    .line 98
    new-instance v0, Lcom/yik/yak/data/http/request/StartVerificationRequest$StartVerificationError;

    const-string v1, "OTHER"

    const/16 v2, 0x3e7

    invoke-direct {v0, v1, v5, v2}, Lcom/yik/yak/data/http/request/StartVerificationRequest$StartVerificationError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yik/yak/data/http/request/StartVerificationRequest$StartVerificationError;->OTHER:Lcom/yik/yak/data/http/request/StartVerificationRequest$StartVerificationError;

    .line 94
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/yik/yak/data/http/request/StartVerificationRequest$StartVerificationError;

    sget-object v1, Lcom/yik/yak/data/http/request/StartVerificationRequest$StartVerificationError;->INVALID:Lcom/yik/yak/data/http/request/StartVerificationRequest$StartVerificationError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yik/yak/data/http/request/StartVerificationRequest$StartVerificationError;->TOO_MANY_TRIES:Lcom/yik/yak/data/http/request/StartVerificationRequest$StartVerificationError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yik/yak/data/http/request/StartVerificationRequest$StartVerificationError;->TOO_FAST:Lcom/yik/yak/data/http/request/StartVerificationRequest$StartVerificationError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yik/yak/data/http/request/StartVerificationRequest$StartVerificationError;->OTHER:Lcom/yik/yak/data/http/request/StartVerificationRequest$StartVerificationError;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yik/yak/data/http/request/StartVerificationRequest$StartVerificationError;->$VALUES:[Lcom/yik/yak/data/http/request/StartVerificationRequest$StartVerificationError;

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
    .line 102
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 103
    iput p3, p0, Lcom/yik/yak/data/http/request/StartVerificationRequest$StartVerificationError;->mErrorCode:I

    .line 104
    return-void
.end method

.method public static fromInt(I)Lcom/yik/yak/data/http/request/StartVerificationRequest$StartVerificationError;
    .locals 5

    .prologue
    .line 107
    invoke-static {}, Lcom/yik/yak/data/http/request/StartVerificationRequest$StartVerificationError;->values()[Lcom/yik/yak/data/http/request/StartVerificationRequest$StartVerificationError;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 108
    iget v4, v0, Lcom/yik/yak/data/http/request/StartVerificationRequest$StartVerificationError;->mErrorCode:I

    if-ne v4, p0, :cond_0

    .line 113
    :goto_1
    return-object v0

    .line 107
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 113
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yik/yak/data/http/request/StartVerificationRequest$StartVerificationError;
    .locals 1

    .prologue
    .line 94
    const-class v0, Lcom/yik/yak/data/http/request/StartVerificationRequest$StartVerificationError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/http/request/StartVerificationRequest$StartVerificationError;

    return-object v0
.end method

.method public static values()[Lcom/yik/yak/data/http/request/StartVerificationRequest$StartVerificationError;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/yik/yak/data/http/request/StartVerificationRequest$StartVerificationError;->$VALUES:[Lcom/yik/yak/data/http/request/StartVerificationRequest$StartVerificationError;

    invoke-virtual {v0}, [Lcom/yik/yak/data/http/request/StartVerificationRequest$StartVerificationError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yik/yak/data/http/request/StartVerificationRequest$StartVerificationError;

    return-object v0
.end method
