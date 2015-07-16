.class public final enum Lrp;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lrp;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lrp;

.field public static final enum b:Lrp;

.field private static final synthetic c:[Lrp;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lrp;

    const-string v1, "CLIENT"

    invoke-direct {v0, v1, v2}, Lrp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrp;->a:Lrp;

    new-instance v0, Lrp;

    const-string v1, "SERVER"

    invoke-direct {v0, v1, v3}, Lrp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrp;->b:Lrp;

    .line 12
    const/4 v0, 0x2

    new-array v0, v0, [Lrp;

    sget-object v1, Lrp;->a:Lrp;

    aput-object v1, v0, v2

    sget-object v1, Lrp;->b:Lrp;

    aput-object v1, v0, v3

    sput-object v0, Lrp;->c:[Lrp;

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
