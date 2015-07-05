.class public final enum LJC;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LJC;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LJC;

.field public static final enum b:LJC;

.field public static final enum c:LJC;

.field private static final synthetic d:[LJC;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, LJC;

    const-string v1, "USE_CACHE"

    invoke-direct {v0, v1, v2}, LJC;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJC;->a:LJC;

    .line 18
    new-instance v0, LJC;

    const-string v1, "SKIP_CACHE_LOOKUP"

    invoke-direct {v0, v1, v3}, LJC;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJC;->b:LJC;

    .line 23
    new-instance v0, LJC;

    const-string v1, "IGNORE_CACHE_EXPIRATION"

    invoke-direct {v0, v1, v4}, LJC;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJC;->c:LJC;

    .line 8
    const/4 v0, 0x3

    new-array v0, v0, [LJC;

    sget-object v1, LJC;->a:LJC;

    aput-object v1, v0, v2

    sget-object v1, LJC;->b:LJC;

    aput-object v1, v0, v3

    sget-object v1, LJC;->c:LJC;

    aput-object v1, v0, v4

    sput-object v0, LJC;->d:[LJC;

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
