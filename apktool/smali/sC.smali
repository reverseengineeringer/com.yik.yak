.class public enum LsC;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LsC;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LsC;

.field public static final enum b:LsC;

.field public static final enum c:LsC;

.field private static final synthetic d:[LsC;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, LsD;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, LsD;-><init>(Ljava/lang/String;I)V

    sput-object v0, LsC;->a:LsC;

    .line 34
    new-instance v0, LsE;

    const-string v1, "MINI"

    invoke-direct {v0, v1, v3}, LsE;-><init>(Ljava/lang/String;I)V

    sput-object v0, LsC;->b:LsC;

    .line 40
    new-instance v0, LsF;

    const-string v1, "TAKEOVER"

    invoke-direct {v0, v1, v4}, LsF;-><init>(Ljava/lang/String;I)V

    sput-object v0, LsC;->c:LsC;

    .line 27
    const/4 v0, 0x3

    new-array v0, v0, [LsC;

    sget-object v1, LsC;->a:LsC;

    aput-object v1, v0, v2

    sget-object v1, LsC;->b:LsC;

    aput-object v1, v0, v3

    sget-object v1, LsC;->c:LsC;

    aput-object v1, v0, v4

    sput-object v0, LsC;->d:[LsC;

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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILsB;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, LsC;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()[LsC;
    .locals 1

    .prologue
    .line 27
    sget-object v0, LsC;->d:[LsC;

    invoke-virtual {v0}, [LsC;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LsC;

    return-object v0
.end method
