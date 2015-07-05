.class public final enum LAl;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LAl;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LAl;

.field public static final enum b:LAl;

.field public static final enum c:LAl;

.field private static final synthetic d:[LAl;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    new-instance v0, LAl;

    const-string v1, "Nearby"

    invoke-direct {v0, v1, v2}, LAl;-><init>(Ljava/lang/String;I)V

    sput-object v0, LAl;->a:LAl;

    new-instance v0, LAl;

    const-string v1, "Basecamp"

    invoke-direct {v0, v1, v3}, LAl;-><init>(Ljava/lang/String;I)V

    sput-object v0, LAl;->b:LAl;

    new-instance v0, LAl;

    const-string v1, "None"

    invoke-direct {v0, v1, v4}, LAl;-><init>(Ljava/lang/String;I)V

    sput-object v0, LAl;->c:LAl;

    .line 70
    const/4 v0, 0x3

    new-array v0, v0, [LAl;

    sget-object v1, LAl;->a:LAl;

    aput-object v1, v0, v2

    sget-object v1, LAl;->b:LAl;

    aput-object v1, v0, v3

    sget-object v1, LAl;->c:LAl;

    aput-object v1, v0, v4

    sput-object v0, LAl;->d:[LAl;

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
    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
