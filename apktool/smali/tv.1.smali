.class public final enum Ltv;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ltv;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ltv;

.field public static final enum b:Ltv;

.field private static final synthetic c:[Ltv;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    new-instance v0, Ltv;

    const-string v1, "FORWARD"

    invoke-direct {v0, v1, v2}, Ltv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv;->a:Ltv;

    new-instance v0, Ltv;

    const-string v1, "BACKWARD"

    invoke-direct {v0, v1, v3}, Ltv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv;->b:Ltv;

    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [Ltv;

    sget-object v1, Ltv;->a:Ltv;

    aput-object v1, v0, v2

    sget-object v1, Ltv;->b:Ltv;

    aput-object v1, v0, v3

    sput-object v0, Ltv;->c:[Ltv;

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
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()[Ltv;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Ltv;->c:[Ltv;

    invoke-virtual {v0}, [Ltv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltv;

    return-object v0
.end method
