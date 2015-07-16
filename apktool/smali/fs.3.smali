.class public final enum Lfs;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfs;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lfs;

.field public static final enum b:Lfs;

.field public static final enum c:Lfs;

.field public static final enum d:Lfs;

.field private static final synthetic e:[Lfs;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lfs;

    const-string v1, "VERBOSE"

    invoke-direct {v0, v1, v2}, Lfs;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfs;->a:Lfs;

    new-instance v0, Lfs;

    const-string v1, "INFO"

    invoke-direct {v0, v1, v3}, Lfs;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfs;->b:Lfs;

    new-instance v0, Lfs;

    const-string v1, "WARNING"

    invoke-direct {v0, v1, v4}, Lfs;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfs;->c:Lfs;

    new-instance v0, Lfs;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v5}, Lfs;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfs;->d:Lfs;

    .line 20
    const/4 v0, 0x4

    new-array v0, v0, [Lfs;

    sget-object v1, Lfs;->a:Lfs;

    aput-object v1, v0, v2

    sget-object v1, Lfs;->b:Lfs;

    aput-object v1, v0, v3

    sget-object v1, Lfs;->c:Lfs;

    aput-object v1, v0, v4

    sget-object v1, Lfs;->d:Lfs;

    aput-object v1, v0, v5

    sput-object v0, Lfs;->e:[Lfs;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lfs;
    .locals 1

    .prologue
    .line 20
    const-class v0, Lfs;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfs;

    return-object v0
.end method
