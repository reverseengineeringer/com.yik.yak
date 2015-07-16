.class public final enum LDX;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LDX;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LDX;

.field public static final enum b:LDX;

.field private static final synthetic c:[LDX;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 578
    new-instance v0, LDX;

    const-string v1, "New"

    invoke-direct {v0, v1, v2}, LDX;-><init>(Ljava/lang/String;I)V

    sput-object v0, LDX;->a:LDX;

    new-instance v0, LDX;

    const-string v1, "Hot"

    invoke-direct {v0, v1, v3}, LDX;-><init>(Ljava/lang/String;I)V

    sput-object v0, LDX;->b:LDX;

    .line 577
    const/4 v0, 0x2

    new-array v0, v0, [LDX;

    sget-object v1, LDX;->a:LDX;

    aput-object v1, v0, v2

    sget-object v1, LDX;->b:LDX;

    aput-object v1, v0, v3

    sput-object v0, LDX;->c:[LDX;

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
    .line 577
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()[LDX;
    .locals 1

    .prologue
    .line 577
    sget-object v0, LDX;->c:[LDX;

    invoke-virtual {v0}, [LDX;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LDX;

    return-object v0
.end method
