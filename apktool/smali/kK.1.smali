.class public final enum LKk;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LKk;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LKk;

.field public static final enum b:LKk;

.field public static final enum c:LKk;

.field private static final synthetic d:[LKk;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, LKk;

    const-string v1, "USE_CACHE"

    invoke-direct {v0, v1, v2}, LKk;-><init>(Ljava/lang/String;I)V

    sput-object v0, LKk;->a:LKk;

    .line 18
    new-instance v0, LKk;

    const-string v1, "SKIP_CACHE_LOOKUP"

    invoke-direct {v0, v1, v3}, LKk;-><init>(Ljava/lang/String;I)V

    sput-object v0, LKk;->b:LKk;

    .line 23
    new-instance v0, LKk;

    const-string v1, "IGNORE_CACHE_EXPIRATION"

    invoke-direct {v0, v1, v4}, LKk;-><init>(Ljava/lang/String;I)V

    sput-object v0, LKk;->c:LKk;

    .line 8
    const/4 v0, 0x3

    new-array v0, v0, [LKk;

    sget-object v1, LKk;->a:LKk;

    aput-object v1, v0, v2

    sget-object v1, LKk;->b:LKk;

    aput-object v1, v0, v3

    sget-object v1, LKk;->c:LKk;

    aput-object v1, v0, v4

    sput-object v0, LKk;->d:[LKk;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
