.class public final enum LIi;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LIi;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LIi;

.field public static final enum b:LIi;

.field public static final enum c:LIi;

.field public static final enum d:LIi;

.field private static final synthetic e:[LIi;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, LIi;

    const-string v1, "LOW"

    invoke-direct {v0, v1, v2}, LIi;-><init>(Ljava/lang/String;I)V

    sput-object v0, LIi;->a:LIi;

    .line 8
    new-instance v0, LIi;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, LIi;-><init>(Ljava/lang/String;I)V

    sput-object v0, LIi;->b:LIi;

    .line 9
    new-instance v0, LIi;

    const-string v1, "HIGH"

    invoke-direct {v0, v1, v4}, LIi;-><init>(Ljava/lang/String;I)V

    sput-object v0, LIi;->c:LIi;

    .line 10
    new-instance v0, LIi;

    const-string v1, "IMMEDIATE"

    invoke-direct {v0, v1, v5}, LIi;-><init>(Ljava/lang/String;I)V

    sput-object v0, LIi;->d:LIi;

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [LIi;

    sget-object v1, LIi;->a:LIi;

    aput-object v1, v0, v2

    sget-object v1, LIi;->b:LIi;

    aput-object v1, v0, v3

    sget-object v1, LIi;->c:LIi;

    aput-object v1, v0, v4

    sget-object v1, LIi;->d:LIi;

    aput-object v1, v0, v5

    sput-object v0, LIi;->e:[LIi;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static a(LIo;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "LIo;",
            "TY;)I"
        }
    .end annotation

    .prologue
    .line 21
    instance-of v0, p1, LIo;

    if-eqz v0, :cond_0

    .line 22
    check-cast p1, LIo;

    invoke-interface {p1}, LIo;->b()LIi;

    move-result-object v0

    .line 27
    :goto_0
    invoke-virtual {v0}, LIi;->ordinal()I

    move-result v0

    invoke-interface {p0}, LIo;->b()LIi;

    move-result-object v1

    invoke-virtual {v1}, LIi;->ordinal()I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    .line 24
    :cond_0
    sget-object v0, LIi;->b:LIi;

    goto :goto_0
.end method
