.class public final enum LJz;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LJz;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LJz;

.field public static final enum b:LJz;

.field public static final enum c:LJz;

.field public static final enum d:LJz;

.field private static final synthetic e:[LJz;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, LJz;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, LJz;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJz;->a:LJz;

    .line 5
    new-instance v0, LJz;

    const-string v1, "POST"

    invoke-direct {v0, v1, v3}, LJz;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJz;->b:LJz;

    .line 6
    new-instance v0, LJz;

    const-string v1, "PUT"

    invoke-direct {v0, v1, v4}, LJz;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJz;->c:LJz;

    .line 7
    new-instance v0, LJz;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v5}, LJz;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJz;->d:LJz;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [LJz;

    sget-object v1, LJz;->a:LJz;

    aput-object v1, v0, v2

    sget-object v1, LJz;->b:LJz;

    aput-object v1, v0, v3

    sget-object v1, LJz;->c:LJz;

    aput-object v1, v0, v4

    sget-object v1, LJz;->d:LJz;

    aput-object v1, v0, v5

    sput-object v0, LJz;->e:[LJz;

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

.method public static a()[LJz;
    .locals 1

    .prologue
    .line 3
    sget-object v0, LJz;->e:[LJz;

    invoke-virtual {v0}, [LJz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LJz;

    return-object v0
.end method
