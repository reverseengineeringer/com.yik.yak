.class public final enum LFf;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LFf;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LFf;

.field public static final enum b:LFf;

.field public static final enum c:LFf;

.field private static final synthetic d:[LFf;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 206
    new-instance v0, LFf;

    const-string v1, "UP"

    invoke-direct {v0, v1, v2}, LFf;-><init>(Ljava/lang/String;I)V

    sput-object v0, LFf;->a:LFf;

    .line 207
    new-instance v0, LFf;

    const-string v1, "DOWN"

    invoke-direct {v0, v1, v3}, LFf;-><init>(Ljava/lang/String;I)V

    sput-object v0, LFf;->b:LFf;

    .line 208
    new-instance v0, LFf;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4}, LFf;-><init>(Ljava/lang/String;I)V

    sput-object v0, LFf;->c:LFf;

    .line 205
    const/4 v0, 0x3

    new-array v0, v0, [LFf;

    sget-object v1, LFf;->a:LFf;

    aput-object v1, v0, v2

    sget-object v1, LFf;->b:LFf;

    aput-object v1, v0, v3

    sget-object v1, LFf;->c:LFf;

    aput-object v1, v0, v4

    sput-object v0, LFf;->d:[LFf;

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

.method public static a()[LFf;
    .locals 1

    .prologue
    .line 205
    sget-object v0, LFf;->d:[LFf;

    invoke-virtual {v0}, [LFf;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LFf;

    return-object v0
.end method
