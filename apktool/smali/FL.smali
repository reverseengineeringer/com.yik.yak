.class public final enum LFL;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LFL;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LFL;

.field public static final enum b:LFL;

.field public static final enum c:LFL;

.field private static final synthetic d:[LFL;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 206
    new-instance v0, LFL;

    const-string v1, "UP"

    invoke-direct {v0, v1, v2}, LFL;-><init>(Ljava/lang/String;I)V

    sput-object v0, LFL;->a:LFL;

    .line 207
    new-instance v0, LFL;

    const-string v1, "DOWN"

    invoke-direct {v0, v1, v3}, LFL;-><init>(Ljava/lang/String;I)V

    sput-object v0, LFL;->b:LFL;

    .line 208
    new-instance v0, LFL;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4}, LFL;-><init>(Ljava/lang/String;I)V

    sput-object v0, LFL;->c:LFL;

    .line 205
    const/4 v0, 0x3

    new-array v0, v0, [LFL;

    sget-object v1, LFL;->a:LFL;

    aput-object v1, v0, v2

    sget-object v1, LFL;->b:LFL;

    aput-object v1, v0, v3

    sget-object v1, LFL;->c:LFL;

    aput-object v1, v0, v4

    sput-object v0, LFL;->d:[LFL;

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
    .line 205
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()[LFL;
    .locals 1

    .prologue
    .line 205
    sget-object v0, LFL;->d:[LFL;

    invoke-virtual {v0}, [LFL;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LFL;

    return-object v0
.end method
