.class public final enum LwC;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LwC;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LwC;

.field public static final enum b:LwC;

.field public static final enum c:LwC;

.field private static final synthetic e:[LwC;


# instance fields
.field private d:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 46
    new-instance v0, LwC;

    const-string v1, "LENGTH_SHORT"

    const-wide/16 v2, 0x7d0

    invoke-direct {v0, v1, v4, v2, v3}, LwC;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, LwC;->a:LwC;

    new-instance v0, LwC;

    const-string v1, "LENGTH_LONG"

    const-wide/16 v2, 0xdac

    invoke-direct {v0, v1, v5, v2, v3}, LwC;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, LwC;->b:LwC;

    new-instance v0, LwC;

    const-string v1, "LENGTH_INDEFINITE"

    const-wide/16 v2, -0x1

    invoke-direct {v0, v1, v6, v2, v3}, LwC;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, LwC;->c:LwC;

    .line 45
    const/4 v0, 0x3

    new-array v0, v0, [LwC;

    sget-object v1, LwC;->a:LwC;

    aput-object v1, v0, v4

    sget-object v1, LwC;->b:LwC;

    aput-object v1, v0, v5

    sget-object v1, LwC;->c:LwC;

    aput-object v1, v0, v6

    sput-object v0, LwC;->e:[LwC;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput-wide p3, p0, LwC;->d:J

    .line 52
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, LwC;->d:J

    return-wide v0
.end method
