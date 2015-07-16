.class public final enum LIQ;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LIQ;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LIQ;

.field public static final enum b:LIQ;

.field public static final enum c:LIQ;

.field public static final enum d:LIQ;

.field private static final synthetic e:[LIQ;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, LIQ;

    const-string v1, "LOW"

    invoke-direct {v0, v1, v2}, LIQ;-><init>(Ljava/lang/String;I)V

    sput-object v0, LIQ;->a:LIQ;

    .line 8
    new-instance v0, LIQ;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, LIQ;-><init>(Ljava/lang/String;I)V

    sput-object v0, LIQ;->b:LIQ;

    .line 9
    new-instance v0, LIQ;

    const-string v1, "HIGH"

    invoke-direct {v0, v1, v4}, LIQ;-><init>(Ljava/lang/String;I)V

    sput-object v0, LIQ;->c:LIQ;

    .line 10
    new-instance v0, LIQ;

    const-string v1, "IMMEDIATE"

    invoke-direct {v0, v1, v5}, LIQ;-><init>(Ljava/lang/String;I)V

    sput-object v0, LIQ;->d:LIQ;

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [LIQ;

    sget-object v1, LIQ;->a:LIQ;

    aput-object v1, v0, v2

    sget-object v1, LIQ;->b:LIQ;

    aput-object v1, v0, v3

    sget-object v1, LIQ;->c:LIQ;

    aput-object v1, v0, v4

    sget-object v1, LIQ;->d:LIQ;

    aput-object v1, v0, v5

    sput-object v0, LIQ;->e:[LIQ;

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

.method static a(LIW;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "LIW;",
            "TY;)I"
        }
    .end annotation

    .prologue
    .line 21
    instance-of v0, p1, LIW;

    if-eqz v0, :cond_0

    .line 22
    check-cast p1, LIW;

    invoke-interface {p1}, LIW;->b()LIQ;

    move-result-object v0

    .line 27
    :goto_0
    invoke-virtual {v0}, LIQ;->ordinal()I

    move-result v0

    invoke-interface {p0}, LIW;->b()LIQ;

    move-result-object v1

    invoke-virtual {v1}, LIQ;->ordinal()I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    .line 24
    :cond_0
    sget-object v0, LIQ;->b:LIQ;

    goto :goto_0
.end method
