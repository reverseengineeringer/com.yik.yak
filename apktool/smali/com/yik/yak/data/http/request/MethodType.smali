.class public final enum Lcom/yik/yak/data/http/request/MethodType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yik/yak/data/http/request/MethodType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yik/yak/data/http/request/MethodType;

.field public static final enum DELETE:Lcom/yik/yak/data/http/request/MethodType;

.field public static final enum GET:Lcom/yik/yak/data/http/request/MethodType;

.field public static final enum PATCH:Lcom/yik/yak/data/http/request/MethodType;

.field public static final enum POST:Lcom/yik/yak/data/http/request/MethodType;

.field public static final enum PUT:Lcom/yik/yak/data/http/request/MethodType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/yik/yak/data/http/request/MethodType;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, Lcom/yik/yak/data/http/request/MethodType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yik/yak/data/http/request/MethodType;->GET:Lcom/yik/yak/data/http/request/MethodType;

    .line 5
    new-instance v0, Lcom/yik/yak/data/http/request/MethodType;

    const-string v1, "POST"

    invoke-direct {v0, v1, v3}, Lcom/yik/yak/data/http/request/MethodType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yik/yak/data/http/request/MethodType;->POST:Lcom/yik/yak/data/http/request/MethodType;

    .line 6
    new-instance v0, Lcom/yik/yak/data/http/request/MethodType;

    const-string v1, "PUT"

    invoke-direct {v0, v1, v4}, Lcom/yik/yak/data/http/request/MethodType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yik/yak/data/http/request/MethodType;->PUT:Lcom/yik/yak/data/http/request/MethodType;

    .line 7
    new-instance v0, Lcom/yik/yak/data/http/request/MethodType;

    const-string v1, "PATCH"

    invoke-direct {v0, v1, v5}, Lcom/yik/yak/data/http/request/MethodType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yik/yak/data/http/request/MethodType;->PATCH:Lcom/yik/yak/data/http/request/MethodType;

    .line 8
    new-instance v0, Lcom/yik/yak/data/http/request/MethodType;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v6}, Lcom/yik/yak/data/http/request/MethodType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yik/yak/data/http/request/MethodType;->DELETE:Lcom/yik/yak/data/http/request/MethodType;

    .line 3
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/yik/yak/data/http/request/MethodType;

    sget-object v1, Lcom/yik/yak/data/http/request/MethodType;->GET:Lcom/yik/yak/data/http/request/MethodType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yik/yak/data/http/request/MethodType;->POST:Lcom/yik/yak/data/http/request/MethodType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yik/yak/data/http/request/MethodType;->PUT:Lcom/yik/yak/data/http/request/MethodType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yik/yak/data/http/request/MethodType;->PATCH:Lcom/yik/yak/data/http/request/MethodType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yik/yak/data/http/request/MethodType;->DELETE:Lcom/yik/yak/data/http/request/MethodType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yik/yak/data/http/request/MethodType;->$VALUES:[Lcom/yik/yak/data/http/request/MethodType;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yik/yak/data/http/request/MethodType;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/yik/yak/data/http/request/MethodType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/http/request/MethodType;

    return-object v0
.end method

.method public static values()[Lcom/yik/yak/data/http/request/MethodType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/yik/yak/data/http/request/MethodType;->$VALUES:[Lcom/yik/yak/data/http/request/MethodType;

    invoke-virtual {v0}, [Lcom/yik/yak/data/http/request/MethodType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yik/yak/data/http/request/MethodType;

    return-object v0
.end method
