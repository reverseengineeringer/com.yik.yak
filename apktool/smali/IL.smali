.class public final enum LIL;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LIL;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LIL;

.field public static final enum b:LIL;

.field public static final enum c:LIL;

.field private static final synthetic d:[LIL;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 263
    new-instance v0, LIL;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v2}, LIL;-><init>(Ljava/lang/String;I)V

    sput-object v0, LIL;->a:LIL;

    .line 267
    new-instance v0, LIL;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v3}, LIL;-><init>(Ljava/lang/String;I)V

    sput-object v0, LIL;->b:LIL;

    .line 271
    new-instance v0, LIL;

    const-string v1, "FINISHED"

    invoke-direct {v0, v1, v4}, LIL;-><init>(Ljava/lang/String;I)V

    sput-object v0, LIL;->c:LIL;

    .line 259
    const/4 v0, 0x3

    new-array v0, v0, [LIL;

    sget-object v1, LIL;->a:LIL;

    aput-object v1, v0, v2

    sget-object v1, LIL;->b:LIL;

    aput-object v1, v0, v3

    sget-object v1, LIL;->c:LIL;

    aput-object v1, v0, v4

    sput-object v0, LIL;->d:[LIL;

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
    .line 259
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()[LIL;
    .locals 1

    .prologue
    .line 259
    sget-object v0, LIL;->d:[LIL;

    invoke-virtual {v0}, [LIL;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LIL;

    return-object v0
.end method
