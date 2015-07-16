.class public final enum Lrx;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lrx;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lrx;

.field public static final enum b:Lrx;

.field public static final enum c:Lrx;

.field private static final synthetic d:[Lrx;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-instance v0, Lrx;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lrx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrx;->a:Lrx;

    new-instance v0, Lrx;

    const-string v1, "ONEWAY"

    invoke-direct {v0, v1, v3}, Lrx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrx;->b:Lrx;

    new-instance v0, Lrx;

    const-string v1, "TWOWAY"

    invoke-direct {v0, v1, v4}, Lrx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrx;->c:Lrx;

    .line 40
    const/4 v0, 0x3

    new-array v0, v0, [Lrx;

    sget-object v1, Lrx;->a:Lrx;

    aput-object v1, v0, v2

    sget-object v1, Lrx;->b:Lrx;

    aput-object v1, v0, v3

    sget-object v1, Lrx;->c:Lrx;

    aput-object v1, v0, v4

    sput-object v0, Lrx;->d:[Lrx;

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
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
