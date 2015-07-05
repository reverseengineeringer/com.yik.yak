.class public final enum LDt;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LDt;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LDt;

.field public static final enum b:LDt;

.field private static final synthetic c:[LDt;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 556
    new-instance v0, LDt;

    const-string v1, "New"

    invoke-direct {v0, v1, v2}, LDt;-><init>(Ljava/lang/String;I)V

    sput-object v0, LDt;->a:LDt;

    new-instance v0, LDt;

    const-string v1, "Hot"

    invoke-direct {v0, v1, v3}, LDt;-><init>(Ljava/lang/String;I)V

    sput-object v0, LDt;->b:LDt;

    .line 555
    const/4 v0, 0x2

    new-array v0, v0, [LDt;

    sget-object v1, LDt;->a:LDt;

    aput-object v1, v0, v2

    sget-object v1, LDt;->b:LDt;

    aput-object v1, v0, v3

    sput-object v0, LDt;->c:[LDt;

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
    .line 555
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
