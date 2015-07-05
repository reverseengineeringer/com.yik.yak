.class public final enum Lrl;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lrl;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lrl;

.field public static final enum b:Lrl;

.field private static final synthetic c:[Lrl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lrl;

    const-string v1, "CLIENT"

    invoke-direct {v0, v1, v2}, Lrl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrl;->a:Lrl;

    new-instance v0, Lrl;

    const-string v1, "SERVER"

    invoke-direct {v0, v1, v3}, Lrl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrl;->b:Lrl;

    .line 12
    const/4 v0, 0x2

    new-array v0, v0, [Lrl;

    sget-object v1, Lrl;->a:Lrl;

    aput-object v1, v0, v2

    sget-object v1, Lrl;->b:Lrl;

    aput-object v1, v0, v3

    sput-object v0, Lrl;->c:[Lrl;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
