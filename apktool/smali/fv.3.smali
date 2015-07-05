.class public final enum Lfv;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfv;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lfv;

.field public static final enum b:Lfv;

.field public static final enum c:Lfv;

.field public static final enum d:Lfv;

.field private static final synthetic e:[Lfv;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lfv;

    const-string v1, "VERBOSE"

    invoke-direct {v0, v1, v2}, Lfv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfv;->a:Lfv;

    new-instance v0, Lfv;

    const-string v1, "INFO"

    invoke-direct {v0, v1, v3}, Lfv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfv;->b:Lfv;

    new-instance v0, Lfv;

    const-string v1, "WARNING"

    invoke-direct {v0, v1, v4}, Lfv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfv;->c:Lfv;

    new-instance v0, Lfv;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v5}, Lfv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfv;->d:Lfv;

    .line 20
    const/4 v0, 0x4

    new-array v0, v0, [Lfv;

    sget-object v1, Lfv;->a:Lfv;

    aput-object v1, v0, v2

    sget-object v1, Lfv;->b:Lfv;

    aput-object v1, v0, v3

    sget-object v1, Lfv;->c:Lfv;

    aput-object v1, v0, v4

    sget-object v1, Lfv;->d:Lfv;

    aput-object v1, v0, v5

    sput-object v0, Lfv;->e:[Lfv;

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

.method public static a(Ljava/lang/String;)Lfv;
    .locals 1

    .prologue
    .line 20
    const-class v0, Lfv;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfv;

    return-object v0
.end method
