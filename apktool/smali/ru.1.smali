.class public final enum Lru;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lru;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lru;

.field public static final enum b:Lru;

.field private static final synthetic c:[Lru;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    new-instance v0, Lru;

    const-string v1, "MATCHED"

    invoke-direct {v0, v1, v2}, Lru;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lru;->a:Lru;

    .line 38
    new-instance v0, Lru;

    const-string v1, "NOT_MATCHED"

    invoke-direct {v0, v1, v3}, Lru;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lru;->b:Lru;

    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [Lru;

    sget-object v1, Lru;->a:Lru;

    aput-object v1, v0, v2

    sget-object v1, Lru;->b:Lru;

    aput-object v1, v0, v3

    sput-object v0, Lru;->c:[Lru;

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
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
