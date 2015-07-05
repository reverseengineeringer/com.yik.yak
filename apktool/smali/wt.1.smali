.class public final enum Lwt;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lwt;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lwt;

.field public static final enum b:Lwt;

.field public static final enum c:Lwt;

.field private static final synthetic e:[Lwt;


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
    new-instance v0, Lwt;

    const-string v1, "LENGTH_SHORT"

    const-wide/16 v2, 0x7d0

    invoke-direct {v0, v1, v4, v2, v3}, Lwt;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lwt;->a:Lwt;

    new-instance v0, Lwt;

    const-string v1, "LENGTH_LONG"

    const-wide/16 v2, 0xdac

    invoke-direct {v0, v1, v5, v2, v3}, Lwt;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lwt;->b:Lwt;

    new-instance v0, Lwt;

    const-string v1, "LENGTH_INDEFINITE"

    const-wide/16 v2, -0x1

    invoke-direct {v0, v1, v6, v2, v3}, Lwt;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lwt;->c:Lwt;

    .line 45
    const/4 v0, 0x3

    new-array v0, v0, [Lwt;

    sget-object v1, Lwt;->a:Lwt;

    aput-object v1, v0, v4

    sget-object v1, Lwt;->b:Lwt;

    aput-object v1, v0, v5

    sget-object v1, Lwt;->c:Lwt;

    aput-object v1, v0, v6

    sput-object v0, Lwt;->e:[Lwt;

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
    iput-wide p3, p0, Lwt;->d:J

    .line 52
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lwt;->d:J

    return-wide v0
.end method
