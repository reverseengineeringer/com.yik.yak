.class final enum Lcom/parse/ManifestInfo$ManifestCheckResult;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parse/ManifestInfo$ManifestCheckResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parse/ManifestInfo$ManifestCheckResult;

.field public static final enum HAS_ALL_DECLARATIONS:Lcom/parse/ManifestInfo$ManifestCheckResult;

.field public static final enum MISSING_OPTIONAL_DECLARATIONS:Lcom/parse/ManifestInfo$ManifestCheckResult;

.field public static final enum MISSING_REQUIRED_DECLARATIONS:Lcom/parse/ManifestInfo$ManifestCheckResult;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 307
    new-instance v0, Lcom/parse/ManifestInfo$ManifestCheckResult;

    const-string v1, "HAS_ALL_DECLARATIONS"

    invoke-direct {v0, v1, v2}, Lcom/parse/ManifestInfo$ManifestCheckResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ManifestInfo$ManifestCheckResult;->HAS_ALL_DECLARATIONS:Lcom/parse/ManifestInfo$ManifestCheckResult;

    .line 313
    new-instance v0, Lcom/parse/ManifestInfo$ManifestCheckResult;

    const-string v1, "MISSING_OPTIONAL_DECLARATIONS"

    invoke-direct {v0, v1, v3}, Lcom/parse/ManifestInfo$ManifestCheckResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ManifestInfo$ManifestCheckResult;->MISSING_OPTIONAL_DECLARATIONS:Lcom/parse/ManifestInfo$ManifestCheckResult;

    .line 318
    new-instance v0, Lcom/parse/ManifestInfo$ManifestCheckResult;

    const-string v1, "MISSING_REQUIRED_DECLARATIONS"

    invoke-direct {v0, v1, v4}, Lcom/parse/ManifestInfo$ManifestCheckResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ManifestInfo$ManifestCheckResult;->MISSING_REQUIRED_DECLARATIONS:Lcom/parse/ManifestInfo$ManifestCheckResult;

    .line 303
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/parse/ManifestInfo$ManifestCheckResult;

    sget-object v1, Lcom/parse/ManifestInfo$ManifestCheckResult;->HAS_ALL_DECLARATIONS:Lcom/parse/ManifestInfo$ManifestCheckResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/parse/ManifestInfo$ManifestCheckResult;->MISSING_OPTIONAL_DECLARATIONS:Lcom/parse/ManifestInfo$ManifestCheckResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/parse/ManifestInfo$ManifestCheckResult;->MISSING_REQUIRED_DECLARATIONS:Lcom/parse/ManifestInfo$ManifestCheckResult;

    aput-object v1, v0, v4

    sput-object v0, Lcom/parse/ManifestInfo$ManifestCheckResult;->$VALUES:[Lcom/parse/ManifestInfo$ManifestCheckResult;

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
    .line 303
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parse/ManifestInfo$ManifestCheckResult;
    .locals 1

    .prologue
    .line 303
    const-class v0, Lcom/parse/ManifestInfo$ManifestCheckResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parse/ManifestInfo$ManifestCheckResult;

    return-object v0
.end method

.method public static values()[Lcom/parse/ManifestInfo$ManifestCheckResult;
    .locals 1

    .prologue
    .line 303
    sget-object v0, Lcom/parse/ManifestInfo$ManifestCheckResult;->$VALUES:[Lcom/parse/ManifestInfo$ManifestCheckResult;

    invoke-virtual {v0}, [Lcom/parse/ManifestInfo$ManifestCheckResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parse/ManifestInfo$ManifestCheckResult;

    return-object v0
.end method
