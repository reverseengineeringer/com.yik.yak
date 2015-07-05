.class public final enum LFz;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LFz;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LFz;

.field public static final enum b:LFz;

.field public static final enum c:LFz;

.field private static final synthetic d:[LFz;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 205
    new-instance v0, LFz;

    const-string v1, "UP"

    invoke-direct {v0, v1, v2}, LFz;-><init>(Ljava/lang/String;I)V

    sput-object v0, LFz;->a:LFz;

    .line 206
    new-instance v0, LFz;

    const-string v1, "DOWN"

    invoke-direct {v0, v1, v3}, LFz;-><init>(Ljava/lang/String;I)V

    sput-object v0, LFz;->b:LFz;

    .line 207
    new-instance v0, LFz;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4}, LFz;-><init>(Ljava/lang/String;I)V

    sput-object v0, LFz;->c:LFz;

    .line 204
    const/4 v0, 0x3

    new-array v0, v0, [LFz;

    sget-object v1, LFz;->a:LFz;

    aput-object v1, v0, v2

    sget-object v1, LFz;->b:LFz;

    aput-object v1, v0, v3

    sget-object v1, LFz;->c:LFz;

    aput-object v1, v0, v4

    sput-object v0, LFz;->d:[LFz;

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
    .line 204
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
