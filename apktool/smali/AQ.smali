.class public final enum LAQ;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LAQ;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LAQ;

.field public static final enum b:LAQ;

.field public static final enum c:LAQ;

.field public static final enum d:LAQ;

.field private static final synthetic e:[LAQ;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 407
    new-instance v0, LAQ;

    const-string v1, "Custom"

    invoke-direct {v0, v1, v2}, LAQ;-><init>(Ljava/lang/String;I)V

    sput-object v0, LAQ;->a:LAQ;

    .line 408
    new-instance v0, LAQ;

    const-string v1, "Featured"

    invoke-direct {v0, v1, v3}, LAQ;-><init>(Ljava/lang/String;I)V

    sput-object v0, LAQ;->b:LAQ;

    .line 409
    new-instance v0, LAQ;

    const-string v1, "Other"

    invoke-direct {v0, v1, v4}, LAQ;-><init>(Ljava/lang/String;I)V

    sput-object v0, LAQ;->c:LAQ;

    .line 410
    new-instance v0, LAQ;

    const-string v1, "Visited"

    invoke-direct {v0, v1, v5}, LAQ;-><init>(Ljava/lang/String;I)V

    sput-object v0, LAQ;->d:LAQ;

    .line 406
    const/4 v0, 0x4

    new-array v0, v0, [LAQ;

    sget-object v1, LAQ;->a:LAQ;

    aput-object v1, v0, v2

    sget-object v1, LAQ;->b:LAQ;

    aput-object v1, v0, v3

    sget-object v1, LAQ;->c:LAQ;

    aput-object v1, v0, v4

    sget-object v1, LAQ;->d:LAQ;

    aput-object v1, v0, v5

    sput-object v0, LAQ;->e:[LAQ;

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
    .line 406
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
