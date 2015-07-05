.class public enum Lsz;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lsz;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lsz;

.field public static final enum b:Lsz;

.field public static final enum c:Lsz;

.field private static final synthetic d:[Lsz;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, LsA;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, LsA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsz;->a:Lsz;

    .line 25
    new-instance v0, LsB;

    const-string v1, "MINI"

    invoke-direct {v0, v1, v3}, LsB;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsz;->b:Lsz;

    .line 31
    new-instance v0, LsC;

    const-string v1, "TAKEOVER"

    invoke-direct {v0, v1, v4}, LsC;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsz;->c:Lsz;

    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [Lsz;

    sget-object v1, Lsz;->a:Lsz;

    aput-object v1, v0, v2

    sget-object v1, Lsz;->b:Lsz;

    aput-object v1, v0, v3

    sget-object v1, Lsz;->c:Lsz;

    aput-object v1, v0, v4

    sput-object v0, Lsz;->d:[Lsz;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILsy;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lsz;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()[Lsz;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lsz;->d:[Lsz;

    invoke-virtual {v0}, [Lsz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsz;

    return-object v0
.end method
