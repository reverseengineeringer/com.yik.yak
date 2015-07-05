.class public final enum LFj;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LFj;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LFj;

.field public static final enum b:LFj;

.field public static final enum c:LFj;

.field private static final synthetic d:[LFj;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 68
    new-instance v0, LFj;

    const-string v1, "BAD"

    invoke-direct {v0, v1, v2}, LFj;-><init>(Ljava/lang/String;I)V

    sput-object v0, LFj;->a:LFj;

    .line 69
    new-instance v0, LFj;

    const-string v1, "GOOD"

    invoke-direct {v0, v1, v3}, LFj;-><init>(Ljava/lang/String;I)V

    sput-object v0, LFj;->b:LFj;

    .line 70
    new-instance v0, LFj;

    const-string v1, "NEUTRAL"

    invoke-direct {v0, v1, v4}, LFj;-><init>(Ljava/lang/String;I)V

    sput-object v0, LFj;->c:LFj;

    .line 67
    const/4 v0, 0x3

    new-array v0, v0, [LFj;

    sget-object v1, LFj;->a:LFj;

    aput-object v1, v0, v2

    sget-object v1, LFj;->b:LFj;

    aput-object v1, v0, v3

    sget-object v1, LFj;->c:LFj;

    aput-object v1, v0, v4

    sput-object v0, LFj;->d:[LFj;

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
    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()[LFj;
    .locals 1

    .prologue
    .line 67
    sget-object v0, LFj;->d:[LFj;

    invoke-virtual {v0}, [LFj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LFj;

    return-object v0
.end method
