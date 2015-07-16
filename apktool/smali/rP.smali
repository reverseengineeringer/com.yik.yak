.class public final enum LrP;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LrP;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LrP;

.field public static final enum b:LrP;

.field public static final enum c:LrP;

.field public static final enum d:LrP;

.field public static final enum e:LrP;

.field public static final enum f:LrP;

.field private static final synthetic g:[LrP;


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
    new-instance v0, LrP;

    const-string v1, "CONTINUOUS"

    invoke-direct {v0, v1, v3}, LrP;-><init>(Ljava/lang/String;I)V

    sput-object v0, LrP;->a:LrP;

    new-instance v0, LrP;

    const-string v1, "TEXT"

    invoke-direct {v0, v1, v4}, LrP;-><init>(Ljava/lang/String;I)V

    sput-object v0, LrP;->b:LrP;

    new-instance v0, LrP;

    const-string v1, "BINARY"

    invoke-direct {v0, v1, v5}, LrP;-><init>(Ljava/lang/String;I)V

    sput-object v0, LrP;->c:LrP;

    new-instance v0, LrP;

    const-string v1, "PING"

    invoke-direct {v0, v1, v6}, LrP;-><init>(Ljava/lang/String;I)V

    sput-object v0, LrP;->d:LrP;

    new-instance v0, LrP;

    const-string v1, "PONG"

    invoke-direct {v0, v1, v7}, LrP;-><init>(Ljava/lang/String;I)V

    sput-object v0, LrP;->e:LrP;

    new-instance v0, LrP;

    const-string v1, "CLOSING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, LrP;-><init>(Ljava/lang/String;I)V

    sput-object v0, LrP;->f:LrP;

    .line 8
    const/4 v0, 0x6

    new-array v0, v0, [LrP;

    sget-object v1, LrP;->a:LrP;

    aput-object v1, v0, v3

    sget-object v1, LrP;->b:LrP;

    aput-object v1, v0, v4

    sget-object v1, LrP;->c:LrP;

    aput-object v1, v0, v5

    sget-object v1, LrP;->d:LrP;

    aput-object v1, v0, v6

    sget-object v1, LrP;->e:LrP;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, LrP;->f:LrP;

    aput-object v2, v0, v1

    sput-object v0, LrP;->g:[LrP;

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
