.class public final enum LrL;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LrL;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LrL;

.field public static final enum b:LrL;

.field public static final enum c:LrL;

.field public static final enum d:LrL;

.field public static final enum e:LrL;

.field public static final enum f:LrL;

.field private static final synthetic g:[LrL;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    new-instance v0, LrL;

    const-string v1, "CONTINUOUS"

    invoke-direct {v0, v1, v3}, LrL;-><init>(Ljava/lang/String;I)V

    sput-object v0, LrL;->a:LrL;

    new-instance v0, LrL;

    const-string v1, "TEXT"

    invoke-direct {v0, v1, v4}, LrL;-><init>(Ljava/lang/String;I)V

    sput-object v0, LrL;->b:LrL;

    new-instance v0, LrL;

    const-string v1, "BINARY"

    invoke-direct {v0, v1, v5}, LrL;-><init>(Ljava/lang/String;I)V

    sput-object v0, LrL;->c:LrL;

    new-instance v0, LrL;

    const-string v1, "PING"

    invoke-direct {v0, v1, v6}, LrL;-><init>(Ljava/lang/String;I)V

    sput-object v0, LrL;->d:LrL;

    new-instance v0, LrL;

    const-string v1, "PONG"

    invoke-direct {v0, v1, v7}, LrL;-><init>(Ljava/lang/String;I)V

    sput-object v0, LrL;->e:LrL;

    new-instance v0, LrL;

    const-string v1, "CLOSING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, LrL;-><init>(Ljava/lang/String;I)V

    sput-object v0, LrL;->f:LrL;

    .line 8
    const/4 v0, 0x6

    new-array v0, v0, [LrL;

    sget-object v1, LrL;->a:LrL;

    aput-object v1, v0, v3

    sget-object v1, LrL;->b:LrL;

    aput-object v1, v0, v4

    sget-object v1, LrL;->c:LrL;

    aput-object v1, v0, v5

    sget-object v1, LrL;->d:LrL;

    aput-object v1, v0, v6

    sget-object v1, LrL;->e:LrL;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, LrL;->f:LrL;

    aput-object v2, v0, v1

    sput-object v0, LrL;->g:[LrL;

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
