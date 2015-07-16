.class public final enum LFQ;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LFQ;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LFQ;

.field public static final enum b:LFQ;

.field public static final enum c:LFQ;

.field private static final synthetic d:[LFQ;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 125
    new-instance v0, LFQ;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v2}, LFQ;-><init>(Ljava/lang/String;I)V

    sput-object v0, LFQ;->a:LFQ;

    .line 126
    new-instance v0, LFQ;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, LFQ;-><init>(Ljava/lang/String;I)V

    sput-object v0, LFQ;->b:LFQ;

    .line 127
    new-instance v0, LFQ;

    const-string v1, "NEUTRAL"

    invoke-direct {v0, v1, v4}, LFQ;-><init>(Ljava/lang/String;I)V

    sput-object v0, LFQ;->c:LFQ;

    .line 124
    const/4 v0, 0x3

    new-array v0, v0, [LFQ;

    sget-object v1, LFQ;->a:LFQ;

    aput-object v1, v0, v2

    sget-object v1, LFQ;->b:LFQ;

    aput-object v1, v0, v3

    sget-object v1, LFQ;->c:LFQ;

    aput-object v1, v0, v4

    sput-object v0, LFQ;->d:[LFQ;

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
    .line 124
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()[LFQ;
    .locals 1

    .prologue
    .line 124
    sget-object v0, LFQ;->d:[LFQ;

    invoke-virtual {v0}, [LFQ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LFQ;

    return-object v0
.end method
